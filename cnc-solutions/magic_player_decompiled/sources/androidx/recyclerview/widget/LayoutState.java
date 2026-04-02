package androidx.recyclerview.widget;

import android.support.v4.media.f;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
class LayoutState {
    public static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    public static final int ITEM_DIRECTION_HEAD = -1;
    public static final int ITEM_DIRECTION_TAIL = 1;
    public static final int LAYOUT_END = 1;
    public static final int LAYOUT_START = -1;
    public int mAvailable;
    public int mCurrentPosition;
    public boolean mInfinite;
    public int mItemDirection;
    public int mLayoutDirection;
    public boolean mStopInFocusable;
    public boolean mRecycle = true;
    public int mStartLine = 0;
    public int mEndLine = 0;

    public boolean hasMore(RecyclerView.State state) {
        int i4 = this.mCurrentPosition;
        return i4 >= 0 && i4 < state.getItemCount();
    }

    public View next(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    public String toString() {
        StringBuilder sbA = f.a("LayoutState{mAvailable=");
        sbA.append(this.mAvailable);
        sbA.append(", mCurrentPosition=");
        sbA.append(this.mCurrentPosition);
        sbA.append(", mItemDirection=");
        sbA.append(this.mItemDirection);
        sbA.append(", mLayoutDirection=");
        sbA.append(this.mLayoutDirection);
        sbA.append(", mStartLine=");
        sbA.append(this.mStartLine);
        sbA.append(", mEndLine=");
        sbA.append(this.mEndLine);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
