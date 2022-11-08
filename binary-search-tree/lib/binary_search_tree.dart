class BinarySearchTree {
  final Node root;
  
  List<String> get sortedData => _sortData(root);

  BinarySearchTree(String data) : this.root = Node(data);

  void insert(String data, [Node? node]) {
    node ??= root;
  
    if (data.compareTo(node.data) <= 0) {
      if (node.left == null) {
        node.left = Node(data);
      } else {
        insert(data, node.left);
      }
    } else {
      if (node.right == null) {
        node.right = Node(data);
      } else {
        insert(data, node.right);
      }
    }
  }

  List<String> _sortData(Node node) {
    final sortedData = <String>[];

    if (node.left != null) {
      sortedData.addAll(_sortData(node.left!));
    }

    sortedData.add(node.data);

    if (node.right != null) {
      sortedData.addAll(_sortData(node.right!));
    }

    return sortedData;
  }
}

class Node {
  final String data;
  Node? left;
  Node? right;

  Node(this.data);
}
