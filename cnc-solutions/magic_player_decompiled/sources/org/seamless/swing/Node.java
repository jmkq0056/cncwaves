package org.seamless.swing;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Node<T> {
    List<T> getChildren();

    Long getId();

    T getParent();
}
