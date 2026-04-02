package io.ktor.client.plugins.json;

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

/* JADX INFO: compiled from: JsonPlugin.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "Lio/ktor/client/statement/HttpResponseContainer;", "Lio/ktor/client/call/HttpClientCall;", "<name for destructuring parameter 0>"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.json.JsonPlugin$Plugin$install$2", f = "JsonPlugin.kt", i = {0, 0}, l = {WinError.ERROR_CHECKOUT_REQUIRED, WinError.ERROR_FILE_TOO_LARGE}, m = "invokeSuspend", n = {"$this$intercept", "info"}, s = {"L$0", "L$1"})
final class JsonPlugin$Plugin$install$2 extends SuspendLambda implements Function3<PipelineContext<HttpResponseContainer, HttpClientCall>, HttpResponseContainer, Continuation<? super Unit>, Object> {
    final /* synthetic */ JsonPlugin $plugin;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JsonPlugin$Plugin$install$2(JsonPlugin jsonPlugin, Continuation<? super JsonPlugin$Plugin$install$2> continuation) {
        super(3, continuation);
        this.$plugin = jsonPlugin;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<HttpResponseContainer, HttpClientCall> pipelineContext, HttpResponseContainer httpResponseContainer, Continuation<? super Unit> continuation) {
        JsonPlugin$Plugin$install$2 jsonPlugin$Plugin$install$2 = new JsonPlugin$Plugin$install$2(this.$plugin, continuation);
        jsonPlugin$Plugin$install$2.L$0 = pipelineContext;
        jsonPlugin$Plugin$install$2.L$1 = httpResponseContainer;
        return jsonPlugin$Plugin$install$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bd, code lost:
    
        if (r5.proceedWith(new io.ktor.client.statement.HttpResponseContainer(r4, r3.read(r1, (io.ktor.utils.io.core.Input) r13)), r12) == r0) goto L32;
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
            if (r1 == 0) goto L2f
            if (r1 == r3) goto L1b
            if (r1 != r2) goto L13
            kotlin.ResultKt.throwOnFailure(r13)
            goto Lc0
        L13:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1b:
            java.lang.Object r1 = r12.L$3
            io.ktor.util.reflect.TypeInfo r1 = (io.ktor.util.reflect.TypeInfo) r1
            java.lang.Object r3 = r12.L$2
            io.ktor.client.plugins.json.JsonSerializer r3 = (io.ktor.client.plugins.json.JsonSerializer) r3
            java.lang.Object r4 = r12.L$1
            io.ktor.util.reflect.TypeInfo r4 = (io.ktor.util.reflect.TypeInfo) r4
            java.lang.Object r5 = r12.L$0
            io.ktor.util.pipeline.PipelineContext r5 = (io.ktor.util.pipeline.PipelineContext) r5
            kotlin.ResultKt.throwOnFailure(r13)
            goto La0
        L2f:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            r5 = r13
            io.ktor.util.pipeline.PipelineContext r5 = (io.ktor.util.pipeline.PipelineContext) r5
            java.lang.Object r13 = r12.L$1
            io.ktor.client.statement.HttpResponseContainer r13 = (io.ktor.client.statement.HttpResponseContainer) r13
            io.ktor.util.reflect.TypeInfo r1 = r13.getExpectedType()
            java.lang.Object r13 = r13.getResponse()
            boolean r4 = r13 instanceof io.ktor.utils.io.ByteReadChannel
            if (r4 != 0) goto L4a
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L4a:
            io.ktor.client.plugins.json.JsonPlugin r4 = r12.$plugin
            java.util.Set r4 = io.ktor.client.plugins.json.JsonPlugin.access$getIgnoredTypes$p(r4)
            kotlin.reflect.KClass r6 = r1.getType()
            boolean r4 = r4.contains(r6)
            if (r4 == 0) goto L5d
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L5d:
            java.lang.Object r4 = r5.getContext()
            io.ktor.client.call.HttpClientCall r4 = (io.ktor.client.call.HttpClientCall) r4
            io.ktor.client.statement.HttpResponse r4 = r4.getResponse()
            io.ktor.http.HttpMessage r4 = (io.ktor.http.HttpMessage) r4
            io.ktor.http.ContentType r4 = io.ktor.http.HttpMessagePropertiesKt.contentType(r4)
            if (r4 != 0) goto L72
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L72:
            io.ktor.client.plugins.json.JsonPlugin r6 = r12.$plugin
            boolean r4 = r6.canHandle$ktor_client_json(r4)
            if (r4 != 0) goto L7d
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L7d:
            io.ktor.client.plugins.json.JsonPlugin r4 = r12.$plugin
            io.ktor.client.plugins.json.JsonSerializer r4 = r4.getSerializer()
            r6 = r13
            io.ktor.utils.io.ByteReadChannel r6 = (io.ktor.utils.io.ByteReadChannel) r6
            r9 = r12
            kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
            r12.L$0 = r5
            r12.L$1 = r1
            r12.L$2 = r4
            r12.L$3 = r1
            r12.label = r3
            r7 = 0
            r10 = 1
            r11 = 0
            java.lang.Object r13 = io.ktor.utils.io.ByteReadChannel.DefaultImpls.readRemaining$default(r6, r7, r9, r10, r11)
            if (r13 != r0) goto L9e
            goto Lbf
        L9e:
            r3 = r4
            r4 = r1
        La0:
            io.ktor.utils.io.core.Input r13 = (io.ktor.utils.io.core.Input) r13
            java.lang.Object r13 = r3.read(r1, r13)
            io.ktor.client.statement.HttpResponseContainer r1 = new io.ktor.client.statement.HttpResponseContainer
            r1.<init>(r4, r13)
            r13 = r12
            kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
            r3 = 0
            r12.L$0 = r3
            r12.L$1 = r3
            r12.L$2 = r3
            r12.L$3 = r3
            r12.label = r2
            java.lang.Object r13 = r5.proceedWith(r1, r13)
            if (r13 != r0) goto Lc0
        Lbf:
            return r0
        Lc0:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.json.JsonPlugin$Plugin$install$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
