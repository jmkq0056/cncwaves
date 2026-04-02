package cn.huidu.lcd.setting.ui.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$styleable;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes.dex */
public class LcdPlayerRecyclerView extends RecyclerView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f834b;

    public LcdPlayerRecyclerView(Context context) {
        this(context, null);
    }

    private int getFreeHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int getFreeWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        LinearLayoutManager linearLayoutManager;
        int iFindLastVisibleItemPosition;
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View focusedChild = getFocusedChild();
        if (focusedChild == null) {
            return zDispatchKeyEvent;
        }
        if (keyEvent.getAction() == 1) {
            if (keyEvent.getKeyCode() == 4) {
                return zDispatchKeyEvent;
            }
            return true;
        }
        switch (keyEvent.getKeyCode()) {
            case 19:
                View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, focusedChild, 33);
                if (viewFindNextFocus == null) {
                    Log.i("LcdPlayerRecyclerView", "tab cache view");
                } else {
                    viewFindNextFocus.requestFocus();
                    smoothScrollBy(0, -((getHeight() / 2) - (viewFindNextFocus.getBottom() - (viewFindNextFocus.getHeight() / 2))));
                }
                break;
            case 20:
                View viewFindNextFocus2 = FocusFinder.getInstance().findNextFocus(this, focusedChild, WKSRecord.Service.CISCO_FNA);
                if (viewFindNextFocus2 == null && (iFindLastVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) getLayoutManager()).findLastVisibleItemPosition()) < linearLayoutManager.getItemCount() - 1) {
                    int i4 = iFindLastVisibleItemPosition + 1;
                    smoothScrollToPosition(i4);
                    viewFindNextFocus2 = linearLayoutManager.findViewByPosition(i4);
                }
                if (viewFindNextFocus2 != null) {
                    viewFindNextFocus2.requestFocus();
                    smoothScrollBy(0, ((viewFindNextFocus2.getHeight() / 2) + viewFindNextFocus2.getTop()) - (getHeight() / 2));
                }
                break;
            case 21:
                View viewFindNextFocus3 = FocusFinder.getInstance().findNextFocus(this, focusedChild, 17);
                if (viewFindNextFocus3 != null) {
                    viewFindNextFocus3.requestFocus();
                }
                break;
            case 22:
                View viewFindNextFocus4 = FocusFinder.getInstance().findNextFocus(this, focusedChild, 66);
                if (viewFindNextFocus4 != null) {
                    viewFindNextFocus4.requestFocus();
                }
                break;
        }
        return zDispatchKeyEvent;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public int getBaseline() {
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public int getChildDrawingOrder(int i4, int i5) {
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            int childAdapterPosition = getChildAdapterPosition(focusedChild) - getFirstVisiblePosition();
            this.f834b = childAdapterPosition;
            if (childAdapterPosition < 0) {
                return i5;
            }
            int i6 = i4 - 1;
            if (i5 == i6) {
                if (childAdapterPosition > i5) {
                    this.f834b = i5;
                }
                return this.f834b;
            }
            if (i5 == childAdapterPosition) {
                return i6;
            }
        }
        return i5;
    }

    public int getFirstVisiblePosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getChildAdapterPosition(getChildAt(0));
    }

    public int getLastVisiblePosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getChildAdapterPosition(getChildAt(childCount - 1));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return super.hasFocus();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return Build.VERSION.SDK_INT == 19 ? !hasFocus() || super.isInTouchMode() : super.isInTouchMode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if (getLayoutManager() != null) {
            super.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z3, int i4, Rect rect) {
        super.onFocusChanged(z3, i4, rect);
        Log.d("LcdPlayerRecyclerView", "onFocusChanged: +++" + z3 + rect);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i4, int i5) {
        int i6 = this.f833a;
        if (i6 > 0) {
            i5 = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        }
        super.onMeasure(i4, i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int left = view.getLeft() + rect.left;
        int top = view.getTop() + rect.top;
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i4 = left - paddingLeft;
        int iMin = Math.min(0, i4);
        int i5 = iWidth - width;
        int iMax = Math.max(0, i5);
        int i6 = top - paddingTop;
        int iMin2 = Math.min(0, i6);
        int iMax2 = Math.max(0, iHeight - height);
        boolean zCanScrollHorizontally = getLayoutManager().canScrollHorizontally();
        boolean zCanScrollVertically = getLayoutManager().canScrollVertically();
        if (!zCanScrollHorizontally) {
            iMax = 0;
        } else if (ViewCompat.getLayoutDirection(this) != 1) {
            if (iMin == 0) {
                iMin = Math.min(i4, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i5);
        }
        if (!zCanScrollVertically) {
            iMin2 = 0;
        } else if (iMin2 == 0) {
            iMin2 = Math.min(i6, iMax2);
        }
        if (iMax == 0 && iMin2 == 0) {
            return false;
        }
        if (z3) {
            scrollBy(iMax, iMin2);
        } else {
            smoothScrollBy(iMax, iMin2);
        }
        postInvalidate();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
    }

    public LcdPlayerRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public LcdPlayerRecyclerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        setChildrenDrawingOrderEnabled(true);
        setClipChildren(false);
        setClipToPadding(false);
        setClickable(false);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setItemAnimator(null);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LcdPlayerRecyclerView);
        this.f833a = typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.LcdPlayerRecyclerView_maxHeight, this.f833a);
        typedArrayObtainStyledAttributes.recycle();
    }
}
