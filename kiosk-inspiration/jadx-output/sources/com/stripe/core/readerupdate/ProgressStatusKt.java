package com.stripe.core.readerupdate;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: ProgressStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0001\u001a\u001e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00030\u0001H\u0086@¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"toFloatFlow", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/stripe/core/readerupdate/ProgressStatus;", "toFloatList", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readerupdate_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ProgressStatusKt {

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.ProgressStatusKt$toFloatList$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProgressStatus.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.ProgressStatusKt", f = "ProgressStatus.kt", i = {}, l = {26}, m = "toFloatList", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ProgressStatusKt.toFloatList(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object toFloatList(kotlinx.coroutines.flow.Flow<? extends com.stripe.core.readerupdate.ProgressStatus> r5, kotlin.coroutines.Continuation<? super java.util.List<java.lang.Float>> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof com.stripe.core.readerupdate.ProgressStatusKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.core.readerupdate.ProgressStatusKt$toFloatList$1 r0 = (com.stripe.core.readerupdate.ProgressStatusKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.core.readerupdate.ProgressStatusKt$toFloatList$1 r0 = new com.stripe.core.readerupdate.ProgressStatusKt$toFloatList$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L33
            if (r2 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3f
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r4
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.toList$default(r5, r3, r0, r4, r3)
            if (r6 != r1) goto L3f
            return r1
        L3f:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Collection r5 = (java.util.Collection) r5
            java.util.Iterator r6 = r6.iterator()
        L4c:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L89
            java.lang.Object r0 = r6.next()
            com.stripe.core.readerupdate.ProgressStatus r0 = (com.stripe.core.readerupdate.ProgressStatus) r0
            boolean r1 = r0 instanceof com.stripe.core.readerupdate.ProgressStatus.Progress
            if (r1 == 0) goto L67
            com.stripe.core.readerupdate.ProgressStatus$Progress r0 = (com.stripe.core.readerupdate.ProgressStatus.Progress) r0
            float r0 = r0.getValue()
            java.lang.Float r0 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r0)
            goto L76
        L67:
            boolean r1 = r0 instanceof com.stripe.core.readerupdate.ProgressStatus.Error
            if (r1 != 0) goto L82
            boolean r1 = r0 instanceof com.stripe.core.readerupdate.ProgressStatus.Start
            if (r1 == 0) goto L71
            r0 = r4
            goto L73
        L71:
            boolean r0 = r0 instanceof com.stripe.core.readerupdate.ProgressStatus.Success
        L73:
            if (r0 == 0) goto L7c
            r0 = r3
        L76:
            if (r0 == 0) goto L4c
            r5.add(r0)
            goto L4c
        L7c:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L82:
            com.stripe.core.readerupdate.ProgressStatus$Error r0 = (com.stripe.core.readerupdate.ProgressStatus.Error) r0
            java.lang.Throwable r5 = r0.getException()
            throw r5
        L89:
            java.util.List r5 = (java.util.List) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.ProgressStatusKt.toFloatList(kotlinx.coroutines.flow.Flow, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Flow<Float> toFloatFlow(Flow<? extends ProgressStatus> flow) {
        Intrinsics.checkNotNullParameter(flow, "<this>");
        return FlowKt.flow(new ProgressStatusKt$toFloatFlow$$inlined$transform$1(flow, null));
    }
}
