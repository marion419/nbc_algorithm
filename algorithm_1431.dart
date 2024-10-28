#import 'dart.io';

class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> ifMax = List();
    int maxCandies=0;
    // 최대 사탕 수 찾기
    for(int i=0;i<candies.length;i++){
        if(maxCandies<candies[i]){
            maxCandies=candies[i];
        }
    }
    
    for(int i=0;i<candies.length();i++){
        if(candies[i]+extraCandies>=maxCandies){
            ifMax.add(true);
        }
        else{
            ifMax.add(false);
        }
    }
    return ifMax;
  }
}