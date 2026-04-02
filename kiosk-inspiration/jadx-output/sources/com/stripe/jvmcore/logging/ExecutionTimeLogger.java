package com.stripe.jvmcore.logging;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.stripe.loggingmodels.Outcome;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: ExecutionTimeLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007B%\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t¢\u0006\u0002\u0010\nJ\u009c\u0001\u0010\u000b\u001a\u0002H\f\"\u0004\b\u0004\u0010\f2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011¢\u0006\u0002\b\u00122\u001c\u0010\u0013\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001429\u0010\u0016\u001a5\u0012\u0013\u0012\u0011H\f¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a0\u0014H\u0086@¢\u0006\u0002\u0010\u001eJw\u0010\u001f\u001a\u0002H\f\"\u0004\b\u0004\u0010\f2\u0014\b\u0002\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011¢\u0006\u0002\b\u00122\u001c\u0010\u0013\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0014H\u0086@¢\u0006\u0002\u0010!J¤\u0001\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\f0#\"\u0004\b\u0004\u0010\f2\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\f0#0$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u00020&0\u001429\u0010'\u001a5\u0012\u0013\u0012\u0011H\f¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a0\u00142-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011¢\u0006\u0002\b\u0012Ja\u0010(\u001a\b\u0012\u0004\u0012\u0002H\f0#\"\u0004\b\u0004\u0010\f*\b\u0012\u0004\u0012\u0002H\f0#2\u0014\b\u0002\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011¢\u0006\u0002\b\u0012R&\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;)V", "reportExecution", PrinterTextParser.TAGS_ALIGN_RIGHT, "eventSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "", "Lcom/stripe/jvmcore/logging/EventSetter;", "Lkotlin/ExtensionFunctionType;", "runnable", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "outcomeAndTags", "Lkotlin/ParameterName;", "name", "result", "Lkotlin/Pair;", "Lcom/stripe/loggingmodels/Outcome;", "", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reportExecutionWithException", "tags", "(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reportFlowExecution", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function0;", "shouldTimerEnd", "", "getOutcomeAndTags", "reportFlowExecutionWithException", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExecutionTimeLogger<D extends Message<D, DB>, DB extends Message.Builder<D, DB>, S extends Message<S, SB>, SB extends Message.Builder<S, SB>> {
    private final HealthLogger<D, DB, S, SB> logger;

    public ExecutionTimeLogger(HealthLogger<D, DB, S, SB> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object reportExecutionWithException$default(ExecutionTimeLogger executionTimeLogger, Map map, Function2 function2, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return executionTimeLogger.reportExecutionWithException(map, function2, function1, continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecutionWithException$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExecutionTimeLogger.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0014\b\u0002\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0003\"\u0014\b\u0004\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005*\u00020\bH\u008a@"}, d2 = {"<anonymous>", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecutionWithException$2", f = "ExecutionTimeLogger.kt", i = {0}, l = {42}, m = "invokeSuspend", n = {"timer"}, s = {"L$1"})
    static final class C02652<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<SB, Timer, Unit> $eventSetter;
        final /* synthetic */ Function1<Continuation<? super R>, Object> $runnable;
        final /* synthetic */ Map<String, String> $tags;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ ExecutionTimeLogger<D, DB, S, SB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02652(ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger, Map<String, String> map, Function2<? super SB, ? super Timer, Unit> function2, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super C02652> continuation) {
            super(2, continuation);
            this.this$0 = executionTimeLogger;
            this.$tags = map;
            this.$eventSetter = function2;
            this.$runnable = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02652 c02652 = new C02652(this.this$0, this.$tags, this.$eventSetter, this.$runnable, continuation);
            c02652.L$0 = obj;
            return c02652;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C02652) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 1
                if (r1 == 0) goto L24
                if (r1 != r2) goto L1c
                java.lang.Object r0 = r9.L$1
                r1 = r0
                com.stripe.jvmcore.logging.PendingTimer r1 = (com.stripe.jvmcore.logging.PendingTimer) r1
                java.lang.Object r0 = r9.L$0
                r2 = r0
                com.stripe.jvmcore.logging.ExecutionTimeLogger r2 = (com.stripe.jvmcore.logging.ExecutionTimeLogger) r2
                kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L1a
                r7 = r2
                goto L60
            L1a:
                r0 = move-exception
                goto L7b
            L1c:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L24:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.L$0
                r3 = r10
                kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
                com.stripe.jvmcore.logging.ExecutionTimeLogger<D extends com.squareup.wire.Message<D, DB>, DB extends com.squareup.wire.Message$Builder<D, DB>, S extends com.squareup.wire.Message<S, SB>, SB extends com.squareup.wire.Message$Builder<S, SB>> r10 = r9.this$0
                com.stripe.jvmcore.logging.HealthLogger r10 = com.stripe.jvmcore.logging.ExecutionTimeLogger.access$getLogger$p(r10)
                java.util.Map<java.lang.String, java.lang.String> r1 = r9.$tags
                kotlin.jvm.functions.Function2<SB extends com.squareup.wire.Message$Builder<S, SB>, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer, kotlin.Unit> r4 = r9.$eventSetter
                com.stripe.jvmcore.logging.PendingTimer r1 = r10.startTimer(r1, r4)
                com.stripe.jvmcore.logging.ExecutionTimeLogger<D extends com.squareup.wire.Message<D, DB>, DB extends com.squareup.wire.Message$Builder<D, DB>, S extends com.squareup.wire.Message<S, SB>, SB extends com.squareup.wire.Message$Builder<S, SB>> r10 = r9.this$0
                kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super R>, java.lang.Object> r4 = r9.$runnable
                kotlin.Result$Companion r5 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L79
                com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecutionWithException$2$1$1$result$1 r5 = new com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecutionWithException$2$1$1$result$1     // Catch: java.lang.Throwable -> L79
                r6 = 0
                r5.<init>(r4, r6)     // Catch: java.lang.Throwable -> L79
                r6 = r5
                kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6     // Catch: java.lang.Throwable -> L79
                r7 = 3
                r8 = 0
                r4 = 0
                r5 = 0
                kotlinx.coroutines.Deferred r3 = kotlinx.coroutines.BuildersKt.async$default(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L79
                r9.L$0 = r10     // Catch: java.lang.Throwable -> L79
                r9.L$1 = r1     // Catch: java.lang.Throwable -> L79
                r9.label = r2     // Catch: java.lang.Throwable -> L79
                java.lang.Object r2 = r3.await(r9)     // Catch: java.lang.Throwable -> L79
                if (r2 != r0) goto L5e
                return r0
            L5e:
                r7 = r10
                r10 = r2
            L60:
                com.stripe.jvmcore.logging.HealthLogger r0 = com.stripe.jvmcore.logging.ExecutionTimeLogger.access$getLogger$p(r7)     // Catch: java.lang.Throwable -> L75
                com.stripe.loggingmodels.Outcome$Ok r2 = com.stripe.loggingmodels.Outcome.Ok.INSTANCE     // Catch: java.lang.Throwable -> L75
                com.stripe.loggingmodels.Outcome r2 = (com.stripe.loggingmodels.Outcome) r2     // Catch: java.lang.Throwable -> L75
                r5 = 12
                r6 = 0
                r3 = 0
                r4 = 0
                com.stripe.jvmcore.logging.HealthLogger.endTimer$default(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L75
                java.lang.Object r10 = kotlin.Result.m817constructorimpl(r10)     // Catch: java.lang.Throwable -> L75
                goto L87
            L75:
                r0 = move-exception
                r10 = r0
                r2 = r7
                goto L7c
            L79:
                r0 = move-exception
                r2 = r10
            L7b:
                r10 = r0
            L7c:
                kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
                java.lang.Object r10 = kotlin.ResultKt.createFailure(r10)
                java.lang.Object r10 = kotlin.Result.m817constructorimpl(r10)
                r7 = r2
            L87:
                java.lang.Throwable r8 = kotlin.Result.m820exceptionOrNullimpl(r10)
                if (r8 != 0) goto L91
                kotlin.ResultKt.throwOnFailure(r10)
                return r10
            L91:
                com.stripe.jvmcore.logging.HealthLogger r0 = com.stripe.jvmcore.logging.ExecutionTimeLogger.access$getLogger$p(r7)
                com.stripe.loggingmodels.Outcome$GenericError r10 = com.stripe.loggingmodels.Outcome.GenericError.INSTANCE
                r2 = r10
                com.stripe.loggingmodels.Outcome r2 = (com.stripe.loggingmodels.Outcome) r2
                r5 = 12
                r6 = 0
                r3 = 0
                r4 = 0
                com.stripe.jvmcore.logging.HealthLogger.endTimer$default(r0, r1, r2, r3, r4, r5, r6)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.logging.ExecutionTimeLogger.C02652.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final <R> Object reportExecutionWithException(Map<String, String> map, Function2<? super SB, ? super Timer, Unit> function2, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return CoroutineScopeKt.coroutineScope(new C02652(this, map, function2, function1, null), continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Flow reportFlowExecutionWithException$default(ExecutionTimeLogger executionTimeLogger, Flow flow, Map map, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return executionTimeLogger.reportFlowExecutionWithException(flow, map, function2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$1, reason: invalid class name */
    /* JADX INFO: compiled from: ExecutionTimeLogger.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\b\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0004\"\u0014\b\u0004\u0010\b*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0006*\b\u0012\u0004\u0012\u0002H\u00020\tH\u008a@"}, d2 = {"<anonymous>", "", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$1", f = "ExecutionTimeLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1<R> extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<SB, Timer, Unit> $eventSetter;
        final /* synthetic */ Map<String, String> $tags;
        final /* synthetic */ Ref.ObjectRef<PendingTimer> $timer;
        int label;
        final /* synthetic */ ExecutionTimeLogger<D, DB, S, SB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Ref.ObjectRef<PendingTimer> objectRef, ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger, Map<String, String> map, Function2<? super SB, ? super Timer, Unit> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$timer = objectRef;
            this.this$0 = executionTimeLogger;
            this.$tags = map;
            this.$eventSetter = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$timer, this.this$0, this.$tags, this.$eventSetter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super R> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, com.stripe.jvmcore.logging.PendingTimer] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$timer.element = ((ExecutionTimeLogger) this.this$0).logger.startTimer(this.$tags, this.$eventSetter);
            return Unit.INSTANCE;
        }
    }

    public final <R> Flow<R> reportFlowExecutionWithException(Flow<? extends R> flow, Map<String, String> tags, Function2<? super SB, ? super Timer, Unit> eventSetter) {
        Intrinsics.checkNotNullParameter(flow, "<this>");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(eventSetter, "eventSetter");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        return FlowKt.onCompletion(FlowKt.onStart(flow, new AnonymousClass1(objectRef, this, tags, eventSetter, null)), new C02662(objectRef, this, null));
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ExecutionTimeLogger.kt */
    @Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\b\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0004\"\u0014\b\u0004\u0010\b*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0006*\b\u0012\u0004\u0012\u0002H\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u008a@"}, d2 = {"<anonymous>", "", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lkotlinx/coroutines/flow/FlowCollector;", "error", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$2", f = "ExecutionTimeLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02662<R> extends SuspendLambda implements Function3<FlowCollector<? super R>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<PendingTimer> $timer;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ExecutionTimeLogger<D, DB, S, SB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02662(Ref.ObjectRef<PendingTimer> objectRef, ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger, Continuation<? super C02662> continuation) {
            super(3, continuation);
            this.$timer = objectRef;
            this.this$0 = executionTimeLogger;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super R> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            C02662 c02662 = new C02662(this.$timer, this.this$0, continuation);
            c02662.L$0 = th;
            return c02662.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Throwable th = (Throwable) this.L$0;
            if (this.$timer.element != null) {
                ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger = this.this$0;
                Ref.ObjectRef<PendingTimer> objectRef = this.$timer;
                if (th == null) {
                    HealthLogger.endTimer$default(((ExecutionTimeLogger) executionTimeLogger).logger, objectRef.element, Outcome.Ok.INSTANCE, null, null, 12, null);
                } else {
                    HealthLogger.endTimer$default(((ExecutionTimeLogger) executionTimeLogger).logger, objectRef.element, Outcome.GenericError.INSTANCE, null, null, 12, null);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecution$2, reason: invalid class name */
    /* JADX INFO: compiled from: ExecutionTimeLogger.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0014\b\u0002\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0003\"\u0014\b\u0004\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005*\u00020\bH\u008a@"}, d2 = {"<anonymous>", PrinterTextParser.TAGS_ALIGN_RIGHT, "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecution$2", f = "ExecutionTimeLogger.kt", i = {0}, l = {87}, m = "invokeSuspend", n = {"timer"}, s = {"L$2"})
    static final class AnonymousClass2<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<SB, Timer, Unit> $eventSetter;
        final /* synthetic */ Function1<R, Pair<Outcome, Map<String, String>>> $outcomeAndTags;
        final /* synthetic */ Function1<Continuation<? super R>, Object> $runnable;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ ExecutionTimeLogger<D, DB, S, SB> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger, Function2<? super SB, ? super Timer, Unit> function2, Function1<? super R, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> function1, Function1<? super Continuation<? super R>, ? extends Object> function12, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = executionTimeLogger;
            this.$eventSetter = function2;
            this.$outcomeAndTags = function1;
            this.$runnable = function12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$eventSetter, this.$outcomeAndTags, this.$runnable, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger;
            PendingTimer pendingTimer;
            Function1 function1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                PendingTimer pendingTimerStartTimer$default = HealthLogger.startTimer$default(((ExecutionTimeLogger) this.this$0).logger, null, this.$eventSetter, 1, null);
                Function1<R, Pair<Outcome, Map<String, String>>> function12 = this.$outcomeAndTags;
                executionTimeLogger = this.this$0;
                Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new ExecutionTimeLogger$reportExecution$2$1$result$1(this.$runnable, null), 3, null);
                this.L$0 = function12;
                this.L$1 = executionTimeLogger;
                this.L$2 = pendingTimerStartTimer$default;
                this.label = 1;
                Object objAwait = deferredAsync$default.await(this);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
                pendingTimer = pendingTimerStartTimer$default;
                obj = objAwait;
                function1 = function12;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                PendingTimer pendingTimer2 = (PendingTimer) this.L$2;
                ExecutionTimeLogger<D, DB, S, SB> executionTimeLogger2 = (ExecutionTimeLogger) this.L$1;
                function1 = (Function1) this.L$0;
                ResultKt.throwOnFailure(obj);
                executionTimeLogger = executionTimeLogger2;
                pendingTimer = pendingTimer2;
            }
            Pair pair = (Pair) function1.invoke(obj);
            HealthLogger.endTimer$default(((ExecutionTimeLogger) executionTimeLogger).logger, pendingTimer, (Outcome) pair.component1(), (Map) pair.component2(), null, 8, null);
            return obj;
        }
    }

    public final <R> Object reportExecution(Function2<? super SB, ? super Timer, Unit> function2, Function1<? super Continuation<? super R>, ? extends Object> function1, Function1<? super R, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> function12, Continuation<? super R> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(this, function2, function12, function1, null), continuation);
    }

    public final <R> Flow<R> reportFlowExecution(Function0<? extends Flow<? extends R>> runnable, Function1<? super R, Boolean> shouldTimerEnd, Function1<? super R, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> getOutcomeAndTags, Function2<? super SB, ? super Timer, Unit> eventSetter) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Intrinsics.checkNotNullParameter(shouldTimerEnd, "shouldTimerEnd");
        Intrinsics.checkNotNullParameter(getOutcomeAndTags, "getOutcomeAndTags");
        Intrinsics.checkNotNullParameter(eventSetter, "eventSetter");
        return FlowKt.onEach(runnable.invoke(), new ExecutionTimeLogger$reportFlowExecution$1$1(shouldTimerEnd, getOutcomeAndTags, this, HealthLogger.startTimer$default(this.logger, null, eventSetter, 1, null), null));
    }
}
