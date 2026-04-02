package com.stripe.stripeterminal.internal.common.log;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent;
import com.sun.jna.platform.win32.WinError;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.rx3.RxConvertKt;

/* JADX INFO: compiled from: DefaultMposReaderEventLogger.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 %2\u00020\u0001:\u0001%B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0002J\b\u0010\u001e\u001a\u00020\u0019H\u0016J\"\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\f*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f2\u0006\u0010!\u001a\u00020\"H\u0002J\"\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\f*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f2\u0006\u0010!\u001a\u00020\"H\u0002R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006&"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;", "reactiveReaderStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "structuredEventLogger", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;)V", "connectAndDisconnectEvents", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", "eventStream", "getEventStream", "()Lkotlinx/coroutines/flow/Flow;", "loggingJob", "Lkotlinx/coroutines/Job;", "readerInfos", "Lcom/stripe/hardware/status/ReaderInfo;", "getReaderInfos", "getTerminalStatusManager", "()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "dispose", "", "hasBatteryLevelChangedSignificantly", "", "old", "new", "init", "batteryEventStream", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "coinCellVoltageEventStream", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultMposReaderEventLogger implements MposReaderEventLogger {
    private static final float BATTERY_LEVEL_CHANGE_THRESHOLD = 0.05f;
    public static final long BATTERY_UPDATE_DEBOUNCE_MILLIS = 30000;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String LOGGER_NAME = "MposReaderEventLogger";
    private final Flow<MposReaderLogEvent> connectAndDisconnectEvents;
    private Job loggingJob;
    private final ReactiveReaderStatusListener reactiveReaderStatusListener;
    private final CoroutineScope scope;
    private final StructuredEventLogger structuredEventLogger;
    private final TerminalStatusManager terminalStatusManager;

    public DefaultMposReaderEventLogger(ReactiveReaderStatusListener reactiveReaderStatusListener, TerminalStatusManager terminalStatusManager, CoroutineScope scope, StructuredEventLogger structuredEventLogger) {
        Intrinsics.checkNotNullParameter(reactiveReaderStatusListener, "reactiveReaderStatusListener");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(structuredEventLogger, "structuredEventLogger");
        this.reactiveReaderStatusListener = reactiveReaderStatusListener;
        this.terminalStatusManager = terminalStatusManager;
        this.scope = scope;
        this.structuredEventLogger = structuredEventLogger;
        final Flow<Reader> readerConnectedFlow = terminalStatusManager.getReaderConnectedFlow();
        final Flow<Pair<Reader, DisconnectReason>> readerDisconnectedFlow = terminalStatusManager.getReaderDisconnectedFlow();
        this.connectAndDisconnectEvents = FlowKt.merge(new Flow<MposReaderLogEvent.Connect>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4a
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        com.stripe.stripeterminal.external.models.Reader r5 = (com.stripe.stripeterminal.external.models.Reader) r5
                        com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Connect r2 = new com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Connect
                        r2.<init>(r5)
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r2, r0)
                        if (r5 != r1) goto L4a
                        return r1
                    L4a:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super MposReaderLogEvent.Connect> flowCollector, Continuation continuation) {
                Object objCollect = readerConnectedFlow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new Flow<MposReaderLogEvent.Disconnect>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r7
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r7 = r0.label
                        int r7 = r7 - r2
                        r0.label = r7
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2$2$1
                        r0.<init>(r7)
                    L19:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L56
                    L2a:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L32:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.FlowCollector r7 = r5.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        kotlin.Pair r6 = (kotlin.Pair) r6
                        java.lang.Object r2 = r6.component1()
                        com.stripe.stripeterminal.external.models.Reader r2 = (com.stripe.stripeterminal.external.models.Reader) r2
                        java.lang.Object r6 = r6.component2()
                        com.stripe.stripeterminal.external.models.DisconnectReason r6 = (com.stripe.stripeterminal.external.models.DisconnectReason) r6
                        com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Disconnect r4 = new com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Disconnect
                        r4.<init>(r2, r6)
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r4, r0)
                        if (r6 != r1) goto L56
                        return r1
                    L56:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super MposReaderLogEvent.Disconnect> flowCollector, Continuation continuation) {
                Object objCollect = readerDisconnectedFlow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        });
    }

    public final TerminalStatusManager getTerminalStatusManager() {
        return this.terminalStatusManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Flow<ReaderInfo> getReaderInfos() {
        return RxConvertKt.asFlow(this.reactiveReaderStatusListener.getReaderBatteryInfoObservable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Flow<MposReaderLogEvent.Battery> batteryEventStream(Flow<ReaderInfo> flow, final Reader reader) {
        final Flow flowFilterNotNull = FlowKt.filterNotNull(flow);
        final Flow flowDebounce = FlowKt.debounce(FlowKt.runningReduce(new Flow<Pair<? extends ReaderInfo, ? extends Long>>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L19:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L4f
                    L2a:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L32:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        com.stripe.hardware.status.ReaderInfo r7 = (com.stripe.hardware.status.ReaderInfo) r7
                        r4 = 0
                        java.lang.Long r2 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
                        kotlin.Pair r7 = kotlin.TuplesKt.to(r7, r2)
                        r0.label = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L4f
                        return r1
                    L4f:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Pair<? extends ReaderInfo, ? extends Long>> flowCollector, Continuation continuation) {
                Object objCollect = flowFilterNotNull.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new AnonymousClass2(null)), new Function1<Pair<? extends ReaderInfo, ? extends Long>, Long>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.batteryEventStream.3
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Long invoke2(Pair<ReaderInfo, Long> pair) {
                Intrinsics.checkNotNullParameter(pair, "<name for destructuring parameter 0>");
                return Long.valueOf(pair.component2().longValue());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Long invoke(Pair<? extends ReaderInfo, ? extends Long> pair) {
                return invoke2((Pair<ReaderInfo, Long>) pair);
            }
        });
        final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(new Flow<ReaderInfo>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        kotlin.Pair r5 = (kotlin.Pair) r5
                        java.lang.Object r5 = r5.component1()
                        com.stripe.hardware.status.ReaderInfo r5 = (com.stripe.hardware.status.ReaderInfo) r5
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super ReaderInfo> flowCollector, Continuation continuation) {
                Object objCollect = flowDebounce.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new Function2<ReaderInfo, ReaderInfo, Boolean>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.batteryEventStream.5
            @Override // kotlin.jvm.functions.Function2
            public final Boolean invoke(ReaderInfo old, ReaderInfo readerInfo) {
                Intrinsics.checkNotNullParameter(old, "old");
                Intrinsics.checkNotNullParameter(readerInfo, "new");
                return Boolean.valueOf(Intrinsics.areEqual(old.getBatteryLevel(), readerInfo.getBatteryLevel()) && Intrinsics.areEqual(old.isUsbConnected(), readerInfo.isUsbConnected()));
            }
        });
        return new Flow<MposReaderLogEvent.Battery>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ Reader $connectedReader$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Reader reader) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$connectedReader$inlined = reader;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r8
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r8 = r0.label
                        int r8 = r8 - r2
                        r0.label = r8
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3$2$1
                        r0.<init>(r8)
                    L19:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L54
                    L2a:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L32:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        com.stripe.hardware.status.ReaderInfo r7 = (com.stripe.hardware.status.ReaderInfo) r7
                        com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Battery r2 = new com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$Battery
                        java.lang.Float r4 = r7.getBatteryLevel()
                        java.lang.Boolean r7 = r7.isUsbConnected()
                        com.stripe.stripeterminal.external.models.Reader r5 = r6.$connectedReader$inlined
                        r2.<init>(r4, r7, r5)
                        r0.label = r3
                        java.lang.Object r7 = r8.emit(r2, r0)
                        if (r7 != r1) goto L54
                        return r1
                    L54:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super MposReaderLogEvent.Battery> flowCollector, Continuation continuation) {
                Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, reader), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultMposReaderEventLogger.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Lcom/stripe/hardware/status/ReaderInfo;", "", "accumulator", "value"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<Pair<? extends ReaderInfo, ? extends Long>, Pair<? extends ReaderInfo, ? extends Long>, Continuation<? super Pair<? extends ReaderInfo, ? extends Long>>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Pair<? extends ReaderInfo, ? extends Long> pair, Pair<? extends ReaderInfo, ? extends Long> pair2, Continuation<? super Pair<? extends ReaderInfo, ? extends Long>> continuation) {
            return invoke2((Pair<ReaderInfo, Long>) pair, (Pair<ReaderInfo, Long>) pair2, (Continuation<? super Pair<ReaderInfo, Long>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Pair<ReaderInfo, Long> pair, Pair<ReaderInfo, Long> pair2, Continuation<? super Pair<ReaderInfo, Long>> continuation) {
            AnonymousClass2 anonymousClass2 = DefaultMposReaderEventLogger.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = pair;
            anonymousClass2.L$1 = pair2;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Pair pair = (Pair) this.L$0;
            Pair pair2 = (Pair) this.L$1;
            ReaderInfo readerInfo = (ReaderInfo) pair2.component1();
            ReaderInfo readerInfo2 = (ReaderInfo) pair.component1();
            return !Intrinsics.areEqual(readerInfo2.isUsbConnected(), readerInfo.isUsbConnected()) ? pair2 : DefaultMposReaderEventLogger.this.hasBatteryLevelChangedSignificantly(readerInfo2, readerInfo) ? TuplesKt.to(readerInfo, Boxing.boxLong(30000L)) : pair;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Flow<MposReaderLogEvent> getEventStream() {
        return FlowKt.transformLatest(this.connectAndDisconnectEvents, new DefaultMposReaderEventLogger$special$$inlined$flatMapLatest$1(null, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasBatteryLevelChangedSignificantly(ReaderInfo old, ReaderInfo readerInfo) {
        Float batteryLevel = readerInfo.getBatteryLevel();
        if (batteryLevel != null) {
            float fFloatValue = batteryLevel.floatValue();
            Float batteryLevel2 = old.getBatteryLevel();
            if (Math.abs((batteryLevel2 != null ? batteryLevel2.floatValue() : 0.0f) - fFloatValue) >= BATTERY_LEVEL_CHANGE_THRESHOLD) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$init$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultMposReaderEventLogger.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$init$1", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {WinError.ERROR_JOIN_TO_SUBST}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultMposReaderEventLogger.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow eventStream = DefaultMposReaderEventLogger.this.getEventStream();
                final DefaultMposReaderEventLogger defaultMposReaderEventLogger = DefaultMposReaderEventLogger.this;
                this.label = 1;
                if (eventStream.collect(new FlowCollector() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.init.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((MposReaderLogEvent) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(final MposReaderLogEvent mposReaderLogEvent, Continuation<? super Unit> continuation) {
                        StructuredEventLogger.log$default(defaultMposReaderEventLogger.structuredEventLogger, mposReaderLogEvent.getEventData(), DefaultMposReaderEventLogger.LOGGER_NAME, null, new Function1<SearchIndices, SearchIndices>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.init.1.1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final SearchIndices invoke(SearchIndices indices) {
                                Intrinsics.checkNotNullParameter(indices, "indices");
                                String serialNumber = mposReaderLogEvent.getReader().getSerialNumber();
                                if (serialNumber == null) {
                                    serialNumber = indices.serial_number;
                                }
                                return SearchIndices.copy$default(indices, null, serialNumber, null, 0L, 0L, 0L, null, null, null, null, 1021, null);
                            }
                        }, 4, null);
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
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

    @Override // com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger
    public void init() {
        Job job = this.loggingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.loggingJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.log.MposReaderEventLogger
    public void dispose() {
        Job job = this.loggingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.loggingJob = null;
    }

    /* JADX INFO: compiled from: DefaultMposReaderEventLogger.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0016\u0010\b\u001a\u00020\t8\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0002¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$Companion;", "", "()V", "BATTERY_LEVEL_CHANGE_THRESHOLD", "", "BATTERY_UPDATE_DEBOUNCE_MILLIS", "", "getBATTERY_UPDATE_DEBOUNCE_MILLIS$common_publish$annotations", "LOGGER_NAME", "", "getLOGGER_NAME$common_publish$annotations", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getBATTERY_UPDATE_DEBOUNCE_MILLIS$common_publish$annotations() {
        }

        public static /* synthetic */ void getLOGGER_NAME$common_publish$annotations() {
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Flow<MposReaderLogEvent.CoinCellVoltage> coinCellVoltageEventStream(final Flow<ReaderInfo> flow, final Reader reader) {
        final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(new Flow<Float>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {WinError.ERROR_CHECKOUT_REQUIRED}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4f
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        com.stripe.hardware.status.ReaderInfo r5 = (com.stripe.hardware.status.ReaderInfo) r5
                        if (r5 == 0) goto L43
                        java.lang.Float r5 = r5.getCoinCellBatteryVoltage()
                        goto L44
                    L43:
                        r5 = 0
                    L44:
                        if (r5 == 0) goto L4f
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4f
                        return r1
                    L4f:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Float> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        });
        return new Flow<MposReaderLogEvent.CoinCellVoltage>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1

            /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ Reader $connectedReader$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2", f = "DefaultMposReaderEventLogger.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Reader reader) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$connectedReader$inlined = reader;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r7
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r7 = r0.label
                        int r7 = r7 - r2
                        r0.label = r7
                        goto L19
                    L14:
                        com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L19:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L50
                    L2a:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L32:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.FlowCollector r7 = r5.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        java.lang.Number r6 = (java.lang.Number) r6
                        float r6 = r6.floatValue()
                        com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$CoinCellVoltage r2 = new com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent$CoinCellVoltage
                        com.stripe.stripeterminal.external.models.Reader r4 = r5.$connectedReader$inlined
                        r2.<init>(r6, r4)
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r2, r0)
                        if (r6 != r1) goto L50
                        return r1
                    L50:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$coinCellVoltageEventStream$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super MposReaderLogEvent.CoinCellVoltage> flowCollector, Continuation continuation) {
                Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, reader), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }
}
