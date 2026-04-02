package com.stripe.core.hardware.reactive.emv;

import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ConfigurationHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0, 0, 1}, l = {WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 243}, m = "configureTerminalSetting$hardware_reactive_release", n = {"this", "desiredSetting", "this"}, s = {"L$0", "L$1", "L$0"})
final class ConfigurationHandler$configureTerminalSetting$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConfigurationHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigurationHandler$configureTerminalSetting$1(ConfigurationHandler configurationHandler, Continuation<? super ConfigurationHandler$configureTerminalSetting$1> continuation) {
        super(continuation);
        this.this$0 = configurationHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.configureTerminalSetting$hardware_reactive_release(null, false, this);
    }
}
