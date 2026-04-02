package org.eclipse.jetty.util.statistic;

import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.Atomics;

/* JADX INFO: loaded from: classes2.dex */
public class SampleStatistic {
    public final AtomicLong _max = new AtomicLong();
    public final AtomicLong _total = new AtomicLong();
    public final AtomicLong _count = new AtomicLong();
    public final AtomicLong _totalVariance100 = new AtomicLong();

    public long getCount() {
        return this._count.get();
    }

    public long getMax() {
        return this._max.get();
    }

    public double getMean() {
        double d4 = this._total.get();
        double d5 = this._count.get();
        Double.isNaN(d4);
        Double.isNaN(d5);
        return d4 / d5;
    }

    public double getStdDev() {
        return Math.sqrt(getVariance());
    }

    public long getTotal() {
        return this._total.get();
    }

    public double getVariance() {
        long j4 = this._totalVariance100.get();
        long j5 = this._count.get();
        if (j5 <= 1) {
            return 0.0d;
        }
        double d4 = j4;
        Double.isNaN(d4);
        double d5 = j5 - 1;
        Double.isNaN(d5);
        return (d4 / 100.0d) / d5;
    }

    public void reset() {
        this._max.set(0L);
        this._total.set(0L);
        this._count.set(0L);
        this._totalVariance100.set(0L);
    }

    public void set(long j4) {
        long jAddAndGet = this._total.addAndGet(j4);
        long jIncrementAndGet = this._count.incrementAndGet();
        if (jIncrementAndGet > 1) {
            long j5 = (10 * j4) - ((jAddAndGet * 10) / jIncrementAndGet);
            this._totalVariance100.addAndGet(j5 * j5);
        }
        Atomics.updateMax(this._max, j4);
    }
}
