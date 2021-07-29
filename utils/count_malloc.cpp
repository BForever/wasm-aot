#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include <regex>
using namespace std;

#define debug 0

int main(int argc, char *argv[])
{
    string filename = argv[1];

    ifstream file;

    file.open(filename);

    if (file.bad())
    {
        cout << "open failed" << endl;
    }
    string drop;
    char* ptr;
    int current=strtol(argv[2],&ptr,10);
    // int current=1064;
    bool inited = false;
    getline(file, drop);
    // cout<<drop<<endl;
    printf("cycles,usage\n");
    map<int,int> addr_size_map;
    while (!file.eof())
    {
        unsigned int ins;
        int cycles, size, addr_o,addr_n;
        string func;
        file >>dec>> cycles;
        file >> func;

        if (0 == func.compare("malloc"))
        {
            file >>dec>> size;
            file >>hex>> addr_n;
            #if debug
            cout<<cycles<<" malloc";
            cout<<" "<<size;
            cout<<" "<<addr_n<<endl;
            #endif
            // if (!inited)
            // {
            //     inited = true;
            //     current = addr;
            //     printf("0,%d\n",current);
            // }
            current+=size;
            addr_size_map.insert(make_pair(addr_n,size));
            
        }else if(0==func.compare("realloc")){
            file >>dec>> size;
            file >>hex>> addr_o;
            file>>hex>> addr_n;
            
            #if debug
            cout<<cycles<<" realloc";
            cout<<" "<<size;
            cout<<" "<<addr_o;
            cout<<" "<<addr_n<<endl;
            #endif

            if(addr_size_map.find(addr_o)!=addr_size_map.end()){
                current-=addr_size_map.at(addr_o);
            }
            addr_size_map[addr_n]=size;
            current+=size;
            
        }else if(0==func.compare("calloc")){
            file >>dec>> size;
            file>>hex >> addr_n;
            #if debug
            cout<<cycles<<" calloc";
            cout<<" "<<size;
            cout<<" "<<addr_n<<endl;
            #endif
            current+=size;
            addr_size_map.insert(make_pair(addr_n,size));
        }else if(0==func.compare("free")){
            file >>hex>> addr_o;
            #if debug
            cout<<cycles<<" free";
            cout<<" "<<addr_o<<endl;
            #endif
            if(addr_size_map.find(addr_o)!=addr_size_map.end()){
                current-=addr_size_map.at(addr_o);
                addr_size_map.erase(addr_o);
            }
        }else if(func.empty()){
            return 0;
        }else{
            printf("unknown func: %s !\n",func.c_str());
            return 0;
        }
        cout<<cycles<<","<<current<<endl;
        // printf("%d,%d\n",cycles,current);
    }
}