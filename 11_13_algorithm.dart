// #1137 _ 3중 피보나치

class Solution {
  int tribonacci(int n) {
    if(n==0){return 0;}
    if(n==1||n==2){return 1;}
    List<int> num=[0, 1, 1];
    int sum=2;
    for(int i=0;i<=n-3;i++){
      num.add(sum);
      sum-=num[i];
      sum+=num[i+3];
    }
    return num.last;
  }
}