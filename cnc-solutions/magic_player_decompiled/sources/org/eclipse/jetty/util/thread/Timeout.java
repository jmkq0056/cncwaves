package org.eclipse.jetty.util.thread;

import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class Timeout {
    private static final Logger LOG = Log.getLogger((Class<?>) Timeout.class);
    private long _duration;
    private Task _head;
    private Object _lock;
    private volatile long _now = System.currentTimeMillis();

    public static class Task {
        public long _delay;
        public Timeout _timeout;
        public long _timestamp = 0;
        public boolean _expired = false;
        public Task _prev = this;
        public Task _next = this;

        /* JADX INFO: Access modifiers changed from: private */
        public void link(Task task) {
            Task task2 = this._next;
            task2._prev = task;
            this._next = task;
            task._next = task2;
            this._next._prev = this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unlink() {
            Task task = this._next;
            task._prev = this._prev;
            this._prev._next = task;
            this._prev = this;
            this._next = this;
            this._expired = false;
        }

        public void cancel() {
            Timeout timeout = this._timeout;
            if (timeout != null) {
                synchronized (timeout._lock) {
                    unlink();
                    this._timestamp = 0L;
                }
            }
        }

        public void expire() {
        }

        public void expired() {
        }

        public long getAge() {
            Timeout timeout = this._timeout;
            if (timeout != null) {
                long j4 = timeout._now;
                if (j4 != 0) {
                    long j5 = this._timestamp;
                    if (j5 != 0) {
                        return j4 - j5;
                    }
                }
            }
            return 0L;
        }

        public long getTimestamp() {
            return this._timestamp;
        }

        public boolean isExpired() {
            return this._expired;
        }

        public boolean isScheduled() {
            return this._next != this;
        }

        public void reschedule() {
            Timeout timeout = this._timeout;
            if (timeout != null) {
                timeout.schedule(this, this._delay);
            }
        }

        public void schedule(Timeout timeout) {
            timeout.schedule(this);
        }

        public void schedule(Timeout timeout, long j4) {
            timeout.schedule(this, j4);
        }
    }

    public Timeout() {
        Task task = new Task();
        this._head = task;
        this._lock = new Object();
        task._timeout = this;
    }

    public void cancelAll() {
        synchronized (this._lock) {
            Task task = this._head;
            task._prev = task;
            task._next = task;
        }
    }

    public Task expired() {
        synchronized (this._lock) {
            long j4 = this._now - this._duration;
            Task task = this._head;
            Task task2 = task._next;
            if (task2 == task) {
                return null;
            }
            if (task2._timestamp > j4) {
                return null;
            }
            task2.unlink();
            task2._expired = true;
            return task2;
        }
    }

    public long getDuration() {
        return this._duration;
    }

    public long getNow() {
        return this._now;
    }

    public long getTimeToNext() {
        synchronized (this._lock) {
            Task task = this._head;
            Task task2 = task._next;
            if (task2 == task) {
                return -1L;
            }
            long j4 = (this._duration + task2._timestamp) - this._now;
            if (j4 < 0) {
                j4 = 0;
            }
            return j4;
        }
    }

    public boolean isEmpty() {
        boolean z3;
        synchronized (this._lock) {
            Task task = this._head;
            z3 = task._next == task;
        }
        return z3;
    }

    public void schedule(Task task) {
        schedule(task, 0L);
    }

    public void setDuration(long j4) {
        this._duration = j4;
    }

    public long setNow() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this._now = jCurrentTimeMillis;
        return jCurrentTimeMillis;
    }

    public void tick() {
        Task task;
        long j4 = this._now - this._duration;
        while (true) {
            try {
                synchronized (this._lock) {
                    Task task2 = this._head;
                    task = task2._next;
                    if (task != task2 && task._timestamp <= j4) {
                        task.unlink();
                        task._expired = true;
                        task.expire();
                    }
                    return;
                }
                task.expired();
            } catch (Throwable th) {
                LOG.warn(Log.EXCEPTION, th);
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        for (Task task = this._head._next; task != this._head; task = task._next) {
            stringBuffer.append("-->");
            stringBuffer.append(task);
        }
        return stringBuffer.toString();
    }

    public void schedule(Task task, long j4) {
        synchronized (this._lock) {
            if (task._timestamp != 0) {
                task.unlink();
                task._timestamp = 0L;
            }
            task._timeout = this;
            task._expired = false;
            task._delay = j4;
            task._timestamp = this._now + j4;
            Task task2 = this._head._prev;
            while (task2 != this._head && task2._timestamp > task._timestamp) {
                task2 = task2._prev;
            }
            task2.link(task);
        }
    }

    public void setNow(long j4) {
        this._now = j4;
    }

    public Timeout(Object obj) {
        Task task = new Task();
        this._head = task;
        this._lock = obj;
        task._timeout = this;
    }

    public void tick(long j4) {
        this._now = j4;
        tick();
    }
}
