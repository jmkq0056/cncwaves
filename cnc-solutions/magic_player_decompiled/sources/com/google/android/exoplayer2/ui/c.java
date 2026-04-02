package com.google.android.exoplayer2.ui;

/* JADX INFO: loaded from: classes.dex */
public interface c {

    public interface a {
        void a(c cVar, long j4);

        void b(c cVar, long j4);

        void c(c cVar, long j4, boolean z3);
    }

    void a(a aVar);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j4);

    void setEnabled(boolean z3);

    void setPosition(long j4);
}
