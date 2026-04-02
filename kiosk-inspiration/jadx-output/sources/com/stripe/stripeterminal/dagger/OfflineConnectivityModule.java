package com.stripe.stripeterminal.dagger;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.offlinemode.dagger.JvmOfflineModule;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository;
import com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityStatus;
import com.stripe.stripeterminal.internal.common.connectivity.StripeNetworkHealthChecker;
import com.stripe.stripeterminal.internal.common.repositories.DefaultSdkStatusRepository;
import com.stripe.stripeterminal.internal.common.repositories.SdkStatusRepository;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: OfflineConnectivityModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\ba\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;", "", "bindStripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "defaultStripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;", "bindStripeNetworkHealthChecker", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;", "defaultStripeNetworkHealthChecker", "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;", "Companion", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {JvmOfflineModule.class})
public interface OfflineConnectivityModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Binds
    StripeConnectivityRepository bindStripeConnectivityRepository(DefaultStripeConnectivityRepository defaultStripeConnectivityRepository);

    @Binds
    StripeNetworkHealthChecker bindStripeNetworkHealthChecker(DefaultStripeNetworkHealthChecker defaultStripeNetworkHealthChecker);

    /* JADX INFO: compiled from: OfflineConnectivityModule.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0014\u0010\b\u001a\u00020\t2\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;", "", "()V", "provideNetworkStatusFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "stripeConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "provideSdkStatusRepository", "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;", "embeddedAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "provideStripeNetworkStatus", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @Offline
        @Provides
        public final Flow<NetworkStatus> provideNetworkStatusFlow(StripeConnectivityRepository stripeConnectivityRepository) {
            Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
            final StateFlow<StripeConnectivityStatus> stateFlowCurrentState = stripeConnectivityRepository.currentState();
            return new Flow<NetworkStatus>() { // from class: com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2", f = "OfflineConnectivityModule.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
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
                            boolean r0 = r6 instanceof com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r6
                            com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r6 = r0.label
                            int r6 = r6 - r2
                            r0.label = r6
                            goto L19
                        L14:
                            com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1$2$1
                            r0.<init>(r6)
                        L19:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L49
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
                            com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityStatus r5 = (com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityStatus) r5
                            com.stripe.stripeterminal.external.models.NetworkStatus r5 = r5.getNetworkStatus()
                            r0.label = r3
                            java.lang.Object r5 = r6.emit(r5, r0)
                            if (r5 != r1) goto L49
                            return r1
                        L49:
                            kotlin.Unit r5 = kotlin.Unit.INSTANCE
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.dagger.OfflineConnectivityModule$Companion$provideNetworkStatusFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super NetworkStatus> flowCollector, Continuation continuation) {
                    Object objCollect = stateFlowCurrentState.collect(new AnonymousClass2(flowCollector), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
        }

        @Provides
        public final NetworkStatus provideStripeNetworkStatus(StripeConnectivityRepository stripeConnectivityRepository) {
            Intrinsics.checkNotNullParameter(stripeConnectivityRepository, "stripeConnectivityRepository");
            return stripeConnectivityRepository.networkStatus();
        }

        @Provides
        @Reusable
        public final SdkStatusRepository provideSdkStatusRepository(@EmbeddedAdapter Adapter embeddedAdapter) {
            return new DefaultSdkStatusRepository(embeddedAdapter);
        }
    }
}
