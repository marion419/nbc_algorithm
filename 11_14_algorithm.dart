// #2390 문자열에서 별 지우기

class Solution {
  String removeStars(String s) {
  List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
        if (s[i] == '*') {
        if (stack.isNotEmpty) {
            stack.removeLast();
        }
        } else {
        stack.add(s[i]);
        }
    }

  return stack.join();
  }
}