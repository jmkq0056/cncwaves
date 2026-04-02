package com.stripe.core.readerupdate;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.readerupdate.Update;
import com.stripe.core.updater.Applicator;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.sun.jna.platform.win32.WinError;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposApplicator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u0000 -2\u0018\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001j\u0002`\u0005:\u0001-BU\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017¢\u0006\u0002\u0010\u0018J\u001c\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001f\u001a\u00020\u0002H\u0096@¢\u0006\u0002\u0010 J.\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010*\u001a\u00020#*\u00020\u00022\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020#H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\u001a*\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006."}, d2 = {"Lcom/stripe/core/readerupdate/BbposApplicatorImpl;", "Lcom/stripe/core/updater/Applicator;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "Lcom/stripe/core/readerupdate/BbposApplicator;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerProvider", "Ljavax/inject/Provider;", "Lcom/stripe/core/hardware/Reader;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "bbposAssetInstallProcessor", "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "weight", "", "Lcom/stripe/core/readerupdate/Update;", "getWeight", "(Lcom/stripe/core/readerupdate/Update;)I", "apply", "image", "(Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitProgessStatus", "curProgress", "", "asset", "assetIndex", "getCancellationException", "Ljava/lang/Exception;", "isAllUpdatesInstalled", "", "installProgress", FirebaseAnalytics.Param.INDEX, "progress", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposApplicatorImpl implements Applicator<UpdatePackage, Flow<? extends ProgressStatus>> {
    public static final String IDENTIFIER = "update_operation";
    private final BbposAssetInstallProcessor bbposAssetInstallProcessor;
    private final ConfigurationHandler configurationHandler;
    private final DeviceInfoRepository deviceInfoRepository;
    private final EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider;
    private final CoroutineDispatcher io;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final Provider<Reader> readerProvider;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long CONNECT_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(120);

    public BbposApplicatorImpl(CoroutineDispatcher io2, Provider<Reader> readerProvider, ConfigurationHandler configurationHandler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, BbposAssetInstallProcessor bbposAssetInstallProcessor, DeviceInfoRepository deviceInfoRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(bbposAssetInstallProcessor, "bbposAssetInstallProcessor");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.io = io2;
        this.readerProvider = readerProvider;
        this.configurationHandler = configurationHandler;
        this.embeddedSoftwareVersionProvider = embeddedSoftwareVersionProvider;
        this.bbposAssetInstallProcessor = bbposAssetInstallProcessor;
        this.deviceInfoRepository = deviceInfoRepository;
        this.logger = logger;
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposApplicator.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/core/readerupdate/ProgressStatus;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2", f = "BbposApplicator.kt", i = {0, 0, 0, 2, 2, 2}, l = {46, 49, 112, WinError.ERROR_SEEK_ON_DEVICE}, m = "invokeSuspend", n = {"$this$flow", "update", "i", "$this$flow", "update", "i"}, s = {"L$0", "L$2", "I$1", "L$0", "L$2", "I$1"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<FlowCollector<? super ProgressStatus>, Continuation<? super Unit>, Object> {
        final /* synthetic */ UpdatePackage $image;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ BbposApplicatorImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(UpdatePackage updatePackage, BbposApplicatorImpl bbposApplicatorImpl, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$image = updatePackage;
            this.this$0 = bbposApplicatorImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$image, this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ProgressStatus> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x00d0, code lost:
        
            if (r13.emit(new com.stripe.core.readerupdate.ProgressStatus.Error(r11, new com.stripe.core.hardware.updates.ReaderUpdateException.NotConnectedToReader("Not connected to reader", null, r5, null)), r21) == r2) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0236, code lost:
        
            if (kotlinx.coroutines.flow.FlowKt.emitAll(r13, kotlinx.coroutines.flow.FlowKt.flatMapConcat(r0, new com.stripe.core.readerupdate.BbposApplicatorImpl.AnonymousClass2.AnonymousClass1(r21.this$0, r17, r18, r21.$image, null)), r21) == r2) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x02e3, code lost:
        
            if (r13.emit(new com.stripe.core.readerupdate.ProgressStatus.Error(r11, r0), r21) != r2) goto L78;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00d7 A[Catch: all -> 0x003f, UpdateFailedAfterCancellationReaderError -> 0x0042, CancellationException -> 0x0045, TRY_ENTER, TryCatch #1 {UpdateFailedAfterCancellationReaderError -> 0x0042, blocks: (B:12:0x0037, B:57:0x023a, B:38:0x00d7, B:40:0x0127, B:50:0x020a, B:52:0x0218, B:54:0x021d, B:41:0x0159, B:43:0x015d, B:44:0x018f, B:46:0x0193, B:47:0x01c4, B:49:0x01c8, B:73:0x0296, B:74:0x029b), top: B:86:0x0037 }] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0333  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0236 -> B:14:0x003b). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r22) throws java.lang.Exception {
            /*
                Method dump skipped, instruction units count: 822
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.BbposApplicatorImpl.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: BbposApplicator.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "stepProgress", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2$1", f = "BbposApplicator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Float, Continuation<? super Flow<? extends ProgressStatus>>, Object> {
            final /* synthetic */ int $i;
            final /* synthetic */ UpdatePackage $image;
            final /* synthetic */ Update $update;
            /* synthetic */ float F$0;
            int label;
            final /* synthetic */ BbposApplicatorImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(BbposApplicatorImpl bbposApplicatorImpl, Update update, int i, UpdatePackage updatePackage, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = bbposApplicatorImpl;
                this.$update = update;
                this.$i = i;
                this.$image = updatePackage;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$update, this.$i, this.$image, continuation);
                anonymousClass1.F$0 = ((Number) obj).floatValue();
                return anonymousClass1;
            }

            public final Object invoke(float f, Continuation<? super Flow<? extends ProgressStatus>> continuation) {
                return ((AnonymousClass1) create(Float.valueOf(f), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Float f, Continuation<? super Flow<? extends ProgressStatus>> continuation) {
                return invoke(f.floatValue(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    return this.this$0.emitProgessStatus(this.F$0, this.$update, this.$i, this.$image);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // com.stripe.core.updater.Applicator
    public Object apply(UpdatePackage updatePackage, Continuation<? super Flow<? extends ProgressStatus>> continuation) {
        return FlowKt.flow(new AnonymousClass2(updatePackage, this, null));
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.BbposApplicatorImpl$emitProgessStatus$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposApplicator.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/core/readerupdate/ProgressStatus;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.BbposApplicatorImpl$emitProgessStatus$1", f = "BbposApplicator.kt", i = {0}, l = {WinError.ERROR_SYSTEM_TRACE, WinError.ERROR_TOO_MANY_MUXWAITERS}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super ProgressStatus>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Update $asset;
        final /* synthetic */ int $assetIndex;
        final /* synthetic */ float $curProgress;
        final /* synthetic */ UpdatePackage $image;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UpdatePackage updatePackage, int i, float f, Update update, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$image = updatePackage;
            this.$assetIndex = i;
            this.$curProgress = f;
            this.$asset = update;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = BbposApplicatorImpl.this.new AnonymousClass1(this.$image, this.$assetIndex, this.$curProgress, this.$asset, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ProgressStatus> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0064, code lost:
        
            if (r1.emit(new com.stripe.core.readerupdate.ProgressStatus.Success(r7.$asset), r7) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r8)
                goto L67
            L12:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1a:
                java.lang.Object r1 = r7.L$0
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L49
            L22:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.L$0
                r1 = r8
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                com.stripe.core.readerupdate.BbposApplicatorImpl r8 = com.stripe.core.readerupdate.BbposApplicatorImpl.this
                com.stripe.core.readerupdate.UpdatePackage r4 = r7.$image
                int r5 = r7.$assetIndex
                float r6 = r7.$curProgress
                float r8 = com.stripe.core.readerupdate.BbposApplicatorImpl.access$installProgress(r8, r4, r5, r6)
                com.stripe.core.readerupdate.ProgressStatus$Progress r4 = new com.stripe.core.readerupdate.ProgressStatus$Progress
                r4.<init>(r8)
                r8 = r7
                kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
                r7.L$0 = r1
                r7.label = r3
                java.lang.Object r8 = r1.emit(r4, r8)
                if (r8 != r0) goto L49
                goto L66
            L49:
                float r8 = r7.$curProgress
                r3 = 1065353216(0x3f800000, float:1.0)
                int r8 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
                if (r8 < 0) goto L67
                com.stripe.core.readerupdate.ProgressStatus$Success r8 = new com.stripe.core.readerupdate.ProgressStatus$Success
                com.stripe.core.readerupdate.Update r3 = r7.$asset
                r8.<init>(r3)
                r3 = r7
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r4 = 0
                r7.L$0 = r4
                r7.label = r2
                java.lang.Object r8 = r1.emit(r8, r3)
                if (r8 != r0) goto L67
            L66:
                return r0
            L67:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.BbposApplicatorImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Flow<ProgressStatus> emitProgessStatus(float curProgress, Update asset, int assetIndex, UpdatePackage image) {
        return FlowKt.flow(new AnonymousClass1(image, assetIndex, curProgress, asset, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Exception getCancellationException(boolean isAllUpdatesInstalled) {
        if (isAllUpdatesInstalled) {
            return new CancellationException("Installation cancelled. Skipping remaining updates.");
        }
        return new CancellationFailedException("Cancellation was requested, but all updates were installed anyways.");
    }

    private final int getWeight(Update update) {
        if (update instanceof Update.Firmware) {
            return 65;
        }
        if (update instanceof Update.Config) {
            return 30;
        }
        if (update instanceof Update.Settings) {
            return 3;
        }
        if (update instanceof Update.Keys) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float installProgress(UpdatePackage updatePackage, int i, float f) {
        Iterator<Update> it = updatePackage.iterator();
        int weight = 0;
        int weight2 = 0;
        while (it.hasNext()) {
            weight2 += getWeight(it.next());
        }
        float f2 = weight2;
        Iterator<T> it2 = updatePackage.subList(0, i).iterator();
        while (it2.hasNext()) {
            weight += getWeight((Update) it2.next());
        }
        float f3 = weight / f2;
        return (f3 * (1.0f - f)) + (((getWeight(updatePackage.get(i)) / f2) + f3) * f);
    }

    /* JADX INFO: compiled from: BbposApplicator.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/core/readerupdate/BbposApplicatorImpl$Companion;", "", "()V", "CONNECT_TIMEOUT_MILLIS", "", "getCONNECT_TIMEOUT_MILLIS$readerupdate_release$annotations", "getCONNECT_TIMEOUT_MILLIS$readerupdate_release", "()J", "IDENTIFIER", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getCONNECT_TIMEOUT_MILLIS$readerupdate_release$annotations() {
        }

        private Companion() {
        }

        public final long getCONNECT_TIMEOUT_MILLIS$readerupdate_release() {
            return BbposApplicatorImpl.CONNECT_TIMEOUT_MILLIS;
        }
    }
}
