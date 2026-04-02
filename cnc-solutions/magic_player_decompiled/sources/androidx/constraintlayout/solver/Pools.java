package androidx.constraintlayout.solver;

/* JADX INFO: loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    public interface Pool<T> {
        T acquire();

        boolean release(T t3);

        void releaseAll(T[] tArr, int i4);
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

        private boolean isInPool(T t3) {
            for (int i4 = 0; i4 < this.mPoolSize; i4++) {
                if (this.mPool[i4] == t3) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
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

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public boolean release(T t3) {
            int i4 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i4 >= objArr.length) {
                return false;
            }
            objArr[i4] = t3;
            this.mPoolSize = i4 + 1;
            return true;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public void releaseAll(T[] tArr, int i4) {
            if (i4 > tArr.length) {
                i4 = tArr.length;
            }
            for (int i5 = 0; i5 < i4; i5++) {
                T t3 = tArr[i5];
                int i6 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i6 < objArr.length) {
                    objArr[i6] = t3;
                    this.mPoolSize = i6 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
