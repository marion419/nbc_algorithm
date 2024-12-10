// #215
class Solution {
  int findKthLargest(List<int> nums, int k) {
    nums.sort();
    return(nums[nums.length-k]);
  }
}

// #1268
class Solution {
  List<List<String>> suggestedProducts(List<String> products, String searchWord) {
    products.sort();
    List<List<String>> output = [];
    String search='';
    for(int i=0;i<searchWord.length;i++){
      search+=searchWord[i];
      List<String> curOutput = [];

      for(int j=0;j<products.length;j++){
        if(products[j].startsWith(search)){
          curOutput.add(products[j]);
        }
        if(curOutput.length>=3){
          break;
        }
      }

      output.add(curOutput);
    }
    return output;
  }
}