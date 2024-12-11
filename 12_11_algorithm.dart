// #198
import 'dart:math';

class Solution {
  int rob(List<int> nums) {
    if(nums.length==1){
      return nums[0];
    }
    if(nums.length==2){
      return max(nums[0], nums[1]);
    }

    List<int> quantity = [nums[0], max(nums[0], nums[1])];
    for(int i=2;i<nums.length;i++){
      quantity.add(max(quantity[i-1], quantity[i-2]+nums[i]));
    }
    return quantity[quantity.length-1];
  }
}