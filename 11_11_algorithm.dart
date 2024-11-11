// 104 _ 이진트리의 최대 깊이

import 'dart:math';
/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  int maxDepth(TreeNode? root) {
    if(root==null){return 0;}
    int leftMax=maxDepth(root.left);
    int rightMax=maxDepth(root.right);
    return max(leftMax, rightMax)+1;
  }
}