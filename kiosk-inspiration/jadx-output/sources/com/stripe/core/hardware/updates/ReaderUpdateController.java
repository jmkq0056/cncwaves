package com.stripe.core.hardware.updates;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ReaderUpdateController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J&\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\tJ\u001a\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007H¦@¢\u0006\u0002\u0010\u000eø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "", "cancel", "", "checkForUpdates", "installConfig", "configVersion", "", "updateHex", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "installFirmware", "firmwareVersion", "installKeys", "keyProfile", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderUpdateController {
    void cancel();

    void checkForUpdates();

    Object installConfig(String str, String str2, Continuation<? super Unit> continuation);

    Object installFirmware(String str, String str2, Continuation<? super Unit> continuation);

    Object installKeys(String str, Continuation<? super Unit> continuation);

    static /* synthetic */ Object installConfig$default(ReaderUpdateController readerUpdateController, String str, String str2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: installConfig");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return readerUpdateController.installConfig(str, str2, continuation);
    }

    static /* synthetic */ Object installFirmware$default(ReaderUpdateController readerUpdateController, String str, String str2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: installFirmware");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return readerUpdateController.installFirmware(str, str2, continuation);
    }

    static /* synthetic */ Object installKeys$default(ReaderUpdateController readerUpdateController, String str, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: installKeys");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return readerUpdateController.installKeys(str, continuation);
    }
}
