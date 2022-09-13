#include <stdio.h>

int start, end;

int dontgivemefive(int start, int end)
    {
        int s = 0;
        int step;
        while (start <= end) {
            if (start >= 0) {
                step = start;
            }
            else {
                step = -start;
            }
            int check = 0;
            while (step > 0) {
                if (step % 5 == 0 && step % 10 != 0) {
                    check = 1;
                    break;
                }//check last digit is 5
                step = (step - step % 10)/10;
            }
            if (check == 0) {
                s += start;
            }
            start += 1;
        }
        return s;
    }

int main(){
  scanf("%d", &start);
  scanf("%d", &end);
  printf("%d", dontgivemefive(start, end));
  return 0;
}
