#include<iostream>
#include<fstream>
#include<vector>
#include<map>
#include <regex>
using namespace std;
int main(int argc,char* argv[]){
    string filename=argv[1];
    
    ifstream file;

    file.open(filename);

    if(file.bad()){
        cout<<"open failed"<<endl;
    }
    
    vector<pair<string,unsigned int>> pattern;
    pattern.emplace_back("ld",0xFFFC);
    pattern.emplace_back("call",0x940E);
    pattern.emplace_back("jmp",0x940C);
    pattern.emplace_back("shift",0x9407);
    pattern.emplace_back("push",0x920F);
    pattern.emplace_back("st",0x920C);
    pattern.emplace_back("st",0x920D);
    pattern.emplace_back("st",0x920E);
    pattern.emplace_back("pop",0x900F);
    pattern.emplace_back("ld",0x900C);
    pattern.emplace_back("ld",0x900D);
    pattern.emplace_back("ld",0x900E);
    pattern.emplace_back("branch",0xF000);
    pattern.emplace_back("ldi",0xE000);
    pattern.emplace_back("shift",0x1C00);
    pattern.emplace_back("add",0x0C00);
    pattern.emplace_back("eor",0x2400);
    pattern.emplace_back("branch",0xC000);
    pattern.emplace_back("subi",0x5000);
    pattern.emplace_back("sub",0x1800);
    pattern.emplace_back("sub",0x0800);
    pattern.emplace_back("cp",0x0400);
    
    
    map<string,int> res;
    while(!file.eof()){
        unsigned int ins;
        string line;
        file>>line;

        getline(file,line);

        // cout<<"line: "<<line<<endl;

        regex e("\\[instruction\\]\\s([0-9A-Z]+)");
        smatch m;

        regex_search(line,m,e);

        // cout<<"res"<<endl;
        // for(int i=0;i<m.size();i++){
        //     cout<<i<<" "<<m[i]<<endl;
        // }

        if(!m.size()){
            continue;
        }
        sscanf(m[1].str().c_str(),"%4X",&ins);
        // cout<<ins<<endl;

        bool found = false;

        for(auto p :pattern){
            if((ins&p.second)==p.second){
                res[p.first]++;
                found=true;
                break;
            }
        }
        if(!found){
            res["other"]++;
        }
        
    }
    for(auto item : res){
        cout<<filename<<","<<item.first<<","<<item.second<<endl;
    }
}