package org.seamless.swing;

import javax.swing.event.TreeModelListener;
import javax.swing.tree.TreeModel;
import javax.swing.tree.TreePath;

/* JADX INFO: loaded from: classes2.dex */
public class NodeTreeModel implements TreeModel {
    private Node rootNode;
    private Node selectedNode;

    public NodeTreeModel(Node node) {
        this.rootNode = node;
    }

    public void addTreeModelListener(TreeModelListener treeModelListener) {
    }

    public Object getChild(Object obj, int i4) {
        return ((Node) obj).getChildren().get(i4);
    }

    public int getChildCount(Object obj) {
        return ((Node) obj).getChildren().size();
    }

    public int getIndexOfChild(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return -1;
        }
        return ((Node) obj).getChildren().indexOf(obj2);
    }

    public Object getRoot() {
        return this.rootNode;
    }

    public boolean isLeaf(Object obj) {
        return ((Node) obj).getChildren().size() == 0;
    }

    public void removeTreeModelListener(TreeModelListener treeModelListener) {
    }

    public void valueForPathChanged(TreePath treePath, Object obj) {
    }
}
