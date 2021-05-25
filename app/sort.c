int numbers[256];
int main()
{
    int NUMNUMBERS = 256;
    // int *numbers = malloc(NUMNUMBERS * sizeof(int));

    // Fill the array
    for (int i = 0; i < NUMNUMBERS; i++)
        numbers[i] = (NUMNUMBERS - 1 - i);
    // Then sort it
    for (int i = 0; i < NUMNUMBERS; i++)
    {
        int x = (NUMNUMBERS - i - 1); // This doesn't get optimised the way I expected it would. Without this extra variable, it will calculate NUMNUMBERS-i-1 on each interation of the inner loop! (speedup 14.7M -> 14.2M cycles)
        int j_plus_one = 1;           // Same goes for "j+1"
        int val_at_j_plus_one = numbers[0];
        // int x=NUMNUMBERS-i-1; // Somehow this makes it a little slower at -Os. I expected no difference.
        for (int j = 0; j < x; j++)
        {
            int val_at_j = numbers[j];
            val_at_j_plus_one = numbers[j_plus_one];
            if (val_at_j > val_at_j_plus_one)
            {
                numbers[j] = val_at_j_plus_one;
                numbers[j + 1] = val_at_j;
                val_at_j_plus_one = val_at_j;
            }
            j_plus_one++;
        }
    }
}