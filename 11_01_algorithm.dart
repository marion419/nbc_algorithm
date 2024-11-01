// #238 product of array except self

class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int left=1;
    int right=1;
    List<int> result=[];

    for(int i=0;i<nums.length;i++){
        if(i==0) {result.add(1); continue;}
        left*=nums[i-1];
        result.add(left);
    }

    for(int i=nums.length-2;i>=0;i--){
        right*=nums[i+1];
        result[i]*=right;
    }

    return result;
  }
}