package io.ktor.client.plugins.contentnegotiation;

import com.sun.jna.platform.win32.WinError;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: ContentNegotiation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "", "Lio/ktor/client/request/HttpRequestBuilder;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.contentnegotiation.ContentNegotiation$Plugin$install$1", f = "ContentNegotiation.kt", i = {0}, l = {253, WinError.ERROR_INVALID_EA_NAME}, m = "invokeSuspend", n = {"$this$intercept"}, s = {"L$0"})
final class ContentNegotiation$Plugin$install$1 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
    final /* synthetic */ ContentNegotiation $plugin;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContentNegotiation$Plugin$install$1(ContentNegotiation contentNegotiation, Continuation<? super ContentNegotiation$Plugin$install$1> continuation) {
        super(3, continuation);
        this.$plugin = contentNegotiation;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
        ContentNegotiation$Plugin$install$1 contentNegotiation$Plugin$install$1 = new ContentNegotiation$Plugin$install$1(this.$plugin, continuation);
        contentNegotiation$Plugin$install$1.L$0 = pipelineContext;
        return contentNegotiation$Plugin$install$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1.proceedWith(r8, r7) == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r8)
            goto L58
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            java.lang.Object r1 = r7.L$0
            io.ktor.util.pipeline.PipelineContext r1 = (io.ktor.util.pipeline.PipelineContext) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L44
        L22:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            r1 = r8
            io.ktor.util.pipeline.PipelineContext r1 = (io.ktor.util.pipeline.PipelineContext) r1
            io.ktor.client.plugins.contentnegotiation.ContentNegotiation r8 = r7.$plugin
            java.lang.Object r4 = r1.getContext()
            io.ktor.client.request.HttpRequestBuilder r4 = (io.ktor.client.request.HttpRequestBuilder) r4
            java.lang.Object r5 = r1.getSubject()
            r6 = r7
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r7.L$0 = r1
            r7.label = r3
            java.lang.Object r8 = r8.convertRequest$ktor_client_content_negotiation(r4, r5, r6)
            if (r8 != r0) goto L44
            goto L57
        L44:
            if (r8 != 0) goto L49
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L49:
            r3 = r7
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4 = 0
            r7.L$0 = r4
            r7.label = r2
            java.lang.Object r8 = r1.proceedWith(r8, r3)
            if (r8 != r0) goto L58
        L57:
            return r0
        L58:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.contentnegotiation.ContentNegotiation$Plugin$install$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
