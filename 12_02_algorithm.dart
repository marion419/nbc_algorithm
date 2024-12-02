// #202
import 'dart:math';

class Solution {
  bool isHappy(int n) {
    // 제곱 결과로 나왔던 수 저장하는 리스트
    List<int> result=[];
    // 반복문 제어 변수
    bool isNotLoop=true;

    while(isNotLoop){
      // pow : 제곱한 수 저장
      int pow=0;
      List<String> num = n.toString().split('');

      for(String s in num){
        pow += int.parse(s)*int.parse(s);
      }

      if(pow==1){
        return true;
      }
      // pow 값이 이미 나왔던 적 있는 값이면 false
      else if(result.indexOf(pow)!=-1){
        return false;
      }
      else{
        result.add(pow);
        n=pow;
      }
    }
  }
}

// #219

class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {

    Map<int, int> indexMap={};

    for(int i=0; i<nums.length; i++){
      if(indexMap.containsKey(nums[i])&&i-indexMap[nums[i]]!<=k){
        return true;
      }
      indexMap[nums[i]]=i;
    }

    return false;
  }
}