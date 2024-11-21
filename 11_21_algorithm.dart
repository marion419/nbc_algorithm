// #58 _ 마지막 단어의 길이

class Solution {
  int lengthOfLastWord(String s) {
    List<String> words=s.trim().split(' ');
    return words[words.length-1].length;
  }
}

// #28 _ 포함하는 단어의 첫 번째 인덱스

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}