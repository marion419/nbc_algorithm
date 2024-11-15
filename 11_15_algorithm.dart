// #872 리프가 동일한 트리

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
  List<int> findList(TreeNode? root){
    List<int> leaves=[];
      void findLeaf(TreeNode? root){
          if(root==null) return;
          if(root.left==null&&root.right==null){
              leaves.add(root.val);
          }
          findLeaf(root.left);
          findLeaf(root.right);
      }

    findLeaf(root);
    return leaves;
  }


  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> root1Output=findList(root1);
    List<int> root2Output=findList(root2);
    
    if(root1Output.length!=root2Output.length){return false;}
    for(int i=0;i<root1Output.length;i++){
        if(root1Output[i]!=root2Output[i]){return false;}
    }
    return true;
  }

}