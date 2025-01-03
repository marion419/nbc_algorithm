class Solution {
  int maxProfit(List<int> prices) {
    // prices.length > 1
    // 뒤 날짜에 나오는 가격이 더 커야 함
    int result = 0;

    for(int i=1;i<prices.length;i++){
      if(prices[i]>prices[i-1]){
        result += prices[i]-prices[i-1];
      }
    }
    // .?...
    // 1 2 3 4 5
    // 2-1 / 3-2 / 4-3 / 5-4 -> 4
    // 7 5 1 3 6 4
    // 5-1 6-3
    // 7 6 4 3 1
    // 주식이 더 오르는 경우에도 오르는 만큼 차이를 더해주니까 기다렸다가 파는 거랑 같은 결과가 나온다...
    return result;
  }
}
