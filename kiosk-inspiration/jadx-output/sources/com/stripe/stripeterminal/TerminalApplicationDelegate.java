package com.stripe.stripeterminal;

import android.app.Application;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalApplicationDelegate.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/TerminalApplicationDelegate;", "", "()V", "isInitialized", "", "isInitialized$core_publish", "onCreate", "", "application", "Landroid/app/Application;", "core_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalApplicationDelegate {
    public static final TerminalApplicationDelegate INSTANCE = new TerminalApplicationDelegate();

    private TerminalApplicationDelegate() {
    }

    @JvmStatic
    public static final void onCreate(Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        TerminalSdkManager.INSTANCE.registerObserver(application);
    }

    public final boolean isInitialized$core_publish() {
        return TerminalSdkManager.INSTANCE.isObserverRegistered();
    }
}
