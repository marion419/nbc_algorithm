// #12

class Solution {
  void change(int checkNum, Map<String, int> roman){

  }

  String intToRoman(int num) {
    Map<int, String> roman = {1:'I', 5:'V', 10:'X', 50:'L', 100:'C', 500:'D', 1000:'M'};
    String result='';

    // 1<=num<=3999
    if(num/1000!=0){
      int curNum = num~/1000;
      result = result + roman[1000]!*(curNum);
      num%=1000;
    }

    if(num/100!=0){
      int curNum = num~/100;
      if(curNum==4){
        result = result + 'CD';
      }
      else if(curNum==9){
        result = result + 'CM';
      }
      else{
        result = result + roman[500]!*(curNum~/5) + roman[100]!*(curNum%5);
      }
      num%=100;
    }

    if(num/10!=0){
      int curNum = num~/10;
      if(curNum==4){
        result = result + 'XL';
      }
      else if(curNum==9){
        result = result + 'XC';
      }
      else{
        result = result + roman[50]!*(curNum~/5) + roman[10]!*(curNum%5);
      }
      num%=10;
    }

    if(num!=0){
      int curNum = num;
      if(curNum==4){
        result = result + 'IV';
      }
      else if(curNum==9){
        result = result + 'IX';
      }
      else{
        result = result + roman[5]!*(curNum~/5) + roman[1]!*(curNum%5);
      }
    }
    
    return result;

  }
}