// #739

import 'dart:collection';

class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> toWarmDay=List.filled(temperatures.length, 0);
    final search = ListQueue<int>(); // key : index, value : temperature

    for(int i=0;i<temperatures.length;i++){
      // 앞에서부터 검색 -> 앞 인덱스가 엄청 큰 경우 뒤 인덱스도 같이 막힘
      // -> 뒤에서부터 검색해야 함
      while(search.isNotEmpty&&temperatures[search.last]<temperatures[i]){
        int temp = search.removeLast();
        toWarmDay[temp]=i-temp;
      }
      search.add(i);
    }

    return toWarmDay;
  }
}