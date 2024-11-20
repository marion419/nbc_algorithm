// #746 _ 계단을 오르는 최소 비용

import 'dart:math';

class Solution {
  int minCostClimbingStairs(List<int> cost) {
    if(cost.length==2){return min(cost[0], cost[1]);}

    // 0번, 1번 계단은 한 번에 올라가는 비용 = 최소비용
    List<int> pivo=[cost[0], cost[1]];
    // i번째 계단에 올라가는 최소 비용 = i번째 비용 + (i-1 또는 i-2 까지) 중에서 최소비용
    for(int i=2;i<cost.length;i++){
      pivo.add(cost[i]+min(pivo[i-1], pivo[i-2]));
    }
    // 마지막 계단에 올라가는 최소 비용 = (마지막에서 1개 or 2개 전) 중에서 최소비용
    return min(pivo[cost.length-1], pivo[cost.length-2]);
  }
}