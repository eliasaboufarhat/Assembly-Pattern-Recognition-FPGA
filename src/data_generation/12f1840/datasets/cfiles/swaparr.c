#include<stdio.h>
void main() {
int a[11] = {31,46,11,36};
int b[11] = {47,24,40,26};
int c[7] = {0,0,0,0};
for (int i=0;i<11;i++) {
c[i]=a[i];
a[i]=b[i];
b[i]=c[i]; } }
