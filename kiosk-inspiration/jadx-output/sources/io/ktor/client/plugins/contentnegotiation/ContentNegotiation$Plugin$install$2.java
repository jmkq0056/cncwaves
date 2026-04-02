package io.ktor.client.plugins.contentnegotiation;

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

/* JADX INFO: compiled from: ContentNegotiation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "Lio/ktor/client/statement/HttpResponseContainer;", "Lio/ktor/client/call/HttpClientCall;", "<name for destructuring parameter 0>"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.contentnegotiation.ContentNegotiation$Plugin$install$2", f = "ContentNegotiation.kt", i = {0, 0}, l = {264, WinError.ERROR_DIRECTORY}, m = "invokeSuspend", n = {"$this$intercept", "info"}, s = {"L$0", "L$1"})
final class ContentNegotiation$Plugin$install$2 extends SuspendLambda implements Function3<PipelineContext<HttpResponseContainer, HttpClientCall>, HttpResponseContainer, Continuation<? super Unit>, Object> {
    final /* synthetic */ ContentNegotiation $plugin;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContentNegotiation$Plugin$install$2(ContentNegotiation contentNegotiation, Continuation<? super ContentNegotiation$Plugin$install$2> continuation) {
        super(3, continuation);
        this.$plugin = contentNegotiation;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<HttpResponseContainer, HttpClientCall> pipelineContext, HttpResponseContainer httpResponseContainer, Continuation<? super Unit> continuation) {
        ContentNegotiation$Plugin$install$2 contentNegotiation$Plugin$install$2 = new ContentNegotiation$Plugin$install$2(this.$plugin, continuation);
        contentNegotiation$Plugin$install$2.L$0 = pipelineContext;
        contentNegotiation$Plugin$install$2.L$1 = httpResponseContainer;
        return contentNegotiation$Plugin$install$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a5, code lost:
    
        if (r3.proceedWith(new io.ktor.client.statement.HttpResponseContainer(r1, r13), r12) == r0) goto L23;
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
            r4 = 0
            if (r1 == 0) goto L28
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r13)
            goto La8
        L14:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1c:
            java.lang.Object r1 = r12.L$1
            io.ktor.util.reflect.TypeInfo r1 = (io.ktor.util.reflect.TypeInfo) r1
            java.lang.Object r3 = r12.L$0
            io.ktor.util.pipeline.PipelineContext r3 = (io.ktor.util.pipeline.PipelineContext) r3
            kotlin.ResultKt.throwOnFailure(r13)
            goto L8e
        L28:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            io.ktor.util.pipeline.PipelineContext r13 = (io.ktor.util.pipeline.PipelineContext) r13
            java.lang.Object r1 = r12.L$1
            io.ktor.client.statement.HttpResponseContainer r1 = (io.ktor.client.statement.HttpResponseContainer) r1
            io.ktor.util.reflect.TypeInfo r7 = r1.getExpectedType()
            java.lang.Object r8 = r1.getResponse()
            java.lang.Object r1 = r13.getContext()
            io.ktor.client.call.HttpClientCall r1 = (io.ktor.client.call.HttpClientCall) r1
            io.ktor.client.statement.HttpResponse r1 = r1.getResponse()
            io.ktor.http.HttpMessage r1 = (io.ktor.http.HttpMessage) r1
            io.ktor.http.ContentType r9 = io.ktor.http.HttpMessagePropertiesKt.contentType(r1)
            if (r9 != 0) goto L59
            org.slf4j.Logger r13 = io.ktor.client.plugins.contentnegotiation.ContentNegotiationKt.access$getLOGGER$p()
            java.lang.String r0 = "Response doesn't have \"Content-Type\" header, skipping ContentNegotiation plugin"
            r13.trace(r0)
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L59:
            java.lang.Object r1 = r13.getContext()
            io.ktor.client.call.HttpClientCall r1 = (io.ktor.client.call.HttpClientCall) r1
            io.ktor.client.request.HttpRequest r1 = r1.getRequest()
            io.ktor.http.Headers r1 = r1.getHeaders()
            java.nio.charset.Charset r10 = io.ktor.serialization.ContentConverterKt.suitableCharset$default(r1, r4, r3, r4)
            io.ktor.client.plugins.contentnegotiation.ContentNegotiation r5 = r12.$plugin
            java.lang.Object r1 = r13.getContext()
            io.ktor.client.call.HttpClientCall r1 = (io.ktor.client.call.HttpClientCall) r1
            io.ktor.client.request.HttpRequest r1 = r1.getRequest()
            io.ktor.http.Url r6 = r1.getUrl()
            r11 = r12
            kotlin.coroutines.Continuation r11 = (kotlin.coroutines.Continuation) r11
            r12.L$0 = r13
            r12.L$1 = r7
            r12.label = r3
            java.lang.Object r1 = r5.convertResponse$ktor_client_content_negotiation(r6, r7, r8, r9, r10, r11)
            if (r1 != r0) goto L8b
            goto La7
        L8b:
            r3 = r13
            r13 = r1
            r1 = r7
        L8e:
            if (r13 != 0) goto L93
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        L93:
            io.ktor.client.statement.HttpResponseContainer r5 = new io.ktor.client.statement.HttpResponseContainer
            r5.<init>(r1, r13)
            r13 = r12
            kotlin.coroutines.Continuation r13 = (kotlin.coroutines.Continuation) r13
            r12.L$0 = r4
            r12.L$1 = r4
            r12.label = r2
            java.lang.Object r13 = r3.proceedWith(r5, r13)
            if (r13 != r0) goto La8
        La7:
            return r0
        La8:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.contentnegotiation.ContentNegotiation$Plugin$install$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
