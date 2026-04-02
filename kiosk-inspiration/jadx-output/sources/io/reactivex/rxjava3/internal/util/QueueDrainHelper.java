package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue;
import io.reactivex.rxjava3.internal.fuseable.SimpleQueue;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.queue.SpscLinkedArrayQueue;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class QueueDrainHelper {
    static final long COMPLETED_MASK = Long.MIN_VALUE;
    static final long REQUESTED_MASK = Long.MAX_VALUE;

    private QueueDrainHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> void drainMaxLoop(SimplePlainQueue<T> q, Subscriber<? super U> a, boolean delayError, Disposable dispose, QueueDrain<T, U> qd) {
        int iLeave = 1;
        while (true) {
            boolean zDone = qd.done();
            T tPoll = q.poll();
            boolean z = tPoll == null;
            SimplePlainQueue<T> simplePlainQueue = q;
            Subscriber<? super U> subscriber = a;
            boolean z2 = delayError;
            QueueDrain<T, U> queueDrain = qd;
            if (checkTerminated(zDone, z, subscriber, z2, simplePlainQueue, queueDrain)) {
                if (dispose != null) {
                    dispose.dispose();
                    return;
                }
                return;
            }
            if (!z) {
                long jRequested = queueDrain.requested();
                if (jRequested != 0) {
                    if (queueDrain.accept(subscriber, tPoll) && jRequested != Long.MAX_VALUE) {
                        queueDrain.produced(1L);
                    }
                } else {
                    simplePlainQueue.clear();
                    if (dispose != null) {
                        dispose.dispose();
                    }
                    subscriber.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
            } else {
                iLeave = queueDrain.leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            }
            a = subscriber;
            delayError = z2;
            q = simplePlainQueue;
            qd = queueDrain;
        }
    }

    public static <T, U> boolean checkTerminated(boolean d, boolean empty, Subscriber<?> s, boolean delayError, SimpleQueue<?> q, QueueDrain<T, U> qd) {
        if (qd.cancelled()) {
            q.clear();
            return true;
        }
        if (!d) {
            return false;
        }
        if (delayError) {
            if (!empty) {
                return false;
            }
            Throwable thError = qd.error();
            if (thError != null) {
                s.onError(thError);
            } else {
                s.onComplete();
            }
            return true;
        }
        Throwable thError2 = qd.error();
        if (thError2 != null) {
            q.clear();
            s.onError(thError2);
            return true;
        }
        if (!empty) {
            return false;
        }
        s.onComplete();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        r1 = r8.leave(-r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if (r1 != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T, U> void drainLoop(io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue<T> r9, io.reactivex.rxjava3.core.Observer<? super U> r10, boolean r11, io.reactivex.rxjava3.disposables.Disposable r12, io.reactivex.rxjava3.internal.util.ObservableQueueDrain<T, U> r13) {
        /*
            r0 = 1
            r1 = r0
        L2:
            boolean r2 = r13.done()
            boolean r3 = r9.isEmpty()
            r6 = r9
            r4 = r10
            r5 = r11
            r7 = r12
            r8 = r13
            boolean r9 = checkTerminated(r2, r3, r4, r5, r6, r7, r8)
            if (r9 == 0) goto L16
            goto L35
        L16:
            boolean r2 = r8.done()
            java.lang.Object r9 = r6.poll()
            if (r9 != 0) goto L22
            r3 = r0
            goto L24
        L22:
            r10 = 0
            r3 = r10
        L24:
            boolean r10 = checkTerminated(r2, r3, r4, r5, r6, r7, r8)
            r11 = r3
            if (r10 == 0) goto L2c
            goto L35
        L2c:
            if (r11 == 0) goto L3c
            int r9 = -r1
            int r1 = r8.leave(r9)
            if (r1 != 0) goto L36
        L35:
            return
        L36:
            r10 = r4
            r11 = r5
            r9 = r6
            r12 = r7
            r13 = r8
            goto L2
        L3c:
            r8.accept(r4, r9)
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.util.QueueDrainHelper.drainLoop(io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue, io.reactivex.rxjava3.core.Observer, boolean, io.reactivex.rxjava3.disposables.Disposable, io.reactivex.rxjava3.internal.util.ObservableQueueDrain):void");
    }

    public static <T, U> boolean checkTerminated(boolean d, boolean empty, Observer<?> observer, boolean delayError, SimpleQueue<?> q, Disposable disposable, ObservableQueueDrain<T, U> qd) {
        if (qd.cancelled()) {
            q.clear();
            disposable.dispose();
            return true;
        }
        if (!d) {
            return false;
        }
        if (delayError) {
            if (!empty) {
                return false;
            }
            if (disposable != null) {
                disposable.dispose();
            }
            Throwable thError = qd.error();
            if (thError != null) {
                observer.onError(thError);
            } else {
                observer.onComplete();
            }
            return true;
        }
        Throwable thError2 = qd.error();
        if (thError2 != null) {
            q.clear();
            if (disposable != null) {
                disposable.dispose();
            }
            observer.onError(thError2);
            return true;
        }
        if (!empty) {
            return false;
        }
        if (disposable != null) {
            disposable.dispose();
        }
        observer.onComplete();
        return true;
    }

    public static <T> SimpleQueue<T> createQueue(int capacityHint) {
        if (capacityHint < 0) {
            return new SpscLinkedArrayQueue(-capacityHint);
        }
        return new SpscArrayQueue(capacityHint);
    }

    public static void request(Subscription s, int prefetch) {
        s.request(prefetch < 0 ? Long.MAX_VALUE : prefetch);
    }

    public static <T> boolean postCompleteRequest(long n, Subscriber<? super T> actual, Queue<T> queue, AtomicLong state, BooleanSupplier isCancelled) {
        long j;
        do {
            j = state.get();
        } while (!state.compareAndSet(j, BackpressureHelper.addCap(Long.MAX_VALUE & j, n) | (j & Long.MIN_VALUE)));
        if (j != Long.MIN_VALUE) {
            return false;
        }
        postCompleteDrain(n | Long.MIN_VALUE, actual, queue, state, isCancelled);
        return true;
    }

    static boolean isCancelled(BooleanSupplier cancelled) {
        try {
            return cancelled.getAsBoolean();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            return true;
        }
    }

    static <T> boolean postCompleteDrain(long j, Subscriber<? super T> subscriber, Queue<T> queue, AtomicLong atomicLong, BooleanSupplier booleanSupplier) {
        long j2 = j & Long.MIN_VALUE;
        while (true) {
            if (j2 != j) {
                if (isCancelled(booleanSupplier)) {
                    return true;
                }
                T tPoll = queue.poll();
                if (tPoll == null) {
                    subscriber.onComplete();
                    return true;
                }
                subscriber.onNext(tPoll);
                j2++;
            } else {
                if (isCancelled(booleanSupplier)) {
                    return true;
                }
                if (queue.isEmpty()) {
                    subscriber.onComplete();
                    return true;
                }
                j = atomicLong.get();
                if (j == j2) {
                    long jAddAndGet = atomicLong.addAndGet(-(j2 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & jAddAndGet) == 0) {
                        return false;
                    }
                    j2 = jAddAndGet & Long.MIN_VALUE;
                    j = jAddAndGet;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> void postComplete(Subscriber<? super T> actual, Queue<T> queue, AtomicLong state, BooleanSupplier isCancelled) {
        long j;
        long j2;
        if (queue.isEmpty()) {
            actual.onComplete();
            return;
        }
        if (postCompleteDrain(state.get(), actual, queue, state, isCancelled)) {
            return;
        }
        do {
            j = state.get();
            if ((j & Long.MIN_VALUE) != 0) {
                return;
            } else {
                j2 = j | Long.MIN_VALUE;
            }
        } while (!state.compareAndSet(j, j2));
        if (j != 0) {
            postCompleteDrain(j2, actual, queue, state, isCancelled);
        }
    }
}
