package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] iArr = sTempNestedScrollConsumed;
        if (iArr == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i4) {
        viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i4);
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f4, float f5, boolean z3) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onNestedFling(view, f4, f5, z3);
            }
            return false;
        }
        try {
            return viewParent.onNestedFling(view, f4, f5, z3);
        } catch (AbstractMethodError e4) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e4);
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f4, float f5) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onNestedPreFling(view, f4, f5);
            }
            return false;
        }
        try {
            return viewParent.onNestedPreFling(view, f4, f5);
        } catch (AbstractMethodError e4) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e4);
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i4, int i5, int[] iArr) {
        onNestedPreScroll(viewParent, view, i4, i5, iArr, 0);
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i4, int i5, int i6, int i7) {
        onNestedScroll(viewParent, view, i4, i5, i6, i7, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i4) {
        onNestedScrollAccepted(viewParent, view, view2, i4, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i4) {
        return onStartNestedScroll(viewParent, view, view2, i4, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i4, int i5, int[] iArr, int i6) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i4, i5, iArr, i6);
            return;
        }
        if (i6 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onNestedPreScroll(view, i4, i5, iArr);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i4, i5, iArr);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e4);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i4, int i5) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i4, i5);
            return;
        }
        if (i5 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onNestedScrollAccepted(view, view2, i4);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i4);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e4);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i4, int i5) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i4, i5);
        }
        if (i5 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onStartNestedScroll(view, view2, i4);
            }
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i4);
        } catch (AbstractMethodError e4) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e4);
            return false;
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i4);
            return;
        }
        if (i4 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof NestedScrollingParent) {
                    ((NestedScrollingParent) viewParent).onStopNestedScroll(view);
                    return;
                }
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e4) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e4);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i4, int i5, int i6, int i7, int i8) {
        onNestedScroll(viewParent, view, i4, i5, i6, i7, i8, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i4, int i5, int i6, int i7, int i8, @NonNull int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i4, i5, i6, i7, i8, iArr);
            return;
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i4, i5, i6, i7, i8);
            return;
        }
        if (i8 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i4, i5, i6, i7);
                    return;
                } catch (AbstractMethodError e4) {
                    Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e4);
                    return;
                }
            }
            if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScroll(view, i4, i5, i6, i7);
            }
        }
    }
}
