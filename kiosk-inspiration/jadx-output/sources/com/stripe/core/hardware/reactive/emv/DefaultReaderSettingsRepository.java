package com.stripe.core.hardware.reactive.emv;

import com.stripe.hardware.emv.ReaderSettings;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DefaultReaderSettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000fH\u0096@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;", "Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V", "readerSettings", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/hardware/emv/ReaderSettings;", "getReaderSettings", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "awaitRefresh", "Lkotlin/Result;", "awaitRefresh-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refresh", "", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultReaderSettingsRepository implements ReaderSettingsRepository {
    private final CoroutineScope appScope;
    private final ConfigurationHandler configurationHandler;
    private final CoroutineDispatcher dispatcher;
    private final MutableStateFlow<ReaderSettings> readerSettings;

    public DefaultReaderSettingsRepository(CoroutineScope appScope, CoroutineDispatcher dispatcher, ConfigurationHandler configurationHandler) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        this.appScope = appScope;
        this.dispatcher = dispatcher;
        this.configurationHandler = configurationHandler;
        this.readerSettings = StateFlowKt.MutableStateFlow(null);
    }

    @Override // com.stripe.core.hardware.reactive.emv.ReaderSettingsRepository
    public MutableStateFlow<ReaderSettings> getReaderSettings() {
        return this.readerSettings;
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$refresh$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultReaderSettingsRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$refresh$1", f = "DefaultReaderSettingsRepository.kt", i = {}, l = {19}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultReaderSettingsRepository.this.new AnonymousClass1(continuation);
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
                this.label = 1;
                if (DefaultReaderSettingsRepository.this.mo468awaitRefreshIoAF18A(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.core.hardware.reactive.emv.ReaderSettingsRepository
    public void refresh() {
        BuildersKt__Builders_commonKt.launch$default(this.appScope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.core.hardware.reactive.emv.ReaderSettingsRepository
    /* JADX INFO: renamed from: awaitRefresh-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo468awaitRefreshIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<com.stripe.hardware.emv.ReaderSettings>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$1
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$1 r0 = (com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$1 r0 = new com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$1
            r0.<init>(r5, r6)
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
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.CoroutineDispatcher r6 = r5.dispatcher
            kotlin.coroutines.CoroutineContext r6 = (kotlin.coroutines.CoroutineContext) r6
            com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$2 r2 = new com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$2
            r4 = 0
            r2.<init>(r5, r4)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.getValue()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository.mo468awaitRefreshIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
