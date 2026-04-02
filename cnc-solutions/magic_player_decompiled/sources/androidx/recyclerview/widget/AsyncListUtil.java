package androidx.recyclerview.widget;

import android.support.v4.media.f;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;

/* JADX INFO: loaded from: classes.dex */
public class AsyncListUtil<T> {
    public static final boolean DEBUG = false;
    public static final String TAG = "AsyncListUtil";
    public boolean mAllowScrollHints;
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback;
    public final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    public final DataCallback<T> mDataCallback;
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback;
    public final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    public final Class<T> mTClass;
    public final TileList<T> mTileList;
    public final int mTileSize;
    public final ViewCallback mViewCallback;
    public final int[] mTmpRange = new int[2];
    public final int[] mPrevRange = new int[2];
    public final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    public int mItemCount = 0;
    public int mDisplayedGeneration = 0;
    public int mRequestedGeneration = 0;
    public final SparseIntArray mMissingPositions = new SparseIntArray();

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int i4, int i5);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int i4) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i4) {
            int i5 = (iArr[1] - iArr[0]) + 1;
            int i6 = i5 / 2;
            iArr2[0] = iArr[0] - (i4 == 1 ? i5 : i6);
            int i7 = iArr[1];
            if (i4 != 2) {
                i5 = i6;
            }
            iArr2[1] = i7 + i5;
        }

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i4);
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i4, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        ThreadUtil.MainThreadCallback<T> mainThreadCallback = (ThreadUtil.MainThreadCallback<T>) new ThreadUtil.MainThreadCallback<Object>() { // from class: androidx.recyclerview.widget.AsyncListUtil.1
            private boolean isRequestedGeneration(int i5) {
                return i5 == AsyncListUtil.this.mRequestedGeneration;
            }

            private void recycleAllTiles() {
                for (int i5 = 0; i5 < AsyncListUtil.this.mTileList.size(); i5++) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.mBackgroundProxy.recycleTile(asyncListUtil.mTileList.getAtIndex(i5));
                }
                AsyncListUtil.this.mTileList.clear();
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void addTile(int i5, TileList.Tile<Object> tile) {
                if (!isRequestedGeneration(i5)) {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
                    return;
                }
                TileList.Tile<T> tileAddOrReplace = AsyncListUtil.this.mTileList.addOrReplace(tile);
                if (tileAddOrReplace != null) {
                    StringBuilder sbA = f.a("duplicate tile @");
                    sbA.append(tileAddOrReplace.mStartPosition);
                    Log.e(AsyncListUtil.TAG, sbA.toString());
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(tileAddOrReplace);
                }
                int i6 = tile.mStartPosition + tile.mItemCount;
                int i7 = 0;
                while (i7 < AsyncListUtil.this.mMissingPositions.size()) {
                    int iKeyAt = AsyncListUtil.this.mMissingPositions.keyAt(i7);
                    if (tile.mStartPosition > iKeyAt || iKeyAt >= i6) {
                        i7++;
                    } else {
                        AsyncListUtil.this.mMissingPositions.removeAt(i7);
                        AsyncListUtil.this.mViewCallback.onItemLoaded(iKeyAt);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void removeTile(int i5, int i6) {
                if (isRequestedGeneration(i5)) {
                    TileList.Tile<T> tileRemoveAtPos = AsyncListUtil.this.mTileList.removeAtPos(i6);
                    if (tileRemoveAtPos != null) {
                        AsyncListUtil.this.mBackgroundProxy.recycleTile(tileRemoveAtPos);
                        return;
                    }
                    Log.e(AsyncListUtil.TAG, "tile not found @" + i6);
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void updateItemCount(int i5, int i6) {
                if (isRequestedGeneration(i5)) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.mItemCount = i6;
                    asyncListUtil.mViewCallback.onDataRefresh();
                    AsyncListUtil asyncListUtil2 = AsyncListUtil.this;
                    asyncListUtil2.mDisplayedGeneration = asyncListUtil2.mRequestedGeneration;
                    recycleAllTiles();
                    AsyncListUtil asyncListUtil3 = AsyncListUtil.this;
                    asyncListUtil3.mAllowScrollHints = false;
                    asyncListUtil3.updateRange();
                }
            }
        };
        this.mMainThreadCallback = mainThreadCallback;
        ThreadUtil.BackgroundCallback<T> backgroundCallback = (ThreadUtil.BackgroundCallback<T>) new ThreadUtil.BackgroundCallback<Object>() { // from class: androidx.recyclerview.widget.AsyncListUtil.2
            private int mFirstRequiredTileStart;
            private int mGeneration;
            private int mItemCount;
            private int mLastRequiredTileStart;
            public final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
            private TileList.Tile<Object> mRecycledRoot;

            private TileList.Tile<Object> acquireTile() {
                TileList.Tile<Object> tile = this.mRecycledRoot;
                if (tile != null) {
                    this.mRecycledRoot = tile.mNext;
                    return tile;
                }
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                return new TileList.Tile<>(asyncListUtil.mTClass, asyncListUtil.mTileSize);
            }

            private void addTile(TileList.Tile<Object> tile) {
                this.mLoadedTiles.put(tile.mStartPosition, true);
                AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
            }

            private void flushTileCache(int i5) {
                int maxCachedTiles = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
                while (this.mLoadedTiles.size() >= maxCachedTiles) {
                    int iKeyAt = this.mLoadedTiles.keyAt(0);
                    SparseBooleanArray sparseBooleanArray = this.mLoadedTiles;
                    int iKeyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                    int i6 = this.mFirstRequiredTileStart - iKeyAt;
                    int i7 = iKeyAt2 - this.mLastRequiredTileStart;
                    if (i6 > 0 && (i6 >= i7 || i5 == 2)) {
                        removeTile(iKeyAt);
                    } else {
                        if (i7 <= 0) {
                            return;
                        }
                        if (i6 >= i7 && i5 != 1) {
                            return;
                        } else {
                            removeTile(iKeyAt2);
                        }
                    }
                }
            }

            private int getTileStart(int i5) {
                return i5 - (i5 % AsyncListUtil.this.mTileSize);
            }

            private boolean isTileLoaded(int i5) {
                return this.mLoadedTiles.get(i5);
            }

            private void log(String str, Object... objArr) {
                StringBuilder sbA = f.a("[BKGR] ");
                sbA.append(String.format(str, objArr));
                Log.d(AsyncListUtil.TAG, sbA.toString());
            }

            private void removeTile(int i5) {
                this.mLoadedTiles.delete(i5);
                AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, i5);
            }

            private void requestTiles(int i5, int i6, int i7, boolean z3) {
                int i8 = i5;
                while (i8 <= i6) {
                    AsyncListUtil.this.mBackgroundProxy.loadTile(z3 ? (i6 + i5) - i8 : i8, i7);
                    i8 += AsyncListUtil.this.mTileSize;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void loadTile(int i5, int i6) {
                if (isTileLoaded(i5)) {
                    return;
                }
                TileList.Tile<Object> tileAcquireTile = acquireTile();
                tileAcquireTile.mStartPosition = i5;
                int iMin = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - i5);
                tileAcquireTile.mItemCount = iMin;
                AsyncListUtil.this.mDataCallback.fillData(tileAcquireTile.mItems, tileAcquireTile.mStartPosition, iMin);
                flushTileCache(i6);
                addTile(tileAcquireTile);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void recycleTile(TileList.Tile<Object> tile) {
                AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
                tile.mNext = (TileList.Tile<T>) this.mRecycledRoot;
                this.mRecycledRoot = tile;
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void refresh(int i5) {
                this.mGeneration = i5;
                this.mLoadedTiles.clear();
                int iRefreshData = AsyncListUtil.this.mDataCallback.refreshData();
                this.mItemCount = iRefreshData;
                AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, iRefreshData);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void updateRange(int i5, int i6, int i7, int i8, int i9) {
                if (i5 > i6) {
                    return;
                }
                int tileStart = getTileStart(i5);
                int tileStart2 = getTileStart(i6);
                this.mFirstRequiredTileStart = getTileStart(i7);
                int tileStart3 = getTileStart(i8);
                this.mLastRequiredTileStart = tileStart3;
                if (i9 == 1) {
                    requestTiles(this.mFirstRequiredTileStart, tileStart2, i9, true);
                    requestTiles(tileStart2 + AsyncListUtil.this.mTileSize, this.mLastRequiredTileStart, i9, false);
                } else {
                    requestTiles(tileStart, tileStart3, i9, false);
                    requestTiles(this.mFirstRequiredTileStart, tileStart - AsyncListUtil.this.mTileSize, i9, true);
                }
            }
        };
        this.mBackgroundCallback = backgroundCallback;
        this.mTClass = cls;
        this.mTileSize = i4;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(i4);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(mainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(backgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    @Nullable
    public T getItem(int i4) {
        if (i4 < 0 || i4 >= this.mItemCount) {
            throw new IndexOutOfBoundsException(i4 + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(i4);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(i4, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    public void log(String str, Object... objArr) {
        StringBuilder sbA = f.a("[MAIN] ");
        sbA.append(String.format(str, objArr));
        Log.d(TAG, sbA.toString());
    }

    public void onRangeChanged() {
        if (isRefreshPending()) {
            return;
        }
        updateRange();
        this.mAllowScrollHints = true;
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int i4 = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i4;
        backgroundCallback.refresh(i4);
    }

    public void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        int[] iArr = this.mTmpRange;
        if (iArr[0] > iArr[1] || iArr[0] < 0 || iArr[1] >= this.mItemCount) {
            return;
        }
        if (this.mAllowScrollHints) {
            int i4 = iArr[0];
            int[] iArr2 = this.mPrevRange;
            if (i4 > iArr2[1] || iArr2[0] > iArr[1]) {
                this.mScrollHint = 0;
            } else if (iArr[0] < iArr2[0]) {
                this.mScrollHint = 1;
            } else if (iArr[0] > iArr2[0]) {
                this.mScrollHint = 2;
            }
        } else {
            this.mScrollHint = 0;
        }
        int[] iArr3 = this.mPrevRange;
        iArr3[0] = iArr[0];
        iArr3[1] = iArr[1];
        this.mViewCallback.extendRangeInto(iArr, this.mTmpRangeExtended, this.mScrollHint);
        int[] iArr4 = this.mTmpRangeExtended;
        iArr4[0] = Math.min(this.mTmpRange[0], Math.max(iArr4[0], 0));
        int[] iArr5 = this.mTmpRangeExtended;
        iArr5[1] = Math.max(this.mTmpRange[1], Math.min(iArr5[1], this.mItemCount - 1));
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int[] iArr6 = this.mTmpRange;
        int i5 = iArr6[0];
        int i6 = iArr6[1];
        int[] iArr7 = this.mTmpRangeExtended;
        backgroundCallback.updateRange(i5, i6, iArr7[0], iArr7[1], this.mScrollHint);
    }
}
