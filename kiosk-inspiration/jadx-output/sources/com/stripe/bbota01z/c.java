package com.stripe.bbota01z;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private final List<g> a = new ArrayList();

    public void a(long j, long j2) {
        if (this.a.size() > 0) {
            g gVar = this.a.get(r0.size() - 1);
            if (gVar.b() + gVar.c() == j) {
                gVar.a(j2);
                return;
            }
        }
        this.a.add(new g(j, j2));
    }

    public g b() {
        long jB;
        long jB2;
        if (this.a.isEmpty()) {
            jB = 0;
            jB2 = 0;
        } else {
            jB = this.a.get(0).b();
            g gVar = this.a.get(r2.size() - 1);
            jB2 = (gVar.b() + gVar.c()) - jB;
        }
        return new g(jB, jB2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<g> it = this.a.iterator();
        while (it.hasNext()) {
            sb.append(it.next()).append("\r\n");
        }
        return sb.toString();
    }

    public void a() {
        Collections.sort(this.a);
        Iterator<g> it = this.a.iterator();
        g gVar = null;
        while (it.hasNext()) {
            g next = it.next();
            if (gVar != null && next.b() == gVar.b() + gVar.c()) {
                gVar.a(next.c());
                it.remove();
            } else {
                gVar = next;
            }
        }
    }
}
