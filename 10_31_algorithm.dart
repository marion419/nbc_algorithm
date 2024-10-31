// #643 _ 최대 평균 하위 배열

class Solution {
  double findMaxAverage(List<int> nums, int k) {

    //if(nums.length>k.length) return -1;
    double? maximumAverage;
    int initialSum=0;
    for(int i=0;i<k;i++){
        initialSum+=nums[i];
    }
    maximumAverage=initialSum/k;

    if(nums.length==1){return maximumAverage;
    }

    double tempSum=maximumAverage*k;

    for(int i=0;i<nums.length-k;i++){
      tempSum-=nums[i];
      tempSum+=nums[i+k];

      double tempAverage=tempSum/k;
      if(maximumAverage==null){maximumAverage=tempAverage;}
      else if(tempAverage>maximumAverage){
        maximumAverage=tempAverage;
      }
    }
    return maximumAverage!;
  }
}

// #151 _ 문자열의 단어 반전

class Solution {
  String reverseWords(String s) {

    List<String> word=s.split(RegExp('\\s+'));

    String result='';
    for(int i=word.length-1;i>=0;i--){
      result+=word[i]+' ';
    }
    return result.trim();
  }
}