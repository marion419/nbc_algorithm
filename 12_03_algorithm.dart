// #121

class Solution {
  int maxProfit(List<int> prices) {
    int minCost=prices[0];
    int maxProfit=0;

    for(int i=0;i<prices.length;i++){
      if(prices[i]<minCost){
        minCost=prices[i];
      }
      if(prices[i]-minCost>maxProfit){
        maxProfit=prices[i]-minCost;
      }

    }

    return maxProfit;
  }
}

// #125

class Solution {
  bool isPalindrome(String s) {
    String trimed=s.trim();
    if(trimed.length==0){return true;}

    List<String> cleanList=trimed.replaceAll(RegExp('[^a-zA-Z0-9]'), "").toLowerCase().split("");
    List<String> reversedList=cleanList.reversed.toList();

    for(int i=0;i<cleanList.length;i++){
      if(cleanList[i]!=reversedList[i]){
        return false;
      }
    }
    return true;
  }
}