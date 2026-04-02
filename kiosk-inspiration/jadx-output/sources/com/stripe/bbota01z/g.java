package com.stripe.bbota01z;

import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class g implements Comparable<g> {
    private long a;
    private long b;

    public g(long j, long j2) {
        this.a = j;
        this.b = (j + j2) - 1;
    }

    public long a() {
        return this.b;
    }

    public long b() {
        return this.a;
    }

    public long c() {
        return (this.b - this.a) + 1;
    }

    public String toString() {
        return String.format(Locale.ROOT, "0x%08x:0x%08x (%dB 0x%08X)", Long.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(c()), Long.valueOf(c()));
    }

    void a(long j) {
        this.b += j;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(g gVar) {
        long j = this.a;
        long j2 = gVar.a;
        if (j == j2) {
            return Long.compare(this.b, gVar.b);
        }
        return Long.compare(j, j2);
    }
}
