package com.stripe.stripeterminal.internal.common.adapter;

import androidx.core.app.NotificationCompat;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1", f = "BbposAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$DiscoverReadersOperation$discoveryJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$0;
    final /* synthetic */ BbposAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$DiscoverReadersOperation$discoveryJob$1(BbposAdapter.DiscoverReadersOperation discoverReadersOperation, BbposAdapter bbposAdapter, Continuation<? super BbposAdapter$DiscoverReadersOperation$discoveryJob$1> continuation) {
        super(2, continuation);
        this.this$0 = discoverReadersOperation;
        this.this$1 = bbposAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposAdapter$DiscoverReadersOperation$discoveryJob$1 bbposAdapter$DiscoverReadersOperation$discoveryJob$1 = new BbposAdapter$DiscoverReadersOperation$discoveryJob$1(this.this$0, this.this$1, continuation);
        bbposAdapter$DiscoverReadersOperation$discoveryJob$1.L$0 = obj;
        return bbposAdapter$DiscoverReadersOperation$discoveryJob$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$DiscoverReadersOperation$discoveryJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1", f = "BbposAdapter.kt", i = {}, l = {WinError.ERROR_OLD_WIN_VERSION}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BbposAdapter.DiscoverReadersOperation discoverReadersOperation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = discoverReadersOperation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
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
                Flow flowTransformWhile = FlowKt.transformWhile(FlowKt.m2361catch(FlowKt.distinctUntilChanged(FlowKt.merge(this.this$0.timeoutFlow, this.this$0.getDiscoveredReadersFlow())), new C00551(this.this$0, null)), new AnonymousClass2(null));
                final BbposAdapter.DiscoverReadersOperation discoverReadersOperation = this.this$0;
                this.label = 1;
                if (flowTransformWhile.collect(new FlowCollector() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation.discoveryJob.1.1.3
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((BbposAdapter.DiscoveryResult) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(BbposAdapter.DiscoveryResult discoveryResult, Continuation<? super Unit> continuation) {
                        if (discoveryResult instanceof BbposAdapter.DiscoveryResult.Success) {
                            discoverReadersOperation.listener.onUpdateDiscoveredReaders(((BbposAdapter.DiscoveryResult.Success) discoveryResult).getReaders());
                        } else if (discoveryResult instanceof BbposAdapter.DiscoveryResult.Failure) {
                            discoverReadersOperation.setException(((BbposAdapter.DiscoveryResult.Failure) discoveryResult).getException());
                        }
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

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", "e", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$1", f = "BbposAdapter.kt", i = {}, l = {1145}, m = "invokeSuspend", n = {}, s = {})
        static final class C00551 extends SuspendLambda implements Function3<FlowCollector<? super BbposAdapter.DiscoveryResult>, Throwable, Continuation<? super Unit>, Object> {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;
            final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00551(BbposAdapter.DiscoverReadersOperation discoverReadersOperation, Continuation<? super C00551> continuation) {
                super(3, continuation);
                this.this$0 = discoverReadersOperation;
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector<? super BbposAdapter.DiscoveryResult> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
                C00551 c00551 = new C00551(this.this$0, continuation);
                c00551.L$0 = flowCollector;
                c00551.L$1 = th;
                return c00551.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    Throwable th = (Throwable) this.L$1;
                    this.L$0 = null;
                    this.label = 1;
                    if (flowCollector.emit(new BbposAdapter.DiscoveryResult.Failure(this.this$0.getAsTerminalException(th)), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: BbposAdapter.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;", NotificationCompat.CATEGORY_EVENT}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2", f = "BbposAdapter.kt", i = {0}, l = {1147}, m = "invokeSuspend", n = {NotificationCompat.CATEGORY_EVENT}, s = {"L$0"})
        static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super BbposAdapter.DiscoveryResult>, BbposAdapter.DiscoveryResult, Continuation<? super Boolean>, Object> {
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
                super(3, continuation);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(FlowCollector<? super BbposAdapter.DiscoveryResult> flowCollector, BbposAdapter.DiscoveryResult discoveryResult, Continuation<? super Boolean> continuation) {
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
                anonymousClass2.L$0 = flowCollector;
                anonymousClass2.L$1 = discoveryResult;
                return anonymousClass2.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                BbposAdapter.DiscoveryResult discoveryResult;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector flowCollector = (FlowCollector) this.L$0;
                    BbposAdapter.DiscoveryResult discoveryResult2 = (BbposAdapter.DiscoveryResult) this.L$1;
                    this.L$0 = discoveryResult2;
                    this.label = 1;
                    if (flowCollector.emit(discoveryResult2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    discoveryResult = discoveryResult2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    discoveryResult = (BbposAdapter.DiscoveryResult) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxBoolean(!(discoveryResult instanceof BbposAdapter.DiscoveryResult.Failure));
            }
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, null), 3, null);
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$1, this.this$0, null), 3, null);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposAdapter.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$2", f = "BbposAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ BbposAdapter this$0;
        final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(BbposAdapter bbposAdapter, BbposAdapter.DiscoverReadersOperation discoverReadersOperation, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = bbposAdapter;
            this.this$1 = discoverReadersOperation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.this$1, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.this$0.connectionManager.startDiscovery(this.this$1.getReaderClasses(), this.this$1.getConnectionType());
                this.this$0.update();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
