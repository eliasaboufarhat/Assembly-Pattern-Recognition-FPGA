#include <stddef.h>
#include <stdio.h>
#include <math.h>

double sigmoid(double x) {
     double result;
     result = 1 / (1 + exp(-x));
     return result;
}

int main(void)
{
  double signal[] = {2,34.5,13.3,12,79.9,45.3,7.43,1.1,92,33};
  double output[10]; 

  for(int i = 0;i < 10;i++){
      output[i] = sigmoid(signal[i]);
  }

  return 0;
}