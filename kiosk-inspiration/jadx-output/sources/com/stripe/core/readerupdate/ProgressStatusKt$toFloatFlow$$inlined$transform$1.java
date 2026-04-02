package com.stripe.core.readerupdate;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: Emitters.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¨\u0006\u0005"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1", f = "ProgressStatus.kt", i = {}, l = {36}, m = "invokeSuspend", n = {}, s = {})
public final class ProgressStatusKt$toFloatFlow$$inlined$transform$1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow $this_transform;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressStatusKt$toFloatFlow$$inlined$transform$1(Flow flow, Continuation continuation) {
        super(2, continuation);
        this.$this_transform = flow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ProgressStatusKt$toFloatFlow$$inlined$transform$1 progressStatusKt$toFloatFlow$$inlined$transform$1 = new ProgressStatusKt$toFloatFlow$$inlined$transform$1(this.$this_transform, continuation);
        progressStatusKt$toFloatFlow$$inlined$transform$1.L$0 = obj;
        return progressStatusKt$toFloatFlow$$inlined$transform$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super Float> flowCollector, Continuation<? super Unit> continuation) {
        return ((ProgressStatusKt$toFloatFlow$$inlined$transform$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            this.label = 1;
            if (this.$this_transform.collect(new AnonymousClass1(flowCollector), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: Emitters.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class AnonymousClass1<T> implements FlowCollector {
        final /* synthetic */ FlowCollector<Float> $$this$flow;

        /* JADX INFO: renamed from: com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Emitters.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1", f = "ProgressStatus.kt", i = {}, l = {WinError.ERROR_FILE_CHECKED_OUT}, m = "emit", n = {}, s = {})
        public static final class C00481 extends ContinuationImpl {
            int label;
            /* synthetic */ Object result;

            public C00481(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return AnonymousClass1.this.emit(null, this);
            }
        }

        public AnonymousClass1(FlowCollector flowCollector) {
            this.$$this$flow = flowCollector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) throws java.lang.Throwable {
            /*
                r4 = this;
                boolean r0 = r6 instanceof com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1.AnonymousClass1.C00481
                if (r0 == 0) goto L14
                r0 = r6
                com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1$1 r0 = (com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1.AnonymousClass1.C00481) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r1 = r1 & r2
                if (r1 == 0) goto L14
                int r6 = r0.label
                int r6 = r6 - r2
                r0.label = r6
                goto L19
            L14:
                com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1$1 r0 = new com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1$1$1
                r0.<init>(r6)
            L19:
                java.lang.Object r6 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L32
                if (r2 != r3) goto L2a
                kotlin.ResultKt.throwOnFailure(r6)
                goto L5e
            L2a:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L32:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlinx.coroutines.flow.FlowCollector<java.lang.Float> r6 = r4.$$this$flow
                r2 = r0
                kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                com.stripe.core.readerupdate.ProgressStatus r5 = (com.stripe.core.readerupdate.ProgressStatus) r5
                boolean r2 = r5 instanceof com.stripe.core.readerupdate.ProgressStatus.Progress
                if (r2 == 0) goto L53
                com.stripe.core.readerupdate.ProgressStatus$Progress r5 = (com.stripe.core.readerupdate.ProgressStatus.Progress) r5
                float r5 = r5.getValue()
                java.lang.Float r5 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r5)
                r0.label = r3
                java.lang.Object r5 = r6.emit(r5, r0)
                if (r5 != r1) goto L5e
                return r1
            L53:
                boolean r6 = r5 instanceof com.stripe.core.readerupdate.ProgressStatus.Error
                if (r6 != 0) goto L61
                boolean r6 = r5 instanceof com.stripe.core.readerupdate.ProgressStatus.Success
                if (r6 == 0) goto L5c
                goto L5e
            L5c:
                boolean r5 = r5 instanceof com.stripe.core.readerupdate.ProgressStatus.Start
            L5e:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            L61:
                com.stripe.core.readerupdate.ProgressStatus$Error r5 = (com.stripe.core.readerupdate.ProgressStatus.Error) r5
                java.lang.Throwable r5 = r5.getException()
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.ProgressStatusKt$toFloatFlow$$inlined$transform$1.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }
}
