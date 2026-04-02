package androidx.recyclerview.widget;

import android.view.View;
import com.arcsoft.face.ErrorInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
class ViewBoundsCheck {
    public static final int CVE_PVE_POS = 12;
    public static final int CVE_PVS_POS = 8;
    public static final int CVS_PVE_POS = 4;
    public static final int CVS_PVS_POS = 0;
    public static final int EQ = 2;
    public static final int FLAG_CVE_EQ_PVE = 8192;
    public static final int FLAG_CVE_EQ_PVS = 512;
    public static final int FLAG_CVE_GT_PVE = 4096;
    public static final int FLAG_CVE_GT_PVS = 256;
    public static final int FLAG_CVE_LT_PVE = 16384;
    public static final int FLAG_CVE_LT_PVS = 1024;
    public static final int FLAG_CVS_EQ_PVE = 32;
    public static final int FLAG_CVS_EQ_PVS = 2;
    public static final int FLAG_CVS_GT_PVE = 16;
    public static final int FLAG_CVS_GT_PVS = 1;
    public static final int FLAG_CVS_LT_PVE = 64;
    public static final int FLAG_CVS_LT_PVS = 4;
    public static final int GT = 1;
    public static final int LT = 4;
    public static final int MASK = 7;
    public BoundFlags mBoundFlags = new BoundFlags();
    public final Callback mCallback;

    public static class BoundFlags {
        public int mBoundFlags = 0;
        public int mChildEnd;
        public int mChildStart;
        public int mRvEnd;
        public int mRvStart;

        public void addFlags(int i4) {
            this.mBoundFlags = i4 | this.mBoundFlags;
        }

        public boolean boundsMatch() {
            int i4 = this.mBoundFlags;
            if ((i4 & 7) != 0 && (i4 & (compare(this.mChildStart, this.mRvStart) << 0)) == 0) {
                return false;
            }
            int i5 = this.mBoundFlags;
            if ((i5 & 112) != 0 && (i5 & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
                return false;
            }
            int i6 = this.mBoundFlags;
            if ((i6 & 1792) != 0 && (i6 & (compare(this.mChildEnd, this.mRvStart) << 8)) == 0) {
                return false;
            }
            int i7 = this.mBoundFlags;
            return (i7 & ErrorInfo.MERR_FSDK_BASE) == 0 || (i7 & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
        }

        public int compare(int i4, int i5) {
            if (i4 > i5) {
                return 1;
            }
            return i4 == i5 ? 2 : 4;
        }

        public void resetFlags() {
            this.mBoundFlags = 0;
        }

        public void setBounds(int i4, int i5, int i6, int i7) {
            this.mRvStart = i4;
            this.mRvEnd = i5;
            this.mChildStart = i6;
            this.mChildEnd = i7;
        }
    }

    public interface Callback {
        View getChildAt(int i4);

        int getChildEnd(View view);

        int getChildStart(View view);

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    public ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }

    public View findOneViewWithinBoundFlags(int i4, int i5, int i6, int i7) {
        int parentStart = this.mCallback.getParentStart();
        int parentEnd = this.mCallback.getParentEnd();
        int i8 = i5 > i4 ? 1 : -1;
        View view = null;
        while (i4 != i5) {
            View childAt = this.mCallback.getChildAt(i4);
            this.mBoundFlags.setBounds(parentStart, parentEnd, this.mCallback.getChildStart(childAt), this.mCallback.getChildEnd(childAt));
            if (i6 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i6);
                if (this.mBoundFlags.boundsMatch()) {
                    return childAt;
                }
            }
            if (i7 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i7);
                if (this.mBoundFlags.boundsMatch()) {
                    view = childAt;
                }
            }
            i4 += i8;
        }
        return view;
    }

    public boolean isViewWithinBoundFlags(View view, int i4) {
        this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(view), this.mCallback.getChildEnd(view));
        if (i4 == 0) {
            return false;
        }
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(i4);
        return this.mBoundFlags.boundsMatch();
    }
}
