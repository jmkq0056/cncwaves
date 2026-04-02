package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t3);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i4) {
            if (i4 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i4];
        }

        private boolean isInPool(@NonNull T t3) {
            for (int i4 = 0; i4 < this.mPoolSize; i4++) {
                if (this.mPool[i4] == t3) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int i4 = this.mPoolSize;
            if (i4 <= 0) {
                return null;
            }
            int i5 = i4 - 1;
            Object[] objArr = this.mPool;
            T t3 = (T) objArr[i5];
            objArr[i5] = null;
            this.mPoolSize = i4 - 1;
            return t3;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t3) {
            if (isInPool(t3)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i4 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i4 >= objArr.length) {
                return false;
            }
            objArr[i4] = t3;
            this.mPoolSize = i4 + 1;
            return true;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i4) {
            super(i4);
            this.mLock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t3;
            synchronized (this.mLock) {
                t3 = (T) super.acquire();
            }
            return t3;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t3) {
            boolean zRelease;
            synchronized (this.mLock) {
                zRelease = super.release(t3);
            }
            return zRelease;
        }
    }

    private Pools() {
    }
}
