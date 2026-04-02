package com.stripe.core.readerupdate;

import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.updater.Monitor;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: TmsMonitor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u0002`\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¢\u0006\u0002\u0010\u000fJ\f\u0010\u0010\u001a\u00020\u0003*\u00020\u0003H\u0002J\f\u0010\u0011\u001a\u00020\u0012*\u00020\u0003H\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/core/readerupdate/TmsMonitorImpl;", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "Lcom/stripe/core/readerupdate/TmsMonitor;", "updateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)V", "start", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "filterNeedsUpdate", "needsUpdate", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TmsMonitorImpl implements Monitor<Flow<? extends ReaderVersion>> {
    private final EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider;
    private final Scheduler scheduler;
    private final ReaderUpdateController updateController;
    private final ReactiveReaderUpdateListener updateListener;

    public TmsMonitorImpl(ReaderUpdateController updateController, ReactiveReaderUpdateListener updateListener, Scheduler scheduler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider) {
        Intrinsics.checkNotNullParameter(updateController, "updateController");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        this.updateController = updateController;
        this.updateListener = updateListener;
        this.scheduler = scheduler;
        this.embeddedSoftwareVersionProvider = embeddedSoftwareVersionProvider;
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.TmsMonitorImpl$start$2, reason: invalid class name */
    /* JADX INFO: compiled from: TmsMonitor.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/core/hardware/updates/ReaderVersion;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.TmsMonitorImpl$start$2", f = "TmsMonitor.kt", i = {0}, l = {25, 34}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<FlowCollector<? super ReaderVersion>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = TmsMonitorImpl.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super ReaderVersion> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x007c, code lost:
        
            if (r1.emit(r10, r9) == r0) goto L22;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L23
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                kotlin.ResultKt.throwOnFailure(r10)
                goto L81
            L13:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1b:
                java.lang.Object r1 = r9.L$0
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L54
            L23:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.L$0
                r1 = r10
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                com.stripe.core.hardware.reactive.RxJavaHelper r10 = com.stripe.core.hardware.reactive.RxJavaHelper.INSTANCE
                com.stripe.core.readerupdate.TmsMonitorImpl r5 = com.stripe.core.readerupdate.TmsMonitorImpl.this
                com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener r5 = com.stripe.core.readerupdate.TmsMonitorImpl.access$getUpdateListener$p(r5)
                io.reactivex.rxjava3.core.Observable r5 = r5.getReaderTargetVersionObservable()
                com.stripe.core.readerupdate.TmsMonitorImpl r6 = com.stripe.core.readerupdate.TmsMonitorImpl.this
                io.reactivex.rxjava3.core.Scheduler r6 = com.stripe.core.readerupdate.TmsMonitorImpl.access$getScheduler$p(r6)
                com.stripe.core.readerupdate.TmsMonitorImpl$start$2$readerVersionOptional$1 r7 = new com.stripe.core.readerupdate.TmsMonitorImpl$start$2$readerVersionOptional$1
                com.stripe.core.readerupdate.TmsMonitorImpl r8 = com.stripe.core.readerupdate.TmsMonitorImpl.this
                r7.<init>(r8, r4)
                kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
                r8 = r9
                kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
                r9.L$0 = r1
                r9.label = r3
                java.lang.Object r10 = r10.awaitFirstWithBlock(r5, r6, r7, r8)
                if (r10 != r0) goto L54
                goto L7e
            L54:
                com.stripe.core.hardware.Optional r10 = (com.stripe.core.hardware.Optional) r10
                boolean r3 = r10 instanceof com.stripe.core.hardware.Optional.Present
                if (r3 == 0) goto L7f
                com.stripe.core.readerupdate.TmsMonitorImpl r3 = com.stripe.core.readerupdate.TmsMonitorImpl.this
                com.stripe.core.hardware.Optional$Present r10 = (com.stripe.core.hardware.Optional.Present) r10
                java.lang.Object r10 = r10.getValue()
                com.stripe.core.hardware.updates.ReaderVersion r10 = (com.stripe.core.hardware.updates.ReaderVersion) r10
                com.stripe.core.hardware.updates.ReaderVersion r10 = com.stripe.core.readerupdate.TmsMonitorImpl.access$filterNeedsUpdate(r3, r10)
                com.stripe.core.readerupdate.TmsMonitorImpl r3 = com.stripe.core.readerupdate.TmsMonitorImpl.this
                boolean r3 = com.stripe.core.readerupdate.TmsMonitorImpl.access$needsUpdate(r3, r10)
                if (r3 == 0) goto L71
                goto L72
            L71:
                r10 = r4
            L72:
                if (r10 == 0) goto L81
                r9.L$0 = r4
                r9.label = r2
                java.lang.Object r10 = r1.emit(r10, r9)
                if (r10 != r0) goto L81
            L7e:
                return r0
            L7f:
                boolean r10 = r10 instanceof com.stripe.core.hardware.Optional.Absent
            L81:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.TmsMonitorImpl.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.stripe.core.updater.Monitor
    public Object start(Continuation<? super Flow<? extends ReaderVersion>> continuation) {
        return FlowKt.flow(new AnonymousClass2(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ReaderVersion filterNeedsUpdate(ReaderVersion readerVersion) {
        String configVersion = readerVersion.getConfigVersion();
        if (Intrinsics.areEqual(configVersion, this.embeddedSoftwareVersionProvider.getConfigVersion())) {
            configVersion = null;
        }
        String firmwareVersion = readerVersion.getFirmwareVersion();
        return new ReaderVersion(configVersion, Intrinsics.areEqual(firmwareVersion, this.embeddedSoftwareVersionProvider.getFirmwareVersion()) ? null : firmwareVersion, readerVersion.getKeyProfileName(), readerVersion.getKeyProfileId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needsUpdate(ReaderVersion readerVersion) {
        return (readerVersion.getConfigVersion() == null && readerVersion.getFirmwareVersion() == null && readerVersion.getKeyProfileName() == null) ? false : true;
    }
}
