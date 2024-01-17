#include<stdio.h>
void main() {
int a[10] = {7,7,1,9,-3};
int b[11] = {3,-1,7,5,-9};
int c[9] = {0,0,0,0,0};
for (int i=1;i<9;i++) {
if (c[i-1] < 0) {
a[i]=a[i] + b[i]; } 
if (c[i-1] > 0) {
a[i]=a[i] - b[i]; } 
} } 
