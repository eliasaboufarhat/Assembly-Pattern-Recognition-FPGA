#include<stdio.h>
int example_fir_filter(int xn) {
static int h[12] = {4,3,2,5,1,-3};
static int hg = 7;
static int xv[11] = {0,0,0,0,0,0};
int yn = 0;
xv[1] = xn;
for(int i=0;i<12;i++) {
yn += h[i]*xv[i];}
yn = hg*yn;
return yn; }
void main() {
int y;
int imp[13] = {0,0,1,1,1,1,1};
for(int i=0;i<13;i++) {
y = example_fir_filter(imp[i]); } }
