import 'dart:math';

// #334 _ 증가하는 요소가 3개 있는 수열

// 1. 시도해봤는데 Time Limit 으로 실패한 코드이다.

class Solution {
  bool increasingTriplet(List<int> nums) {
    // [0~4]에서 [0]이 최대 -> [1~4]에서 [1]이 최대 -> [2~4]에서 [2]가 최대
    // 예를 들어 [53421] 일때 위 조건 계속 만족함 -> 이런 경우 false
    // [0~k]에서 [k]가 최소가 아님 && [k~n]에서 [k]가 최대가 아님 -> true
    // -> [42163] : x
    // [100 101 3 2 1] : x
    // [0]:최대 조건만 / [마지막]:최소 조건만 만족하면 된다
    int validCount=0;
    for(int i=0;i<nums.length;i++){
      if(i==0){
        if(nums[i]<=nums.reduce(max)){
            validCount++;
        }
        continue;
      }
      else if(i==nums.length-1){
        if(nums[i]>=nums.reduce(min)){
            validCount++;
        }
      }
      else{
        List<int> left=nums.sublist(0, i+1);
        List<int> right=nums.sublist(i, nums.length);
        if(nums[i]!=left.reduce(min)&&nums[i]!=right.reduce(max)){
            validCount++;
        }
        else if(validCount==2&&nums[i]!=left.reduce(min)){validCount++;}
      }
      if(validCount>=3){
        break;
      }
    }
    return validCount>=3 ? true : false;
  }
}

// 2. 노션을 참고하여 다시 쓴 코드이다.

class Solution {
  bool increasingTriplet(List<int> nums) {
    int first=nums[0];
    int second = double.maxFinite.toInt();

    for(int i in nums){
        if(i<=first){first=i;}
        else if(i<=second){second=i;}

        if(i>first&&i>second){return true;}
    }
    return false;
  }
}