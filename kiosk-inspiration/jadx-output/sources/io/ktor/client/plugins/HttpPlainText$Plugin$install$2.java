package io.ktor.client.plugins;

import com.sun.jna.platform.win32.WinError;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.statement.HttpResponseContainer;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpPlainText.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "Lio/ktor/client/statement/HttpResponseContainer;", "Lio/ktor/client/call/HttpClientCall;", "<name for destructuring parameter 0>"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$2", f = "HttpPlainText.kt", i = {0, 0}, l = {136, WinError.ERROR_JOIN_TO_JOIN}, m = "invokeSuspend", n = {"$this$intercept", "info"}, s = {"L$0", "L$1"})
final class HttpPlainText$Plugin$install$2 extends SuspendLambda implements Function3<PipelineContext<HttpResponseContainer, HttpClientCall>, HttpResponseContainer, Continuation<? super Unit>, Object> {
    final /* synthetic */ HttpPlainText $plugin;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpPlainText$Plugin$install$2(HttpPlainText httpPlainText, Continuation<? super HttpPlainText$Plugin$install$2> continuation) {
        super(3, continuation);
        this.$plugin = httpPlainText;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<HttpResponseContainer, HttpClientCall> pipelineContext, HttpResponseContainer httpResponseContainer, Continuation<? super Unit> continuation) {
        HttpPlainText$Plugin$install$2 httpPlainText$Plugin$install$2 = new HttpPlainText$Plugin$install$2(this.$plugin, continuation);
        httpPlainText$Plugin$install$2.L$0 = pipelineContext;
        httpPlainText$Plugin$install$2.L$1 = httpResponseContainer;
        return httpPlainText$Plugin$install$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008c, code lost:
    
        if (r3.proceedWith(new io.ktor.client.statement.HttpResponseContainer(r1, r12.$plugin.read$ktor_client_core((io.ktor.client.call.HttpClientCall) r3.getContext(), (io.ktor.utils.io.core.ByteReadPacket) r13)), r12) == r0) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L27
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            kotlin.ResultKt.throwOnFailure(r13)
            goto L8f
        L13:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1b:
            java.lang.Object r1 = r12.L$1
            io.ktor.util.reflect.TypeInfo r1 = (io.ktor.util.reflect.TypeInfo) r1
            java.lang.Object r3 = r12.L$0
            io.ktor.util.pipeline.PipelineContext r3 = (io.ktor.util.pipeline.PipelineContext) r3
            kotlin.ResultKt.throwOnFailure(r13)
            goto L69
        L27:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            io.ktor.util.pipeline.PipelineContext r13 = (io.ktor.util.pipeline.PipelineContext) r13
            java.lang.Object r1 = r12.L$1
            io.ktor.client.statement.HttpResponseContainer r1 = (io.ktor.client.statement.HttpResponseContainer) r1
            io.ktor.util.reflect.TypeInfo r4 = r1.getExpectedType()
            java.lang.Object r1 = r1.getResponse()
            kotlin.reflect.KClass r5 = r4.getType()
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            kotlin.reflect.KClass r6 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r6)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L92
            boolean r5 = r1 instanceof io.ktor.utils.io.ByteReadChannel
            if (r5 != 0) goto L4f
            goto L92
        L4f:
            r6 = r1
            io.ktor.utils.io.ByteReadChannel r6 = (io.ktor.utils.io.ByteReadChannel) r6
            r9 = r12
            kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
            r12.L$0 = r13
            r12.L$1 = r4
            r12.label = r3
            r7 = 0
            r10 = 1
            r11 = 0
            java.lang.Object r1 = io.ktor.utils.io.ByteReadChannel.DefaultImpls.readRemaining$default(r6, r7, r9, r10, r11)
            if (r1 != r0) goto L66
            goto L8e
        L66:
            r3 = r13
            r13 = r1
            r1 = r4
        L69:
            io.ktor.utils.io.core.ByteReadPacket r13 = (io.ktor.utils.io.core.ByteReadPacket) r13
            io.ktor.client.plugins.HttpPlainText r4 = r12.$plugin
            java.lang.Object r5 = r3.getContext()
            io.ktor.client.call.HttpClientCall r5 = (io.ktor.client.call.HttpClientCall) r5
            io.ktor.utils.io.core.Input r13 = (io.ktor.utils.io.core.Input) r13
            java.lang.String r13 = r4.read$ktor_client_core(r5, r13)
            io.ktor.client.statement.HttpResponseContainer r4 = new io.ktor.client.statement.HttpResponseContainer
            r4.<init>(r1, r13)
            r13 = r12
            kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
            r1 = 0
            r12.L$0 = r1
            r12.L$1 = r1
            r12.label = r2
            java.lang.Object r13 = r3.proceedWith(r4, r13)
            if (r13 != r0) goto L8f
        L8e:
            return r0
        L8f:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L92:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpPlainText$Plugin$install$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
