package io.ktor.http.content;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.jna.platform.linux.XAttr;
import io.ktor.http.content.OutgoingContent;
import io.ktor.utils.io.WriterScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.LongRange;

/* JADX INFO: compiled from: OutgoingContent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/utils/io/WriterScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.http.content.OutgoingContent$ReadChannelContent$readFrom$1", f = "OutgoingContent.kt", i = {0, 0}, l = {93, XAttr.ENOTSUP}, m = "invokeSuspend", n = {"$this$writer", FirebaseAnalytics.Param.SOURCE}, s = {"L$0", "L$1"})
final class OutgoingContent$ReadChannelContent$readFrom$1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LongRange $range;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ OutgoingContent.ReadChannelContent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OutgoingContent$ReadChannelContent$readFrom$1(OutgoingContent.ReadChannelContent readChannelContent, LongRange longRange, Continuation<? super OutgoingContent$ReadChannelContent$readFrom$1> continuation) {
        super(2, continuation);
        this.this$0 = readChannelContent;
        this.$range = longRange;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        OutgoingContent$ReadChannelContent$readFrom$1 outgoingContent$ReadChannelContent$readFrom$1 = new OutgoingContent$ReadChannelContent$readFrom$1(this.this$0, this.$range, continuation);
        outgoingContent$ReadChannelContent$readFrom$1.L$0 = obj;
        return outgoingContent$ReadChannelContent$readFrom$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
        return ((OutgoingContent$ReadChannelContent$readFrom$1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0078, code lost:
    
        if (io.ktor.utils.io.ByteReadChannelJVMKt.copyTo(r1, r3.getChannel(), r4, r8) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L12:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1a:
            java.lang.Object r1 = r8.L$1
            io.ktor.utils.io.ByteReadChannel r1 = (io.ktor.utils.io.ByteReadChannel) r1
            java.lang.Object r3 = r8.L$0
            io.ktor.utils.io.WriterScope r3 = (io.ktor.utils.io.WriterScope) r3
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4e
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            io.ktor.utils.io.WriterScope r9 = (io.ktor.utils.io.WriterScope) r9
            io.ktor.http.content.OutgoingContent$ReadChannelContent r1 = r8.this$0
            io.ktor.utils.io.ByteReadChannel r1 = r1.readFrom()
            kotlin.ranges.LongRange r4 = r8.$range
            java.lang.Long r4 = r4.getStart()
            long r4 = r4.longValue()
            r6 = r8
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r3
            java.lang.Object r3 = r1.discard(r4, r6)
            if (r3 != r0) goto L4d
            goto L7a
        L4d:
            r3 = r9
        L4e:
            kotlin.ranges.LongRange r9 = r8.$range
            java.lang.Long r9 = r9.getEndInclusive()
            long r4 = r9.longValue()
            kotlin.ranges.LongRange r9 = r8.$range
            java.lang.Long r9 = r9.getStart()
            long r6 = r9.longValue()
            long r4 = r4 - r6
            r6 = 1
            long r4 = r4 + r6
            io.ktor.utils.io.ByteWriteChannel r9 = r3.getChannel()
            r3 = r8
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r6 = 0
            r8.L$0 = r6
            r8.L$1 = r6
            r8.label = r2
            java.lang.Object r9 = io.ktor.utils.io.ByteReadChannelJVMKt.copyTo(r1, r9, r4, r3)
            if (r9 != r0) goto L7b
        L7a:
            return r0
        L7b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.content.OutgoingContent$ReadChannelContent$readFrom$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
