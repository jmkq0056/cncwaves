package cn.huidu.lcd.render.model;

import cn.huidu.lcd.render.model.Node;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import z0.a;

/* JADX INFO: loaded from: classes.dex */
public class Node<Child extends Node> {

    @a(name = "children")
    public List<Child> mChildren = new ArrayList();

    public void addChild(Child child) {
        this.mChildren.add(child);
    }

    public int childCount() {
        return this.mChildren.size();
    }

    public Child getChild(int i4) {
        if (i4 < 0 || i4 >= this.mChildren.size()) {
            return null;
        }
        return this.mChildren.get(i4);
    }

    public int indexOf(Child child) {
        return this.mChildren.indexOf(child);
    }

    public void insertChild(int i4, Child child) {
        this.mChildren.add(i4, child);
    }

    public void removeAllChild() {
        this.mChildren.clear();
    }

    public void removeChild(Child child) {
        this.mChildren.remove(child);
    }

    public void swapChild(int i4, int i5) {
        Collections.swap(this.mChildren, i4, i5);
    }
}
