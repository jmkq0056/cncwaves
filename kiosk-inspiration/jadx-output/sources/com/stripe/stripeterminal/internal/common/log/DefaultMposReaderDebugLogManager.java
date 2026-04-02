package com.stripe.stripeterminal.internal.common.log;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: DefaultMposReaderDebugLogManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerConnectionController", "Lcom/stripe/core/hardware/ReaderConnectionController;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)V", "updateDebugLoggingJob", "Lkotlinx/coroutines/Job;", "dispose", "", "init", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultMposReaderDebugLogManager implements MposReaderDebugLogManager {
    private final FeatureFlagsRepository featureFlagsRepository;
    private final ReaderConnectionController readerConnectionController;
    private final CoroutineScope scope;
    private Job updateDebugLoggingJob;

    public DefaultMposReaderDebugLogManager(FeatureFlagsRepository featureFlagsRepository, ReaderConnectionController readerConnectionController, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerConnectionController, "readerConnectionController");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.featureFlagsRepository = featureFlagsRepository;
        this.readerConnectionController = readerConnectionController;
        this.scope = scope;
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultMposReaderDebugLogManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1", f = "DefaultMposReaderDebugLogManager.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultMposReaderDebugLogManager.this.new AnonymousClass1(continuation);
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
                final Flow<ReaderFeatureFlags> featureFlagsUpdated = DefaultMposReaderDebugLogManager.this.featureFlagsRepository.getFeatureFlagsUpdated();
                Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(new Flow<Boolean>() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                    public static final class AnonymousClass2<T> implements FlowCollector {
                        final /* synthetic */ FlowCollector $this_unsafeFlow;

                        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                        /* JADX INFO: compiled from: Emitters.kt */
                        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2", f = "DefaultMposReaderDebugLogManager.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
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
                                boolean r0 = r6 instanceof com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L14
                                r0 = r6
                                com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r1 = r1 & r2
                                if (r1 == 0) goto L14
                                int r6 = r0.label
                                int r6 = r6 - r2
                                r0.label = r6
                                goto L19
                            L14:
                                com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1$2$1
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
                                com.stripe.proto.model.config.ReaderFeatureFlags r5 = (com.stripe.proto.model.config.ReaderFeatureFlags) r5
                                boolean r5 = r5.enable_bbpos_debug_logging
                                java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
                                r0.label = r3
                                java.lang.Object r5 = r6.emit(r5, r0)
                                if (r5 != r1) goto L4b
                                return r1
                            L4b:
                                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                                return r5
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager$init$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation) {
                        Object objCollect = featureFlagsUpdated.collect(new AnonymousClass2(flowCollector), continuation);
                        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                    }
                });
                final DefaultMposReaderDebugLogManager defaultMposReaderDebugLogManager = DefaultMposReaderDebugLogManager.this;
                this.label = 1;
                if (flowDistinctUntilChanged.collect(new FlowCollector() { // from class: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager.init.1.2
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit(((Boolean) obj2).booleanValue(), (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(boolean z, Continuation<? super Unit> continuation) {
                        defaultMposReaderDebugLogManager.readerConnectionController.setDebugLogEnabled(z);
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

    @Override // com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager
    public void init() {
        this.updateDebugLoggingJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager
    public void dispose() {
        Job job = this.updateDebugLoggingJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.updateDebugLoggingJob = null;
    }
}
