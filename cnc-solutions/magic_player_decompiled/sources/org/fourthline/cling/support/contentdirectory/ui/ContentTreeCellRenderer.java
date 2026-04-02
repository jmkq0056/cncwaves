package org.fourthline.cling.support.contentdirectory.ui;

import java.awt.Component;
import javax.swing.Icon;
import javax.swing.JTree;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import org.fourthline.cling.support.model.DIDLObject;
import org.fourthline.cling.support.model.container.Container;
import org.fourthline.cling.support.model.item.Item;

/* JADX INFO: loaded from: classes2.dex */
public class ContentTreeCellRenderer extends DefaultTreeCellRenderer {
    public Icon getContainerClosedIcon() {
        return null;
    }

    public Icon getContainerOpenIcon() {
        return null;
    }

    public Icon getInfoIcon() {
        return null;
    }

    public Icon getItemIcon(Item item, String str) {
        return null;
    }

    public Component getTreeCellRendererComponent(JTree jTree, Object obj, boolean z3, boolean z4, boolean z5, int i4, boolean z6) {
        super.getTreeCellRendererComponent(jTree, obj, z3, z4, z5, i4, z6);
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) obj;
        if (defaultMutableTreeNode.getUserObject() instanceof Container) {
            setText(((Container) defaultMutableTreeNode.getUserObject()).getTitle());
            setIcon(z4 ? getContainerOpenIcon() : getContainerClosedIcon());
        } else if (defaultMutableTreeNode.getUserObject() instanceof Item) {
            Item item = (Item) defaultMutableTreeNode.getUserObject();
            setText(item.getTitle());
            DIDLObject.Class clazz = item.getClazz();
            setIcon(getItemIcon(item, clazz != null ? clazz.getValue() : null));
        } else if (defaultMutableTreeNode.getUserObject() instanceof String) {
            setIcon(getInfoIcon());
        }
        onCreate();
        return this;
    }

    public void onCreate() {
    }
}
