// #11 _ Container with most water

import'dart:math';

class Solution {
  int maxArea(List<int> height) {
    // 최대값 2개
    int left=0;
    int right=height.length-1;
    int maxWater=0;
    while(left!=right){
      int temp = min(height[left], height[right])*(left-right).abs();
      if(temp>maxWater){maxWater=temp;}
      if(height[left]<=height[right]){left++;}
      else if(height[left]>height[right]){right--;}
    }

    return maxWater;
  }
}