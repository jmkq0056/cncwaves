package com.stripe.core.readerupdate;

import android.graphics.Bitmap;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.readerupdate.RemoteUpdate;
import com.stripe.core.readerupdate.Update;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderException;
import com.stripe.jvmcore.dagger.Updates;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.config.MobileClientConfig;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.rx3.RxAwaitKt;

/* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 <2\u00020\u0001:\u0001<BG\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010¢\u0006\u0002\u0010\u0011JO\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u001c\u0010\u001c\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001dH\u0002¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\u0017H\u0002J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010'\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016JF\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00140\u00162\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00140\u00162\f\u00100\u001a\b\u0012\u0004\u0012\u0002010\u00162\f\u00102\u001a\b\u0012\u0004\u0012\u0002030\u0016H\u0002J\u0016\u00104\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@¢\u0006\u0002\u00105J2\u00106\u001a\u00020\u00172\f\u00107\u001a\b\u0012\u0004\u0012\u00020\u00190\u00162\f\u00108\u001a\b\u0012\u0004\u0012\u0002090\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@¢\u0006\u0002\u0010:J\f\u0010;\u001a\u00020\u001b*\u00020\u0019H\u0002R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;", "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "updateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "statusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "readerConnectionController", "Lcom/stripe/core/hardware/ReaderConnectionController;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/ReaderConnectionController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "awaitInstall", "Lkotlinx/coroutines/flow/Flow;", "", "updateFinishedObservable", "Lio/reactivex/rxjava3/core/Observable;", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "needsReconnect", "", "installBlock", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;", "cancel", "install", "config", "Lcom/stripe/core/readerupdate/Update$Config;", "firmware", "Lcom/stripe/core/readerupdate/Update$Firmware;", UserMetadata.KEYDATA_FILENAME, "Lcom/stripe/core/readerupdate/Update$Keys;", "settings", "Lcom/stripe/core/readerupdate/Update$Settings;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "makeUpdateObservable", "finishedObservable", "progressObservable", "updateExceptionObservable", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "statusExceptionObservable", "Lcom/stripe/hardware/status/ReaderException;", "startSession", "(Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitForReconnect", "connectObservable", "disconnectReplayObservable", "Lcom/stripe/hardware/status/DisconnectCause;", "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isShopifyMposReader", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultBbposAssetInstallProcessor implements BbposAssetInstallProcessor {
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderConnectionController readerConnectionController;
    private final Scheduler scheduler;
    private final ReactiveReaderStatusListener statusListener;
    private final ReaderUpdateController updateController;
    private final ReactiveReaderUpdateListener updateListener;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long CONNECT_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(120);
    private static final long DISCONNECT_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(120);
    private static final long CONNECT_START_DELAY_MILLIS = TimeUnit.SECONDS.toMillis(10);
    private static final long CONNECT_RETRY_QUANTUM_MILLIS = TimeUnit.SECONDS.toMillis(5);

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor", f = "BbposAssetInstallProcessor.kt", i = {}, l = {279}, m = "startSession", n = {}, s = {})
    static final class C02381 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02381(Continuation<? super C02381> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultBbposAssetInstallProcessor.this.startSession(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor", f = "BbposAssetInstallProcessor.kt", i = {0, 0, 0, 1, 1, 1, 2}, l = {WinError.ERROR_MORE_DATA, 243, 246}, m = "waitForReconnect", n = {"this", "connectObservable", OfflineStorageConstantsKt.READER, "this", "connectObservable", OfflineStorageConstantsKt.READER, "this"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0"})
    static final class C02421 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02421(Continuation<? super C02421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultBbposAssetInstallProcessor.this.waitForReconnect(null, null, null, this);
        }
    }

    public DefaultBbposAssetInstallProcessor(@Updates Scheduler scheduler, ReactiveReaderUpdateListener updateListener, ReaderUpdateController updateController, ReactiveReaderStatusListener statusListener, ReaderConnectionController readerConnectionController, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(updateController, "updateController");
        Intrinsics.checkNotNullParameter(statusListener, "statusListener");
        Intrinsics.checkNotNullParameter(readerConnectionController, "readerConnectionController");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scheduler = scheduler;
        this.updateListener = updateListener;
        this.updateController = updateController;
        this.statusListener = statusListener;
        this.readerConnectionController = readerConnectionController;
        this.logger = logger;
    }

    @Override // com.stripe.core.readerupdate.BbposAssetInstallProcessor
    public Flow<Float> install(Update.Firmware firmware, Reader reader) {
        Intrinsics.checkNotNullParameter(firmware, "firmware");
        Intrinsics.checkNotNullParameter(reader, "reader");
        return awaitInstall(this.updateListener.getReaderFirmwareUpdateObservable(), reader, true, new C02351(firmware, this, null));
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$1", f = "BbposAssetInstallProcessor.kt", i = {}, l = {60, 63}, m = "invokeSuspend", n = {}, s = {})
    static final class C02351 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Update.Firmware $firmware;
        int label;
        final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02351(Update.Firmware firmware, DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, Continuation<? super C02351> continuation) {
            super(1, continuation);
            this.$firmware = firmware;
            this.this$0 = defaultBbposAssetInstallProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02351(this.$firmware, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02351) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        
            if (com.stripe.core.hardware.updates.ReaderUpdateController.installFirmware$default(r10.this$0.updateController, r11.getVersion(), null, r10, 2, null) == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        
            if (com.stripe.core.hardware.updates.ReaderUpdateController.installFirmware$default(r10.this$0.updateController, null, ((com.stripe.core.readerupdate.RemoteUpdate.Local) r11).getHex(), r10, 1, null) == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L17
            Lf:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L17:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L60
            L1b:
                kotlin.ResultKt.throwOnFailure(r11)
                com.stripe.core.readerupdate.Update$Firmware r11 = r10.$firmware
                com.stripe.core.readerupdate.RemoteUpdate r11 = r11.getRemoteUpdate()
                boolean r1 = r11 instanceof com.stripe.core.readerupdate.RemoteUpdate.Ota
                if (r1 == 0) goto L41
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r1 = r10.this$0
                com.stripe.core.hardware.updates.ReaderUpdateController r4 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getUpdateController$p(r1)
                java.lang.String r5 = r11.getVersion()
                r7 = r10
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                r10.label = r3
                r6 = 0
                r8 = 2
                r9 = 0
                java.lang.Object r11 = com.stripe.core.hardware.updates.ReaderUpdateController.installFirmware$default(r4, r5, r6, r7, r8, r9)
                if (r11 != r0) goto L60
                goto L5f
            L41:
                boolean r1 = r11 instanceof com.stripe.core.readerupdate.RemoteUpdate.Local
                if (r1 == 0) goto L60
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r1 = r10.this$0
                com.stripe.core.hardware.updates.ReaderUpdateController r3 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getUpdateController$p(r1)
                com.stripe.core.readerupdate.RemoteUpdate$Local r11 = (com.stripe.core.readerupdate.RemoteUpdate.Local) r11
                java.lang.String r5 = r11.getHex()
                r6 = r10
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r10.label = r2
                r4 = 0
                r7 = 1
                r8 = 0
                java.lang.Object r11 = com.stripe.core.hardware.updates.ReaderUpdateController.installFirmware$default(r3, r4, r5, r6, r7, r8)
                if (r11 != r0) goto L60
            L5f:
                return r0
            L60:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02351.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.stripe.core.readerupdate.BbposAssetInstallProcessor
    public Flow<Float> install(Update.Config config, Reader reader) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(reader, "reader");
        return awaitInstall(this.updateListener.getReaderConfigUpdateObservable(), reader, reader.getNeedsReconnectAfterConfigUpdate(), new AnonymousClass2(config, this, null));
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$2", f = "BbposAssetInstallProcessor.kt", i = {}, l = {75, 78}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Update.Config $config;
        int label;
        final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Update.Config config, DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$config = config;
            this.this$0 = defaultBbposAssetInstallProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.$config, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        
            if (com.stripe.core.hardware.updates.ReaderUpdateController.installConfig$default(r10.this$0.updateController, r11.getVersion(), null, r10, 2, null) == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        
            if (com.stripe.core.hardware.updates.ReaderUpdateController.installConfig$default(r10.this$0.updateController, null, ((com.stripe.core.readerupdate.RemoteUpdate.Local) r11).getHex(), r10, 1, null) == r0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L17
            Lf:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L17:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L60
            L1b:
                kotlin.ResultKt.throwOnFailure(r11)
                com.stripe.core.readerupdate.Update$Config r11 = r10.$config
                com.stripe.core.readerupdate.RemoteUpdate r11 = r11.getRemoteUpdate()
                boolean r1 = r11 instanceof com.stripe.core.readerupdate.RemoteUpdate.Ota
                if (r1 == 0) goto L41
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r1 = r10.this$0
                com.stripe.core.hardware.updates.ReaderUpdateController r4 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getUpdateController$p(r1)
                java.lang.String r5 = r11.getVersion()
                r7 = r10
                kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
                r10.label = r3
                r6 = 0
                r8 = 2
                r9 = 0
                java.lang.Object r11 = com.stripe.core.hardware.updates.ReaderUpdateController.installConfig$default(r4, r5, r6, r7, r8, r9)
                if (r11 != r0) goto L60
                goto L5f
            L41:
                boolean r1 = r11 instanceof com.stripe.core.readerupdate.RemoteUpdate.Local
                if (r1 == 0) goto L60
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r1 = r10.this$0
                com.stripe.core.hardware.updates.ReaderUpdateController r3 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getUpdateController$p(r1)
                com.stripe.core.readerupdate.RemoteUpdate$Local r11 = (com.stripe.core.readerupdate.RemoteUpdate.Local) r11
                java.lang.String r5 = r11.getHex()
                r6 = r10
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r10.label = r2
                r4 = 0
                r7 = 1
                r8 = 0
                java.lang.Object r11 = com.stripe.core.hardware.updates.ReaderUpdateController.installConfig$default(r3, r4, r5, r6, r7, r8)
                if (r11 != r0) goto L60
            L5f:
                return r0
            L60:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.stripe.core.readerupdate.BbposAssetInstallProcessor
    public Flow<Float> install(Update.Keys keys, Reader reader) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(reader, "reader");
        return awaitInstall(this.updateListener.getReaderKeyUpdateObservable(), reader, false, new AnonymousClass3(keys, this, null));
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$3, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$3", f = "BbposAssetInstallProcessor.kt", i = {}, l = {90}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Update.Keys $keys;
        int label;
        final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Update.Keys keys, DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, Continuation<? super AnonymousClass3> continuation) {
            super(1, continuation);
            this.$keys = keys;
            this.this$0 = defaultBbposAssetInstallProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass3(this.$keys, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                RemoteUpdate remoteUpdate = this.$keys.getRemoteUpdate();
                if (remoteUpdate instanceof RemoteUpdate.Ota) {
                    this.label = 1;
                    if (this.this$0.updateController.installKeys(remoteUpdate.getVersion(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (remoteUpdate instanceof RemoteUpdate.Local) {
                    throw new IllegalStateException("Keys cannot be installed locally".toString());
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

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$4, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$install$4", f = "BbposAssetInstallProcessor.kt", i = {0}, l = {101}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
    static final class AnonymousClass4 extends SuspendLambda implements Function2<ProducerScope<? super Float>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ConfigurationHandler $configurationHandler;
        final /* synthetic */ Update.Settings $settings;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DefaultBbposAssetInstallProcessor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(ConfigurationHandler configurationHandler, Update.Settings settings, DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$configurationHandler = configurationHandler;
            this.$settings = settings;
            this.this$0 = defaultBbposAssetInstallProcessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$configurationHandler, this.$settings, this.this$0, continuation);
            anonymousClass4.L$0 = obj;
            return anonymousClass4;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Float> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ProducerScope producerScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope2 = (ProducerScope) this.L$0;
                ConfigurationHandler configurationHandler = this.$configurationHandler;
                MobileClientConfig config = this.$settings.getConfig();
                Bitmap image = this.$settings.getImage();
                final DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor = this.this$0;
                this.L$0 = producerScope2;
                this.label = 1;
                if (configurationHandler.installConfig(config, image, new Function1<Float, Unit>() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.install.4.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                        invoke(f.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f) {
                        Object obj2 = producerScope2.mo2332trySendJP2dKIU(Float.valueOf(f));
                        DefaultBbposAssetInstallProcessor defaultBbposAssetInstallProcessor2 = defaultBbposAssetInstallProcessor;
                        if (obj2 instanceof ChannelResult.Closed) {
                            Throwable thM2347exceptionOrNullimpl = ChannelResult.m2347exceptionOrNullimpl(obj2);
                            if (thM2347exceptionOrNullimpl != null) {
                                defaultBbposAssetInstallProcessor2.logger.e("installSettings() channel closed with exception", thM2347exceptionOrNullimpl, new Pair[0]);
                            } else {
                                defaultBbposAssetInstallProcessor2.logger.e("installSettings() channel closed normally", new ClosedSendChannelException("installSettings() channel closed normally"), new Pair[0]);
                            }
                        }
                        ChannelResult.m2353isSuccessimpl(obj2);
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                producerScope = producerScope2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                producerScope = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.core.readerupdate.BbposAssetInstallProcessor
    public Flow<Float> install(Update.Settings settings, ConfigurationHandler configurationHandler) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        return FlowKt.callbackFlow(new AnonymousClass4(configurationHandler, settings, this, null));
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$awaitInstall$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$awaitInstall$1", f = "BbposAssetInstallProcessor.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3}, l = {142, WinError.ERROR_IS_JOIN_PATH, 171, WinError.ERROR_AUTODATASEG_EXCEEDS_64k}, m = "invokeSuspend", n = {"$this$flow", "updateObservable", "updateDisposable", "disconnectReplayObservable", "disconnectDisposable", "$this$flow", "updateObservable", "updateDisposable", "disconnectReplayObservable", "disconnectDisposable", "$this$flow", "updateDisposable", "disconnectReplayObservable", "disconnectDisposable", "cancellationException", "disconnectDisposable", "updateResult"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$5", "L$0", "L$1"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> $installBlock;
        final /* synthetic */ boolean $needsReconnect;
        final /* synthetic */ Reader $reader;
        final /* synthetic */ Observable<Unit> $updateFinishedObservable;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Observable<Unit> observable, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Reader reader, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$updateFinishedObservable = observable;
            this.$installBlock = function1;
            this.$reader = reader;
            this.$needsReconnect = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = DefaultBbposAssetInstallProcessor.this.new AnonymousClass1(this.$updateFinishedObservable, this.$installBlock, this.$reader, this.$needsReconnect, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Float> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:0|2|(1:(1:(1:(1:(6:8|92|9|79|84|85)(2:13|14))(16:15|86|16|50|55|(3:94|58|(1:60)(1:61))|65|42|70|95|71|(1:76)|75|79|84|85))(7:20|90|21|35|40|(7:42|70|95|71|(2:73|76)(0)|84|85)(3:97|43|(4:45|98|46|(12:49|50|55|(0)|65|42|70|95|71|(0)(0)|84|85))(1:68))|78))(1:25))(3:26|(1:29)|78)|30|88|31|(4:34|35|40|(0)(0))|78) */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0141, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0142, code lost:
        
            r4 = r8;
            r8 = r9;
            r9 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0222, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r0, r8, r14) != r1) goto L75;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x015d A[PHI: r5 r8 r9 r15
          0x015d: PHI (r5v12 io.reactivex.rxjava3.disposables.Disposable) = 
          (r5v7 io.reactivex.rxjava3.disposables.Disposable)
          (r5v11 io.reactivex.rxjava3.disposables.Disposable)
          (r5v13 io.reactivex.rxjava3.disposables.Disposable)
         binds: [B:41:0x015b, B:69:0x01e0, B:65:0x01d2] A[DONT_GENERATE, DONT_INLINE]
          0x015d: PHI (r8v14 io.reactivex.rxjava3.observables.ConnectableObservable<com.stripe.hardware.status.DisconnectCause>) = 
          (r8v9 io.reactivex.rxjava3.observables.ConnectableObservable<com.stripe.hardware.status.DisconnectCause>)
          (r8v13 io.reactivex.rxjava3.observables.ConnectableObservable<com.stripe.hardware.status.DisconnectCause>)
          (r8v17 io.reactivex.rxjava3.observables.ConnectableObservable<com.stripe.hardware.status.DisconnectCause>)
         binds: [B:41:0x015b, B:69:0x01e0, B:65:0x01d2] A[DONT_GENERATE, DONT_INLINE]
          0x015d: PHI (r9v14 io.reactivex.rxjava3.disposables.Disposable) = 
          (r9v9 io.reactivex.rxjava3.disposables.Disposable)
          (r9v13 io.reactivex.rxjava3.disposables.Disposable)
          (r9v16 io.reactivex.rxjava3.disposables.Disposable)
         binds: [B:41:0x015b, B:69:0x01e0, B:65:0x01d2] A[DONT_GENERATE, DONT_INLINE]
          0x015d: PHI (r15v26 java.lang.Object) = (r15v8 java.lang.Object), (r15v25 java.lang.Object), (r15v37 java.lang.Object) binds: [B:41:0x015b, B:69:0x01e0, B:65:0x01d2] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01fb A[Catch: all -> 0x022c, TryCatch #5 {all -> 0x022c, blocks: (B:71:0x01f5, B:73:0x01fb, B:76:0x0204), top: B:95:0x01f5 }] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0204 A[Catch: all -> 0x022c, TRY_LEAVE, TryCatch #5 {all -> 0x022c, blocks: (B:71:0x01f5, B:73:0x01fb, B:76:0x0204), top: B:95:0x01f5 }] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 582
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Flow<Float> awaitInstall(Observable<Unit> updateFinishedObservable, Reader reader, boolean needsReconnect, Function1<? super Continuation<? super Unit>, ? extends Object> installBlock) {
        return FlowKt.flow(new AnonymousClass1(updateFinishedObservable, installBlock, reader, needsReconnect, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ba, code lost:
    
        if (kotlinx.coroutines.TimeoutKt.withTimeout(r8, r15, r0) != r1) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForReconnect(io.reactivex.rxjava3.core.Observable<com.stripe.core.hardware.Reader> r12, io.reactivex.rxjava3.core.Observable<com.stripe.hardware.status.DisconnectCause> r13, com.stripe.core.hardware.Reader r14, kotlin.coroutines.Continuation<? super kotlin.Unit> r15) throws com.stripe.core.hardware.updates.ReaderUpdateException.UpdateFailedAfterCancellationReaderError {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.waitForReconnect(io.reactivex.rxjava3.core.Observable, io.reactivex.rxjava3.core.Observable, com.stripe.core.hardware.Reader, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/status/DisconnectCause;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$2", f = "BbposAssetInstallProcessor.kt", i = {}, l = {235}, m = "invokeSuspend", n = {}, s = {})
    static final class C02432 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super DisconnectCause>, Object> {
        final /* synthetic */ Observable<DisconnectCause> $disconnectReplayObservable;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02432(Observable<DisconnectCause> observable, Continuation<? super C02432> continuation) {
            super(2, continuation);
            this.$disconnectReplayObservable = observable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02432(this.$disconnectReplayObservable, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super DisconnectCause> continuation) {
            return ((C02432) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object objAwaitFirst = RxAwaitKt.awaitFirst(this.$disconnectReplayObservable, this);
            return objAwaitFirst == coroutine_suspended ? coroutine_suspended : objAwaitFirst;
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3", f = "BbposAssetInstallProcessor.kt", i = {0, 2}, l = {256, WinUser.WM_SYSKEYUP, 265}, m = "invokeSuspend", n = {"combinedObservable", "combinedObservable"}, s = {"L$0", "L$0"})
    static final class C02443 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Observable<Reader> $connectObservable;
        final /* synthetic */ Reader $reader;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02443(Observable<Reader> observable, Reader reader, Continuation<? super C02443> continuation) {
            super(2, continuation);
            this.$connectObservable = observable;
            this.$reader = reader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultBbposAssetInstallProcessor.this.new C02443(this.$connectObservable, this.$reader, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02443) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x009e, code lost:
        
            if (r11.this$0.startSession(r11.$reader, r11) == r0) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00b3, code lost:
        
            if (kotlinx.coroutines.DelayKt.delay(com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.CONNECT_RETRY_QUANTUM_MILLIS, r11) == r0) goto L29;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00b3 -> B:8:0x0019). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L30
                if (r1 == r5) goto L28
                if (r1 == r4) goto L23
                if (r1 != r3) goto L1b
                java.lang.Object r1 = r11.L$0
                io.reactivex.rxjava3.core.Observable r1 = (io.reactivex.rxjava3.core.Observable) r1
                kotlin.ResultKt.throwOnFailure(r12)
            L19:
                r12 = r1
                goto L54
            L1b:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L23:
                kotlin.ResultKt.throwOnFailure(r12)
                goto La1
            L28:
                java.lang.Object r1 = r11.L$0
                io.reactivex.rxjava3.core.Observable r1 = (io.reactivex.rxjava3.core.Observable) r1
                kotlin.ResultKt.throwOnFailure(r12)
                goto L78
            L30:
                kotlin.ResultKt.throwOnFailure(r12)
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.this
                com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getStatusListener$p(r12)
                io.reactivex.rxjava3.core.Observable r12 = r12.getReaderDisconnectObservable()
                io.reactivex.rxjava3.core.ObservableSource r12 = (io.reactivex.rxjava3.core.ObservableSource) r12
                io.reactivex.rxjava3.core.Observable<com.stripe.core.hardware.Reader> r1 = r11.$connectObservable
                io.reactivex.rxjava3.core.ObservableSource r1 = (io.reactivex.rxjava3.core.ObservableSource) r1
                io.reactivex.rxjava3.core.Observable r12 = io.reactivex.rxjava3.core.Observable.merge(r12, r1)
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1<T, R> r1 = new io.reactivex.rxjava3.functions.Function() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1
                    static {
                        /*
                            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1 r0 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1
                            r0.<init>()
                            
                            // error: 0x0005: SPUT (r0 I:com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1<T, R>) com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1.INSTANCE com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1.<clinit>():void");
                    }

                    {
                        /*
                            r0 = this;
                            r0.<init>()
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1.<init>():void");
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    public /* bridge */ /* synthetic */ java.lang.Object apply(java.lang.Object r1) {
                        /*
                            r0 = this;
                            io.reactivex.rxjava3.core.ObservableSource r1 = r0.apply(r1)
                            return r1
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1.apply(java.lang.Object):java.lang.Object");
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    public final io.reactivex.rxjava3.core.ObservableSource<? extends java.lang.Boolean> apply(java.lang.Object r2) {
                        /*
                            r1 = this;
                            java.lang.String r0 = "result"
                            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                            boolean r2 = r2 instanceof com.stripe.core.hardware.Reader
                            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                            io.reactivex.rxjava3.core.Observable r2 = io.reactivex.rxjava3.core.Observable.just(r2)
                            io.reactivex.rxjava3.core.ObservableSource r2 = (io.reactivex.rxjava3.core.ObservableSource) r2
                            return r2
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1.apply(java.lang.Object):io.reactivex.rxjava3.core.ObservableSource");
                    }
                }
                io.reactivex.rxjava3.functions.Function r1 = (io.reactivex.rxjava3.functions.Function) r1
                io.reactivex.rxjava3.core.Observable r12 = r12.flatMap(r1)
                java.lang.String r1 = "flatMap(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            L54:
                com.stripe.core.hardware.reactive.RxJavaHelper r1 = com.stripe.core.hardware.reactive.RxJavaHelper.INSTANCE
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r6 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.this
                io.reactivex.rxjava3.core.Scheduler r6 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getScheduler$p(r6)
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1 r7 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r8 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.this
                com.stripe.core.hardware.Reader r9 = r11.$reader
                r7.<init>(r8, r9, r2)
                kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
                r8 = r11
                kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
                r11.L$0 = r12
                r11.label = r5
                java.lang.Object r1 = r1.awaitFirstWithBlock(r12, r6, r7, r8)
                if (r1 != r0) goto L75
                goto Lb5
            L75:
                r10 = r1
                r1 = r12
                r12 = r10
            L78:
                java.lang.String r6 = "awaitFirstWithBlock(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r6)
                java.lang.Boolean r12 = (java.lang.Boolean) r12
                boolean r12 = r12.booleanValue()
                if (r12 == 0) goto La4
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.this
                com.stripe.core.hardware.Reader r1 = r11.$reader
                boolean r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$isShopifyMposReader(r12, r1)
                if (r12 == 0) goto La1
                com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.this
                com.stripe.core.hardware.Reader r1 = r11.$reader
                r3 = r11
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r11.L$0 = r2
                r11.label = r4
                java.lang.Object r12 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$startSession(r12, r1, r3)
                if (r12 != r0) goto La1
                goto Lb5
            La1:
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            La4:
                long r6 = com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.access$getCONNECT_RETRY_QUANTUM_MILLIS$cp()
                r12 = r11
                kotlin.coroutines.Continuation r12 = (kotlin.coroutines.Continuation) r12
                r11.L$0 = r1
                r11.label = r3
                java.lang.Object r12 = kotlinx.coroutines.DelayKt.delay(r6, r12)
                if (r12 != r0) goto L19
            Lb5:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02443.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startSession(com.stripe.core.hardware.Reader r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02381
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$1 r0 = (com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02381) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$1 r0 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L77
        L2a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L32:
            kotlin.ResultKt.throwOnFailure(r9)
            com.stripe.core.hardware.reactive.RxJavaHelper r9 = com.stripe.core.hardware.reactive.RxJavaHelper.INSTANCE
            r2 = 2
            io.reactivex.rxjava3.core.ObservableSource[] r2 = new io.reactivex.rxjava3.core.ObservableSource[r2]
            com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r4 = r7.statusListener
            io.reactivex.rxjava3.core.Observable r4 = r4.getSessionInitializedObservable()
            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$2<T, R> r5 = new io.reactivex.rxjava3.functions.Function() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.startSession.2
                static {
                    /*
                        com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$2 r0 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$2<T, R>) com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.startSession.2.INSTANCE com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02392.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02392.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        kotlin.Unit r1 = (kotlin.Unit) r1
                        java.lang.Object r1 = r0.m469applyIoAF18A(r1)
                        kotlin.Result r1 = kotlin.Result.m816boximpl(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02392.apply(java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: renamed from: apply-IoAF18A, reason: not valid java name */
                public final java.lang.Object m469applyIoAF18A(kotlin.Unit r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
                        kotlin.Unit r2 = kotlin.Unit.INSTANCE
                        java.lang.Object r2 = kotlin.Result.m817constructorimpl(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02392.m469applyIoAF18A(kotlin.Unit):java.lang.Object");
                }
            }
            io.reactivex.rxjava3.functions.Function r5 = (io.reactivex.rxjava3.functions.Function) r5
            io.reactivex.rxjava3.core.Observable r4 = r4.map(r5)
            r5 = 0
            r2[r5] = r4
            com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener r4 = r7.statusListener
            io.reactivex.rxjava3.core.Observable r4 = r4.getSessionExceptionObservable()
            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$3<T, R> r5 = new io.reactivex.rxjava3.functions.Function() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.startSession.3
                static {
                    /*
                        com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$3 r0 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$3
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$3<T, R>) com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.startSession.3.INSTANCE com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$3
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02403.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02403.<init>():void");
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ java.lang.Object apply(java.lang.Object r1) {
                    /*
                        r0 = this;
                        com.stripe.hardware.status.ReaderException r1 = (com.stripe.hardware.status.ReaderException) r1
                        java.lang.Object r1 = r0.m470applyIoAF18A(r1)
                        kotlin.Result r1 = kotlin.Result.m816boximpl(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02403.apply(java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: renamed from: apply-IoAF18A, reason: not valid java name */
                public final java.lang.Object m470applyIoAF18A(com.stripe.hardware.status.ReaderException r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
                        java.lang.Throwable r2 = (java.lang.Throwable) r2
                        java.lang.Object r2 = kotlin.ResultKt.createFailure(r2)
                        java.lang.Object r2 = kotlin.Result.m817constructorimpl(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.C02403.m470applyIoAF18A(com.stripe.hardware.status.ReaderException):java.lang.Object");
                }
            }
            io.reactivex.rxjava3.functions.Function r5 = (io.reactivex.rxjava3.functions.Function) r5
            io.reactivex.rxjava3.core.Observable r4 = r4.map(r5)
            r2[r3] = r4
            io.reactivex.rxjava3.core.Observable r2 = io.reactivex.rxjava3.core.Observable.ambArray(r2)
            java.lang.String r4 = "ambArray(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            io.reactivex.rxjava3.core.Scheduler r4 = r7.scheduler
            com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$4 r5 = new com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$4
            r6 = 0
            r5.<init>(r8, r6)
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5
            r0.label = r3
            java.lang.Object r9 = r9.awaitFirstWithBlock(r2, r4, r5, r0)
            if (r9 != r1) goto L77
            return r1
        L77:
            java.lang.String r8 = "awaitFirstWithBlock(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r8)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.getValue()
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.startSession(com.stripe.core.hardware.Reader, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$4, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$startSession$4", f = "BbposAssetInstallProcessor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02414 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Reader $reader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02414(Reader reader, Continuation<? super C02414> continuation) {
            super(1, continuation);
            this.$reader = reader;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return DefaultBbposAssetInstallProcessor.this.new C02414(this.$reader, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02414) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                DefaultBbposAssetInstallProcessor.this.readerConnectionController.startSession(this.$reader);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Float> makeUpdateObservable(Observable<Unit> finishedObservable, Observable<Float> progressObservable, Observable<ReaderUpdateException> updateExceptionObservable, Observable<ReaderException> statusExceptionObservable) {
        Observable observableTakeWhile = Observable.merge(progressObservable, finishedObservable, updateExceptionObservable, statusExceptionObservable).flatMap(new Function() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.makeUpdateObservable.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final ObservableSource<? extends Object> apply(Object it) {
                Observable observableError;
                Intrinsics.checkNotNullParameter(it, "it");
                if (it instanceof Throwable) {
                    observableError = Observable.error((Throwable) it);
                    Intrinsics.checkNotNull(observableError);
                } else if (it instanceof Float) {
                    observableError = Observable.just(it);
                    Intrinsics.checkNotNull(observableError);
                } else if (it instanceof Unit) {
                    Observable.just(Float.valueOf(1.0f));
                    observableError = Observable.just(Unit.INSTANCE);
                    Intrinsics.checkNotNull(observableError);
                } else {
                    observableError = Observable.error(new ReaderUpdateException.UnexpectedError("Unexpected error", null, 2, null));
                    Intrinsics.checkNotNull(observableError);
                }
                return observableError;
            }
        }).takeWhile(new Predicate() { // from class: com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor.makeUpdateObservable.2
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it instanceof Float;
            }
        });
        Intrinsics.checkNotNullExpressionValue(observableTakeWhile, "takeWhile(...)");
        Observable<Float> observableOfType = observableTakeWhile.ofType(Float.class);
        Intrinsics.checkNotNullExpressionValue(observableOfType, "ofType(R::class.java)");
        return observableOfType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancel() {
        this.updateController.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isShopifyMposReader(Reader reader) {
        if (reader instanceof Reader.BluetoothReader.Chipper1xReader ? true : reader instanceof Reader.BluetoothReader.WisecubeReader ? true : reader instanceof Reader.UsbReader.WisecubeReader) {
            return true;
        }
        if (reader instanceof Reader.BluetoothReader.Chipper2xReader ? true : reader instanceof Reader.BluetoothReader.StripeM2Reader ? true : reader instanceof Reader.BluetoothReader.Wisepad3Reader ? true : reader instanceof Reader.SerialReader ? true : reader instanceof Reader.UsbReader.Chipper2xReader ? true : reader instanceof Reader.UsbReader.StripeM2Reader ? true : reader instanceof Reader.UsbReader.UnspecifiedUsbReader ? true : reader instanceof Reader.UsbReader.Wisepad3Reader ? true : reader instanceof Reader.UsbReader.Wisepad3SReader) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$Companion;", "", "()V", "CONNECT_RETRY_QUANTUM_MILLIS", "", "CONNECT_START_DELAY_MILLIS", "CONNECT_TIMEOUT_MILLIS", "getCONNECT_TIMEOUT_MILLIS$readerupdate_release$annotations", "getCONNECT_TIMEOUT_MILLIS$readerupdate_release", "()J", "DISCONNECT_TIMEOUT_MILLIS", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getCONNECT_TIMEOUT_MILLIS$readerupdate_release$annotations() {
        }

        private Companion() {
        }

        public final long getCONNECT_TIMEOUT_MILLIS$readerupdate_release() {
            return DefaultBbposAssetInstallProcessor.CONNECT_TIMEOUT_MILLIS;
        }
    }
}
