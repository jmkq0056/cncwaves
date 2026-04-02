package com.stripe.core.bbpos;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.bbpos.bbdevice.ota.BBDeviceControllerNotSetException;
import com.stripe.bbpos.bbdevice.ota.BBDeviceNotConnectedException;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.NoInternetConnectionException;
import com.stripe.bbpos.bbdevice.ota.OTAServerURLNotSetException;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.sun.jna.platform.win32.WinError;
import java.util.Hashtable;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposReaderUpdateController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J8\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002J\u0014\u0010\u0015\u001a\u00020\u000b2\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018H\u0002J\"\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0096@¢\u0006\u0002\u0010\u001bJ\"\u0010\u001c\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0096@¢\u0006\u0002\u0010\u001bJ\u0018\u0010\u001d\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0096@¢\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/core/bbpos/BbposReaderUpdateController;", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "otaController", "Lcom/stripe/core/bbpos/BbposDeviceOtaController;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", "otaListener", "Lcom/stripe/core/bbpos/BbposOtaListener;", "(Lcom/stripe/core/bbpos/BbposDeviceOtaController;Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/core/bbpos/BbposOtaListener;)V", "targetVersionDeferred", "Lkotlinx/coroutines/CompletableDeferred;", "", "cancel", "checkForUpdates", "createSetTargetVersionData", "Ljava/util/Hashtable;", "", "", "keyProfile", "configVersion", "firmwareVersion", "handleException", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "installConfig", "updateHex", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "installFirmware", "installKeys", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSetTargetVersion", "Companion", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposReaderUpdateController implements ReaderUpdateController {
    private static final String ENC_HEX = "encHex";
    private static final String TAG = "BbposUpdateController";
    private static final long TIMEOUT_DELAY;
    private static final Map<String, String> UPDATE_PARAMS;
    private final ReaderUpdateListener listener;
    private final BbposDeviceOtaController otaController;
    private CompletableDeferred<Unit> targetVersionDeferred;

    /* JADX INFO: renamed from: com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposReaderUpdateController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.BbposReaderUpdateController", f = "BbposReaderUpdateController.kt", i = {0, 0}, l = {79}, m = "installConfig", n = {"this", "updateHex"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BbposReaderUpdateController.this.installConfig(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposReaderUpdateController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.BbposReaderUpdateController", f = "BbposReaderUpdateController.kt", i = {0, 0}, l = {WinError.ERROR_DISK_CHANGE}, m = "installFirmware", n = {"this", "updateHex"}, s = {"L$0", "L$1"})
    static final class C01651 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01651(Continuation<? super C01651> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BbposReaderUpdateController.this.installFirmware(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposReaderUpdateController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.BbposReaderUpdateController", f = "BbposReaderUpdateController.kt", i = {0}, l = {131}, m = "installKeys", n = {"this"}, s = {"L$0"})
    static final class C01661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01661(Continuation<? super C01661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BbposReaderUpdateController.this.installKeys(null, this);
        }
    }

    public BbposReaderUpdateController(BbposDeviceOtaController otaController, ReaderUpdateListener listener, BbposOtaListener otaListener) {
        Intrinsics.checkNotNullParameter(otaController, "otaController");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(otaListener, "otaListener");
        this.otaController = otaController;
        this.listener = listener;
        otaListener.setUpdateController$sdk_release(this);
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        TIMEOUT_DELAY = DurationKt.toDuration(1, DurationUnit.MINUTES);
        UPDATE_PARAMS = MapsKt.mapOf(TuplesKt.to("forceUpdate", "true"), TuplesKt.to("vendorID", "bbpos1"), TuplesKt.to("vendorSecret", "bbpos1"), TuplesKt.to("appID", "bbpos2"), TuplesKt.to("appSecret", "bbpos2"));
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateController
    public void cancel() throws ReaderUpdateException {
        AndroidLog.INSTANCE.i(TAG, "cancelUpdates");
        try {
            this.otaController.stop();
        } catch (Exception e) {
            handleException(e);
        }
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateController
    public void checkForUpdates() throws ReaderUpdateException {
        AndroidLog.INSTANCE.i(TAG, "checkForReaderUpdates");
        try {
            this.otaController.getTargetVersionWithData(new Hashtable<>(UPDATE_PARAMS));
        } catch (Exception e) {
            handleException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ac A[Catch: Exception -> 0x0094, TryCatch #4 {Exception -> 0x0094, blocks: (B:34:0x0091, B:43:0x00a3, B:45:0x00ac, B:46:0x00b4), top: B:59:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.core.hardware.updates.ReaderUpdateController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object installConfig(java.lang.String r12, java.lang.String r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws com.stripe.core.hardware.updates.ReaderUpdateException {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.stripe.core.bbpos.BbposReaderUpdateController.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r14
            com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$1 r0 = (com.stripe.core.bbpos.BbposReaderUpdateController.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$1 r0 = new com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$1
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r12 = r0.L$1
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r13 = r0.L$0
            com.stripe.core.bbpos.BbposReaderUpdateController r13 = (com.stripe.core.bbpos.BbposReaderUpdateController) r13
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Exception -> L36
            r4 = r13
            r13 = r12
            r12 = r4
            r4 = r11
            goto L91
        L36:
            r0 = move-exception
            r12 = r0
            r4 = r11
            goto Lba
        L3b:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L43:
            kotlin.ResultKt.throwOnFailure(r14)
            com.stripe.core.stripeterminal.log.AndroidLog r14 = com.stripe.core.stripeterminal.log.AndroidLog.INSTANCE
            java.lang.String r2 = "BbposUpdateController"
            java.lang.String r4 = "installReaderConfig"
            r14.i(r2, r4)
            if (r12 != 0) goto L62
            if (r13 == 0) goto L54
            goto L62
        L54:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> L5c
            java.lang.String r13 = "Must include either configVersion or updateHex"
            r12.<init>(r13)     // Catch: java.lang.Exception -> L5c
            throw r12     // Catch: java.lang.Exception -> L5c
        L5c:
            r0 = move-exception
            r12 = r0
            r13 = r11
            r4 = r13
            goto Lba
        L62:
            if (r12 == 0) goto La1
            r14 = 0
            kotlinx.coroutines.CompletableDeferred r2 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r14, r3, r14)     // Catch: java.lang.Exception -> L9c
            r11.targetVersionDeferred = r2     // Catch: java.lang.Exception -> L9c
            com.stripe.core.bbpos.BbposDeviceOtaController r2 = r11.otaController     // Catch: java.lang.Exception -> L9c
            r8 = 5
            r9 = 0
            r5 = 0
            r7 = 0
            r4 = r11
            r6 = r12
            java.util.Hashtable r12 = createSetTargetVersionData$default(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L9a
            r2.setTargetVersionWithData(r12)     // Catch: java.lang.Exception -> L9a
            long r5 = com.stripe.core.bbpos.BbposReaderUpdateController.TIMEOUT_DELAY     // Catch: java.lang.Exception -> L9a
            com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$2$1 r12 = new com.stripe.core.bbpos.BbposReaderUpdateController$installConfig$2$1     // Catch: java.lang.Exception -> L9a
            r12.<init>(r11, r14)     // Catch: java.lang.Exception -> L9a
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12     // Catch: java.lang.Exception -> L9a
            r0.L$0 = r4     // Catch: java.lang.Exception -> L9a
            r0.L$1 = r13     // Catch: java.lang.Exception -> L9a
            r0.label = r3     // Catch: java.lang.Exception -> L9a
            java.lang.Object r14 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r12, r0)     // Catch: java.lang.Exception -> L9a
            if (r14 != r1) goto L90
            return r1
        L90:
            r12 = r4
        L91:
            kotlin.Unit r14 = (kotlin.Unit) r14     // Catch: java.lang.Exception -> L94
            goto La3
        L94:
            r0 = move-exception
            r13 = r0
            r10 = r13
            r13 = r12
            r12 = r10
            goto Lba
        L9a:
            r0 = move-exception
            goto L9e
        L9c:
            r0 = move-exception
            r4 = r11
        L9e:
            r12 = r0
            r13 = r4
            goto Lba
        La1:
            r4 = r11
            r12 = r4
        La3:
            java.util.Hashtable r14 = new java.util.Hashtable     // Catch: java.lang.Exception -> L94
            java.util.Map<java.lang.String, java.lang.String> r0 = com.stripe.core.bbpos.BbposReaderUpdateController.UPDATE_PARAMS     // Catch: java.lang.Exception -> L94
            r14.<init>(r0)     // Catch: java.lang.Exception -> L94
            if (r13 == 0) goto Lb4
            r0 = r14
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Exception -> L94
            java.lang.String r1 = "encHex"
            r0.put(r1, r13)     // Catch: java.lang.Exception -> L94
        Lb4:
            com.stripe.core.bbpos.BbposDeviceOtaController r13 = r12.otaController     // Catch: java.lang.Exception -> L94
            r13.startRemoteConfigUpdate(r14)     // Catch: java.lang.Exception -> L94
            goto Lbd
        Lba:
            r13.handleException(r12)
        Lbd:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.BbposReaderUpdateController.installConfig(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ac A[Catch: Exception -> 0x0094, TryCatch #4 {Exception -> 0x0094, blocks: (B:34:0x0091, B:43:0x00a3, B:45:0x00ac, B:46:0x00b4), top: B:59:0x0091 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.core.hardware.updates.ReaderUpdateController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object installFirmware(java.lang.String r12, java.lang.String r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws com.stripe.core.hardware.updates.ReaderUpdateException {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.stripe.core.bbpos.BbposReaderUpdateController.C01651
            if (r0 == 0) goto L14
            r0 = r14
            com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$1 r0 = (com.stripe.core.bbpos.BbposReaderUpdateController.C01651) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$1 r0 = new com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$1
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r12 = r0.L$1
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r13 = r0.L$0
            com.stripe.core.bbpos.BbposReaderUpdateController r13 = (com.stripe.core.bbpos.BbposReaderUpdateController) r13
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Exception -> L36
            r4 = r13
            r13 = r12
            r12 = r4
            r4 = r11
            goto L91
        L36:
            r0 = move-exception
            r12 = r0
            r4 = r11
            goto Lba
        L3b:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L43:
            kotlin.ResultKt.throwOnFailure(r14)
            com.stripe.core.stripeterminal.log.AndroidLog r14 = com.stripe.core.stripeterminal.log.AndroidLog.INSTANCE
            java.lang.String r2 = "BbposUpdateController"
            java.lang.String r4 = "installReaderFirmware"
            r14.i(r2, r4)
            if (r12 != 0) goto L62
            if (r13 == 0) goto L54
            goto L62
        L54:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: java.lang.Exception -> L5c
            java.lang.String r13 = "Must include either firmwareVersion or updateHex"
            r12.<init>(r13)     // Catch: java.lang.Exception -> L5c
            throw r12     // Catch: java.lang.Exception -> L5c
        L5c:
            r0 = move-exception
            r12 = r0
            r13 = r11
            r4 = r13
            goto Lba
        L62:
            if (r12 == 0) goto La1
            r14 = 0
            kotlinx.coroutines.CompletableDeferred r2 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r14, r3, r14)     // Catch: java.lang.Exception -> L9c
            r11.targetVersionDeferred = r2     // Catch: java.lang.Exception -> L9c
            com.stripe.core.bbpos.BbposDeviceOtaController r2 = r11.otaController     // Catch: java.lang.Exception -> L9c
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            r4 = r11
            r7 = r12
            java.util.Hashtable r12 = createSetTargetVersionData$default(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L9a
            r2.setTargetVersionWithData(r12)     // Catch: java.lang.Exception -> L9a
            long r5 = com.stripe.core.bbpos.BbposReaderUpdateController.TIMEOUT_DELAY     // Catch: java.lang.Exception -> L9a
            com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$2$1 r12 = new com.stripe.core.bbpos.BbposReaderUpdateController$installFirmware$2$1     // Catch: java.lang.Exception -> L9a
            r12.<init>(r11, r14)     // Catch: java.lang.Exception -> L9a
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12     // Catch: java.lang.Exception -> L9a
            r0.L$0 = r4     // Catch: java.lang.Exception -> L9a
            r0.L$1 = r13     // Catch: java.lang.Exception -> L9a
            r0.label = r3     // Catch: java.lang.Exception -> L9a
            java.lang.Object r14 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r12, r0)     // Catch: java.lang.Exception -> L9a
            if (r14 != r1) goto L90
            return r1
        L90:
            r12 = r4
        L91:
            kotlin.Unit r14 = (kotlin.Unit) r14     // Catch: java.lang.Exception -> L94
            goto La3
        L94:
            r0 = move-exception
            r13 = r0
            r10 = r13
            r13 = r12
            r12 = r10
            goto Lba
        L9a:
            r0 = move-exception
            goto L9e
        L9c:
            r0 = move-exception
            r4 = r11
        L9e:
            r12 = r0
            r13 = r4
            goto Lba
        La1:
            r4 = r11
            r12 = r4
        La3:
            java.util.Hashtable r14 = new java.util.Hashtable     // Catch: java.lang.Exception -> L94
            java.util.Map<java.lang.String, java.lang.String> r0 = com.stripe.core.bbpos.BbposReaderUpdateController.UPDATE_PARAMS     // Catch: java.lang.Exception -> L94
            r14.<init>(r0)     // Catch: java.lang.Exception -> L94
            if (r13 == 0) goto Lb4
            r0 = r14
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Exception -> L94
            java.lang.String r1 = "encHex"
            r0.put(r1, r13)     // Catch: java.lang.Exception -> L94
        Lb4:
            com.stripe.core.bbpos.BbposDeviceOtaController r13 = r12.otaController     // Catch: java.lang.Exception -> L94
            r13.startRemoteFirmwareUpdate(r14)     // Catch: java.lang.Exception -> L94
            goto Lbd
        Lba:
            r13.handleException(r12)
        Lbd:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.BbposReaderUpdateController.installFirmware(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.core.hardware.updates.ReaderUpdateController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object installKeys(java.lang.String r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws com.stripe.core.hardware.updates.ReaderUpdateException {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.stripe.core.bbpos.BbposReaderUpdateController.C01661
            if (r0 == 0) goto L14
            r0 = r12
            com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$1 r0 = (com.stripe.core.bbpos.BbposReaderUpdateController.C01661) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$1 r0 = new com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r11 = r0.L$0
            com.stripe.core.bbpos.BbposReaderUpdateController r11 = (com.stripe.core.bbpos.BbposReaderUpdateController) r11
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Exception -> L2f
            r4 = r10
            goto L7c
        L2f:
            r0 = move-exception
            r12 = r0
            r4 = r10
            goto L8b
        L33:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3b:
            kotlin.ResultKt.throwOnFailure(r12)
            com.stripe.core.stripeterminal.log.AndroidLog r12 = com.stripe.core.stripeterminal.log.AndroidLog.INSTANCE
            java.lang.String r2 = "BbposUpdateController"
            java.lang.String r4 = "installReaderKeys"
            r12.i(r2, r4)
            if (r11 == 0) goto L7a
            r12 = 0
            kotlinx.coroutines.CompletableDeferred r2 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r12, r3, r12)     // Catch: java.lang.Exception -> L75
            r10.targetVersionDeferred = r2     // Catch: java.lang.Exception -> L75
            com.stripe.core.bbpos.BbposDeviceOtaController r2 = r10.otaController     // Catch: java.lang.Exception -> L75
            r8 = 6
            r9 = 0
            r6 = 0
            r7 = 0
            r4 = r10
            r5 = r11
            java.util.Hashtable r11 = createSetTargetVersionData$default(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L73
            r2.setTargetVersionWithData(r11)     // Catch: java.lang.Exception -> L73
            long r5 = com.stripe.core.bbpos.BbposReaderUpdateController.TIMEOUT_DELAY     // Catch: java.lang.Exception -> L73
            com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$2 r11 = new com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$2     // Catch: java.lang.Exception -> L73
            r11.<init>(r12)     // Catch: java.lang.Exception -> L73
            kotlin.jvm.functions.Function2 r11 = (kotlin.jvm.functions.Function2) r11     // Catch: java.lang.Exception -> L73
            r0.L$0 = r4     // Catch: java.lang.Exception -> L73
            r0.label = r3     // Catch: java.lang.Exception -> L73
            java.lang.Object r11 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r11, r0)     // Catch: java.lang.Exception -> L73
            if (r11 != r1) goto L7b
            return r1
        L73:
            r0 = move-exception
            goto L77
        L75:
            r0 = move-exception
            r4 = r10
        L77:
            r12 = r0
            r11 = r4
            goto L8b
        L7a:
            r4 = r10
        L7b:
            r11 = r4
        L7c:
            com.stripe.core.bbpos.BbposDeviceOtaController r12 = r11.otaController     // Catch: java.lang.Exception -> L89
            java.util.Hashtable r0 = new java.util.Hashtable     // Catch: java.lang.Exception -> L89
            java.util.Map<java.lang.String, java.lang.String> r1 = com.stripe.core.bbpos.BbposReaderUpdateController.UPDATE_PARAMS     // Catch: java.lang.Exception -> L89
            r0.<init>(r1)     // Catch: java.lang.Exception -> L89
            r12.startRemoteKeyInjection(r0)     // Catch: java.lang.Exception -> L89
            goto L8e
        L89:
            r0 = move-exception
            r12 = r0
        L8b:
            r11.handleException(r12)
        L8e:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.BbposReaderUpdateController.installKeys(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposReaderUpdateController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.BbposReaderUpdateController$installKeys$2", f = "BbposReaderUpdateController.kt", i = {}, l = {WinError.ERROR_SEEK_ON_DEVICE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BbposReaderUpdateController.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CompletableDeferred completableDeferred = BbposReaderUpdateController.this.targetVersionDeferred;
                if (completableDeferred == null) {
                    return null;
                }
                this.label = 1;
                if (completableDeferred.await(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void onSetTargetVersion() {
        CompletableDeferred<Unit> completableDeferred = this.targetVersionDeferred;
        if (completableDeferred != null) {
            completableDeferred.complete(Unit.INSTANCE);
        }
    }

    static /* synthetic */ Hashtable createSetTargetVersionData$default(BbposReaderUpdateController bbposReaderUpdateController, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        return bbposReaderUpdateController.createSetTargetVersionData(str, str2, str3);
    }

    private final Hashtable<String, Object> createSetTargetVersionData(String keyProfile, String configVersion, String firmwareVersion) {
        Map mutableMap = MapsKt.toMutableMap(UPDATE_PARAMS);
        mutableMap.put("applyToAll", "false");
        if (keyProfile != null) {
            mutableMap.putAll(MapsKt.mapOf(TuplesKt.to("keyProfileName", keyProfile), TuplesKt.to("listType", BBDeviceOTAController.TargetVersionType.KEY_PROFILE)));
        }
        if (configVersion != null) {
            mutableMap.putAll(MapsKt.mapOf(TuplesKt.to("deviceSettingVersion", configVersion), TuplesKt.to("terminalSettingVersion", configVersion), TuplesKt.to("listType", BBDeviceOTAController.TargetVersionType.CONFIG)));
        }
        if (firmwareVersion != null) {
            mutableMap.putAll(MapsKt.mapOf(TuplesKt.to("firmwareVersion", firmwareVersion), TuplesKt.to("listType", BBDeviceOTAController.TargetVersionType.FIRMWARE)));
        }
        return new Hashtable<>(mutableMap);
    }

    private final void handleException(Exception e) throws ReaderUpdateException {
        ReaderUpdateException.UpdateFailed updateFailed;
        CompletableDeferred<Unit> completableDeferred = this.targetVersionDeferred;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(e);
        }
        if ((e instanceof BBDeviceControllerNotSetException) || (e instanceof OTAServerURLNotSetException)) {
            updateFailed = new ReaderUpdateException.UpdateFailed("Update failed due to configuration error", e);
        } else if (e instanceof BBDeviceNotConnectedException) {
            updateFailed = new ReaderUpdateException.NotConnectedToReader("Update failed since there is no connected reader", e);
        } else if (e instanceof NoInternetConnectionException) {
            updateFailed = new ReaderUpdateException.UpdateFailedServerError("Update failed due to lack of internet connection", e);
        } else if (e instanceof TimeoutException) {
            updateFailed = new ReaderUpdateException.UpdateFailedReaderError("Reader timed out during update", e);
        } else if (e instanceof IllegalArgumentException) {
            updateFailed = new ReaderUpdateException.UpdateFailed("Attempt to install invalid configuration", e);
        } else {
            updateFailed = new ReaderUpdateException.UpdateFailed("Update failed for unknown reason", e);
        }
        this.listener.handleReaderUpdateException(updateFailed);
        throw updateFailed;
    }
}
