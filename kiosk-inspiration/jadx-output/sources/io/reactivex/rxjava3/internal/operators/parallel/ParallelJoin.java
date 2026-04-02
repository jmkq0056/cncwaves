package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class ParallelJoin<T> extends Flowable<T> {
    final boolean delayErrors;
    final int prefetch;
    final ParallelFlowable<? extends T> source;

    public ParallelJoin(ParallelFlowable<? extends T> source, int prefetch, boolean delayErrors) {
        this.source = source;
        this.prefetch = prefetch;
        this.delayErrors = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    protected void subscribeActual(Subscriber<? super T> s) {
        JoinSubscriptionBase joinSubscription;
        if (this.delayErrors) {
            joinSubscription = new JoinSubscriptionDelayError(s, this.source.parallelism(), this.prefetch);
        } else {
            joinSubscription = new JoinSubscription(s, this.source.parallelism(), this.prefetch);
        }
        s.onSubscribe(joinSubscription);
        this.source.subscribe(joinSubscription.subscribers);
    }

    static abstract class JoinSubscriptionBase<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3100232009247827843L;
        volatile boolean cancelled;
        final Subscriber<? super T> downstream;
        final JoinInnerSubscriber<T>[] subscribers;
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicLong requested = new AtomicLong();
        final AtomicInteger done = new AtomicInteger();

        abstract void drain();

        abstract void onComplete();

        abstract void onError(Throwable e);

        abstract void onNext(JoinInnerSubscriber<T> inner, T value);

        JoinSubscriptionBase(Subscriber<? super T> actual, int n, int prefetch) {
            this.downstream = actual;
            JoinInnerSubscriber<T>[] joinInnerSubscriberArr = new JoinInnerSubscriber[n];
            for (int i = 0; i < n; i++) {
                joinInnerSubscriberArr[i] = new JoinInnerSubscriber<>(this, prefetch);
            }
            this.subscribers = joinInnerSubscriberArr;
            this.done.lazySet(n);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this.requested, n);
                drain();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                cleanup();
            }
        }

        void cancelAll() {
            for (JoinInnerSubscriber<T> joinInnerSubscriber : this.subscribers) {
                joinInnerSubscriber.cancel();
            }
        }

        void cleanup() {
            for (JoinInnerSubscriber<T> joinInnerSubscriber : this.subscribers) {
                joinInnerSubscriber.queue = null;
            }
        }
    }

    static final class JoinSubscription<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = 6312374661811000451L;

        JoinSubscription(Subscriber<? super T> actual, int n, int prefetch) {
            super(actual, n, prefetch);
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void onNext(JoinInnerSubscriber<T> inner, T value) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(value);
                    if (this.requested.get() != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    inner.request(1L);
                } else if (!inner.getQueue().offer(value)) {
                    cancelAll();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.errors.compareAndSet(null, missingBackpressureException)) {
                        this.downstream.onError(missingBackpressureException);
                        return;
                    } else {
                        RxJavaPlugins.onError(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!inner.getQueue().offer(value)) {
                cancelAll();
                onError(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void onError(Throwable e) {
            if (this.errors.compareAndSet(null, e)) {
                cancelAll();
                drain();
            } else if (e != this.errors.get()) {
                RxJavaPlugins.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        public void onComplete() {
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005e, code lost:
        
            r16 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
        
            if (r12 == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        
            if (r15 == false) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
        
            r3.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0068, code lost:
        
            if (r15 == false) goto L84;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainLoop() {
            /*
                r18 = this;
                r0 = r18
                io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin$JoinInnerSubscriber<T>[] r1 = r0.subscribers
                int r2 = r1.length
                org.reactivestreams.Subscriber<? super T> r3 = r0.downstream
                r5 = 1
            L8:
                java.util.concurrent.atomic.AtomicLong r6 = r0.requested
                long r6 = r6.get()
                r10 = 0
            L10:
                int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                r13 = 0
                if (r12 == 0) goto L6b
                boolean r12 = r0.cancelled
                if (r12 == 0) goto L1d
                r0.cleanup()
                return
            L1d:
                io.reactivex.rxjava3.internal.util.AtomicThrowable r12 = r0.errors
                java.lang.Object r12 = r12.get()
                java.lang.Throwable r12 = (java.lang.Throwable) r12
                if (r12 == 0) goto L2e
                r0.cleanup()
                r3.onError(r12)
                return
            L2e:
                java.util.concurrent.atomic.AtomicInteger r12 = r0.done
                int r12 = r12.get()
                if (r12 != 0) goto L38
                r12 = 1
                goto L39
            L38:
                r12 = r13
            L39:
                r14 = r13
                r15 = 1
            L3b:
                int r4 = r1.length
                if (r14 >= r4) goto L5e
                r4 = r1[r14]
                r16 = 0
                io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue<T> r8 = r4.queue
                if (r8 == 0) goto L5b
                java.lang.Object r8 = r8.poll()
                if (r8 == 0) goto L5b
                r3.onNext(r8)
                r4.requestOne()
                r8 = 1
                long r10 = r10 + r8
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L5a
                goto L6d
            L5a:
                r15 = r13
            L5b:
                int r14 = r14 + 1
                goto L3b
            L5e:
                r16 = 0
                if (r12 == 0) goto L68
                if (r15 == 0) goto L68
                r3.onComplete()
                return
            L68:
                if (r15 == 0) goto L10
                goto L6d
            L6b:
                r16 = 0
            L6d:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto Lb1
                boolean r4 = r0.cancelled
                if (r4 == 0) goto L79
                r0.cleanup()
                return
            L79:
                io.reactivex.rxjava3.internal.util.AtomicThrowable r4 = r0.errors
                java.lang.Object r4 = r4.get()
                java.lang.Throwable r4 = (java.lang.Throwable) r4
                if (r4 == 0) goto L8a
                r0.cleanup()
                r3.onError(r4)
                return
            L8a:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.done
                int r4 = r4.get()
                if (r4 != 0) goto L94
                r4 = 1
                goto L95
            L94:
                r4 = r13
            L95:
                r6 = r13
            L96:
                if (r6 >= r2) goto La8
                r7 = r1[r6]
                io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue<T> r7 = r7.queue
                if (r7 == 0) goto La5
                boolean r7 = r7.isEmpty()
                if (r7 != 0) goto La5
                goto La9
            La5:
                int r6 = r6 + 1
                goto L96
            La8:
                r13 = 1
            La9:
                if (r4 == 0) goto Lb1
                if (r13 == 0) goto Lb1
                r3.onComplete()
                return
            Lb1:
                int r4 = (r10 > r16 ? 1 : (r10 == r16 ? 0 : -1))
                if (r4 == 0) goto Lba
                java.util.concurrent.atomic.AtomicLong r4 = r0.requested
                io.reactivex.rxjava3.internal.util.BackpressureHelper.produced(r4, r10)
            Lba:
                int r4 = -r5
                int r5 = r0.addAndGet(r4)
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscription.drainLoop():void");
        }
    }

    static final class JoinSubscriptionDelayError<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = -5737965195918321883L;

        JoinSubscriptionDelayError(Subscriber<? super T> actual, int n, int prefetch) {
            super(actual, n, prefetch);
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void onNext(JoinInnerSubscriber<T> inner, T value) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(value);
                    if (this.requested.get() != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    inner.request(1L);
                } else if (!inner.getQueue().offer(value)) {
                    inner.cancel();
                    this.errors.tryAddThrowableOrReport(new MissingBackpressureException("Queue full?!"));
                    this.done.decrementAndGet();
                    drainLoop();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!inner.getQueue().offer(value)) {
                    inner.cancel();
                    this.errors.tryAddThrowableOrReport(new MissingBackpressureException("Queue full?!"));
                    this.done.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void onError(Throwable e) {
            if (this.errors.tryAddThrowableOrReport(e)) {
                this.done.decrementAndGet();
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void onComplete() {
            this.done.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
        
            r16 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
        
            if (r12 == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        
            if (r15 == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        
            r18.errors.tryTerminateConsumer(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0057, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0058, code lost:
        
            if (r15 == false) goto L73;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainLoop() {
            /*
                r18 = this;
                r0 = r18
                io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin$JoinInnerSubscriber<T>[] r1 = r0.subscribers
                int r2 = r1.length
                org.reactivestreams.Subscriber<? super T> r3 = r0.downstream
                r5 = 1
            L8:
                java.util.concurrent.atomic.AtomicLong r6 = r0.requested
                long r6 = r6.get()
                r10 = 0
            L10:
                int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                r13 = 0
                if (r12 == 0) goto L5b
                boolean r12 = r0.cancelled
                if (r12 == 0) goto L1d
                r0.cleanup()
                return
            L1d:
                java.util.concurrent.atomic.AtomicInteger r12 = r0.done
                int r12 = r12.get()
                if (r12 != 0) goto L27
                r12 = 1
                goto L28
            L27:
                r12 = r13
            L28:
                r14 = r13
                r15 = 1
            L2a:
                if (r14 >= r2) goto L4c
                r4 = r1[r14]
                r16 = 0
                io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue<T> r8 = r4.queue
                if (r8 == 0) goto L49
                java.lang.Object r8 = r8.poll()
                if (r8 == 0) goto L49
                r3.onNext(r8)
                r4.requestOne()
                r8 = 1
                long r10 = r10 + r8
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L48
                goto L5d
            L48:
                r15 = r13
            L49:
                int r14 = r14 + 1
                goto L2a
            L4c:
                r16 = 0
                if (r12 == 0) goto L58
                if (r15 == 0) goto L58
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.errors
                r1.tryTerminateConsumer(r3)
                return
            L58:
                if (r15 == 0) goto L10
                goto L5d
            L5b:
                r16 = 0
            L5d:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L92
                boolean r4 = r0.cancelled
                if (r4 == 0) goto L69
                r0.cleanup()
                return
            L69:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.done
                int r4 = r4.get()
                if (r4 != 0) goto L73
                r4 = 1
                goto L74
            L73:
                r4 = r13
            L74:
                r6 = r13
            L75:
                if (r6 >= r2) goto L87
                r7 = r1[r6]
                io.reactivex.rxjava3.internal.fuseable.SimplePlainQueue<T> r7 = r7.queue
                if (r7 == 0) goto L84
                boolean r7 = r7.isEmpty()
                if (r7 != 0) goto L84
                goto L88
            L84:
                int r6 = r6 + 1
                goto L75
            L87:
                r13 = 1
            L88:
                if (r4 == 0) goto L92
                if (r13 == 0) goto L92
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r0.errors
                r1.tryTerminateConsumer(r3)
                return
            L92:
                int r4 = (r10 > r16 ? 1 : (r10 == r16 ? 0 : -1))
                if (r4 == 0) goto L9b
                java.util.concurrent.atomic.AtomicLong r4 = r0.requested
                io.reactivex.rxjava3.internal.util.BackpressureHelper.produced(r4, r10)
            L9b:
                int r4 = -r5
                int r5 = r0.addAndGet(r4)
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin.JoinSubscriptionDelayError.drainLoop():void");
        }
    }

    static final class JoinInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 8410034718427740355L;
        final int limit;
        final JoinSubscriptionBase<T> parent;
        final int prefetch;
        long produced;
        volatile SimplePlainQueue<T> queue;

        JoinInnerSubscriber(JoinSubscriptionBase<T> parent, int prefetch) {
            this.parent = parent;
            this.prefetch = prefetch;
            this.limit = prefetch - (prefetch >> 2);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription s) {
            SubscriptionHelper.setOnce(this, s, this.prefetch);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.parent.onNext(this, t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.parent.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.onComplete();
        }

        public void requestOne() {
            long j = this.produced + 1;
            if (j == this.limit) {
                this.produced = 0L;
                get().request(j);
            } else {
                this.produced = j;
            }
        }

        public void request(long n) {
            long j = this.produced + n;
            if (j >= this.limit) {
                this.produced = 0L;
                get().request(j);
            } else {
                this.produced = j;
            }
        }

        public boolean cancel() {
            return SubscriptionHelper.cancel(this);
        }

        SimplePlainQueue<T> getQueue() {
            SimplePlainQueue<T> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                return simplePlainQueue;
            }
            SpscArrayQueue spscArrayQueue = new SpscArrayQueue(this.prefetch);
            this.queue = spscArrayQueue;
            return spscArrayQueue;
        }
    }
}
