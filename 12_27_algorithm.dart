// #15

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> result = [];
    nums.sort();
    // 3번째 숫자 = -(1번째 숫자 + 2번째 숫자)
    for(int i=0;i<nums.length-1;i++){
      if(i>0 && nums[i]==nums[i-1]){continue;}
      int left=i+1;
      int right=nums.length-1;

      while(left<right){
        int curSum = nums[i]+nums[left]+nums[right];
        if(curSum==0){
          result.add([nums[i], nums[left], nums[right]]);
          while(left<right && nums[left]==nums[left+1]){left++;}
          while(left<right && nums[right]==nums[right-1]){right--;}
          left++;
          right--;
        }
        else if(curSum>0){
          right--;
        }
        else if(curSum<0){
          left++;
        }
      }
    }
    return result;
  }
}