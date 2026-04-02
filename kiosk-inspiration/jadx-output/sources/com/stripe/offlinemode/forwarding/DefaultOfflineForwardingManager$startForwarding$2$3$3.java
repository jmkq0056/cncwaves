package com.stripe.offlinemode.forwarding;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$3", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {WinError.ERROR_AUTODATASEG_EXCEEDS_64k}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineForwardingManager$startForwarding$2$3$3 extends SuspendLambda implements Function2<OfflineForwardingRequest, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.IntRef $consecutiveSuccesses;
    final /* synthetic */ Ref.ObjectRef<PendingTimer> $pendingTimer;
    int label;
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineForwardingManager$startForwarding$2$3$3(Ref.ObjectRef<PendingTimer> objectRef, DefaultOfflineForwardingManager defaultOfflineForwardingManager, Ref.IntRef intRef, Continuation<? super DefaultOfflineForwardingManager$startForwarding$2$3$3> continuation) {
        super(2, continuation);
        this.$pendingTimer = objectRef;
        this.this$0 = defaultOfflineForwardingManager;
        this.$consecutiveSuccesses = intRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineForwardingManager$startForwarding$2$3$3(this.$pendingTimer, this.this$0, this.$consecutiveSuccesses, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super Unit> continuation) {
        return ((DefaultOfflineForwardingManager$startForwarding$2$3$3) create(offlineForwardingRequest, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [T, com.stripe.jvmcore.logging.PendingTimer] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long consecutiveForwardingJitter;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$pendingTimer.element == null) {
                this.$pendingTimer.element = HealthLogger.startTimer$default(this.this$0.endToEndLogger, null, new Function2<EndToEndScope.Builder, Timer, Unit>() { // from class: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$3.1
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(EndToEndScope.Builder builder, Timer timer) {
                        invoke2(builder, timer);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(EndToEndScope.Builder startTimer, Timer it) {
                        Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                        Intrinsics.checkNotNullParameter(it, "it");
                        startTimer.forwarding = it;
                    }
                }, 1, null);
            }
            OfflineForwardingDelayCalculator offlineForwardingDelayCalculator = this.this$0.offlineForwardingDelayCalculator;
            Ref.IntRef intRef = this.$consecutiveSuccesses;
            if (intRef.element == 0) {
                consecutiveForwardingJitter = offlineForwardingDelayCalculator.getRandomForwardingJitter();
            } else {
                consecutiveForwardingJitter = offlineForwardingDelayCalculator.getConsecutiveForwardingJitter(intRef.element);
            }
            this.this$0.traceLogger.d("Delaying forwarding by " + consecutiveForwardingJitter + " millis", new Pair[0]);
            this.label = 1;
            if (DelayKt.delay(consecutiveForwardingJitter, this) == coroutine_suspended) {
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
