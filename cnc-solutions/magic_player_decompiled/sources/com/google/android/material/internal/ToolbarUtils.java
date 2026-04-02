package com.google.android.material.internal;

import android.view.View;
import android.widget.ImageButton;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class ToolbarUtils {
    private ToolbarUtils() {
    }

    @Nullable
    public static ActionMenuItemView getActionMenuItemView(@NonNull Toolbar toolbar, @IdRes int i4) {
        ActionMenuView actionMenuView = getActionMenuView(toolbar);
        if (actionMenuView == null) {
            return null;
        }
        for (int i5 = 0; i5 < actionMenuView.getChildCount(); i5++) {
            View childAt = actionMenuView.getChildAt(i5);
            if (childAt instanceof ActionMenuItemView) {
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                if (actionMenuItemView.getItemData().getItemId() == i4) {
                    return actionMenuItemView;
                }
            }
        }
        return null;
    }

    @Nullable
    public static ActionMenuView getActionMenuView(@NonNull Toolbar toolbar) {
        for (int i4 = 0; i4 < toolbar.getChildCount(); i4++) {
            View childAt = toolbar.getChildAt(i4);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    @Nullable
    public static ImageButton getNavigationIconButton(@NonNull Toolbar toolbar) {
        if (toolbar.getChildCount() <= 0) {
            return null;
        }
        View childAt = toolbar.getChildAt(0);
        if (childAt instanceof ImageButton) {
            return (ImageButton) childAt;
        }
        return null;
    }

    @Nullable
    public static View getSecondaryActionMenuItemView(@NonNull Toolbar toolbar) {
        ActionMenuView actionMenuView = getActionMenuView(toolbar);
        if (actionMenuView == null || actionMenuView.getChildCount() <= 1) {
            return null;
        }
        return actionMenuView.getChildAt(0);
    }
}
