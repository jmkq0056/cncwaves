package com.example.digitalkiosk;

import androidx.activity.result.ActivityResultCallback;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* synthetic */ class MainActivity$requestPermissionLauncher$1 implements ActivityResultCallback, FunctionAdapter {
    final /* synthetic */ MainActivity $tmp0;

    MainActivity$requestPermissionLauncher$1(MainActivity mainActivity) {
        this.$tmp0 = mainActivity;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function<?> getFunctionDelegate() {
        return new FunctionReferenceImpl(1, this.$tmp0, MainActivity.class, "onPermissionResult", "onPermissionResult(Ljava/util/Map;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Map<String, Boolean> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        this.$tmp0.onPermissionResult(p0);
    }
}
