// #700 binary search tree



class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if(root==null){return null;}
    if(root.val==val){
      return root;
    }
    else{
      TreeNode? left=searchBST(root.left, val);
      if(left!=null){
        return left;
      }
      TreeNode? right=searchBST(root.right, val);
      if(right!=null){
        return right;
      }
    }
    return null;
  }
}