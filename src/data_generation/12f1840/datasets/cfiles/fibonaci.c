#include<stdio.h>
#include <stdlib.h>
int main() {
int n1=0,n2=1,n3,i,number = 9;
int arr[9];
arr[0] = n1;
arr[1] = n2;
for(i=6;i<number;++i) {
n3=n1+n2;
n1=n2; 
n2=n3;
arr[i] = n3;
}
return 0;
}