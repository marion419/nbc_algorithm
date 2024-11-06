// #206 _ reversed linked list

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? current=head;
    ListNode? prev=null;
    while(current!=null){
      ListNode? temp=current.next;
      current.next=prev;
      prev=current;
      current=temp;
    }
    return prev;
  }
}

// #933 _ ping

import 'dart:collection';

class RecentCounter {
  Queue<int> calls=Queue<int>();
  RecentCounter() {
  }
  
  int ping(int t) {
    calls.add(t);
    while(calls.first < t-3000 && calls.isNotEmpty){
        calls.removeFirst();
    }
    return calls.length;
  }
}