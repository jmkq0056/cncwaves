package com.stripe.bbpos.bbdevice.ota;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class b0 implements Comparable<b0> {
    String a;
    String b;
    String c;
    boolean d;
    List<b0> e;

    b0() {
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b0 b0Var) {
        return this.a.compareToIgnoreCase(b0Var.a);
    }
}
