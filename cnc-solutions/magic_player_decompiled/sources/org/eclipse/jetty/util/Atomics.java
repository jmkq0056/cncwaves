package org.eclipse.jetty.util;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class Atomics {
    private Atomics() {
    }

    public static void updateMax(AtomicLong atomicLong, long j4) {
        long j5 = atomicLong.get();
        while (j4 > j5 && !atomicLong.compareAndSet(j5, j4)) {
            j5 = atomicLong.get();
        }
    }

    public static void updateMin(AtomicLong atomicLong, long j4) {
        long j5 = atomicLong.get();
        while (j4 < j5 && !atomicLong.compareAndSet(j5, j4)) {
            j5 = atomicLong.get();
        }
    }

    public static void updateMax(AtomicInteger atomicInteger, int i4) {
        int i5 = atomicInteger.get();
        while (i4 > i5 && !atomicInteger.compareAndSet(i5, i4)) {
            i5 = atomicInteger.get();
        }
    }

    public static void updateMin(AtomicInteger atomicInteger, int i4) {
        int i5 = atomicInteger.get();
        while (i4 < i5 && !atomicInteger.compareAndSet(i5, i4)) {
            i5 = atomicInteger.get();
        }
    }
}
