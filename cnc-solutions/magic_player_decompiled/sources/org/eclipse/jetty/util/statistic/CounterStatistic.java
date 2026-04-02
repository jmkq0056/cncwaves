package org.eclipse.jetty.util.statistic;

import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.Atomics;

/* JADX INFO: loaded from: classes2.dex */
public class CounterStatistic {
    public final AtomicLong _max = new AtomicLong();
    public final AtomicLong _curr = new AtomicLong();
    public final AtomicLong _total = new AtomicLong();

    public void add(long j4) {
        long jAddAndGet = this._curr.addAndGet(j4);
        if (j4 > 0) {
            this._total.addAndGet(j4);
        }
        Atomics.updateMax(this._max, jAddAndGet);
    }

    public void decrement() {
        add(-1L);
    }

    public long getCurrent() {
        return this._curr.get();
    }

    public long getMax() {
        return this._max.get();
    }

    public long getTotal() {
        return this._total.get();
    }

    public void increment() {
        add(1L);
    }

    public void reset() {
        reset(0L);
    }

    public void subtract(long j4) {
        add(-j4);
    }

    public void reset(long j4) {
        this._max.set(j4);
        this._curr.set(j4);
        this._total.set(0L);
    }
}
