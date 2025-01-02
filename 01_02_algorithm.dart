import 'dart:math';

class RandomizedSet {
  Map<int, int> set = {};
  int count = 0;
  RandomizedSet() {
    set = {};
    count = 0;
  }
  bool insert(int val) {
    if(set.containsKey(val)) return false;
    else{
      count++;
      set[val]=count;
      return true;
    }
  }
  bool remove(int val) {
    if(!set.containsKey(val)) return false;
    else{
      count--;
      set.remove(val);
      return true;
    }
  }
  int getRandom() {
    return set.keys.elementAt(new Random().nextInt(count));
  }
}