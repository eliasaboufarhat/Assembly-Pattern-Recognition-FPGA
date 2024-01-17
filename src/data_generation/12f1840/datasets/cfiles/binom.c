#include<stdio.h>
void main() {
int i, j, n, k,result, min, c[6][6]={0};
n = 5 ;
k = 5 ;
if(n >= k) {
for(i=0; i<=n; i++) {
min = i<k? i:k;
for(j = 0; j <= min; j++) {
if(j==0 || j == i) {
c[i][j] = 1;
} else {
c[i][j] = c[i-1][j-1] + c[i-1][j];
} } }
result = c[n][k];
} } 
