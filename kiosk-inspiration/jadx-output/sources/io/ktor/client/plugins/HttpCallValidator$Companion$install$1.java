package io.ktor.client.plugins;

import com.sun.jna.platform.win32.WinError;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpCallValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "", "Lio/ktor/client/request/HttpRequestBuilder;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$1", f = "HttpCallValidator.kt", i = {0, 1}, l = {130, WinError.ERROR_IS_JOIN_TARGET}, m = "invokeSuspend", n = {"$this$intercept", "unwrappedCause"}, s = {"L$0", "L$0"})
final class HttpCallValidator$Companion$install$1 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
    final /* synthetic */ HttpCallValidator $plugin;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpCallValidator$Companion$install$1(HttpCallValidator httpCallValidator, Continuation<? super HttpCallValidator$Companion$install$1> continuation) {
        super(3, continuation);
        this.$plugin = httpCallValidator;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
        HttpCallValidator$Companion$install$1 httpCallValidator$Companion$install$1 = new HttpCallValidator$Companion$install$1(this.$plugin, continuation);
        httpCallValidator$Companion$install$1.L$0 = pipelineContext;
        httpCallValidator$Companion$install$1.L$1 = obj;
        return httpCallValidator$Companion$install$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
    
        if (r9 == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [io.ktor.util.pipeline.PipelineContext] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1e
            if (r1 == r2) goto L16
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L16:
            java.lang.Object r0 = r8.L$0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7d
        L1e:
            java.lang.Object r1 = r8.L$0
            io.ktor.util.pipeline.PipelineContext r1 = (io.ktor.util.pipeline.PipelineContext) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L5b
            goto L58
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            r1 = r9
            io.ktor.util.pipeline.PipelineContext r1 = (io.ktor.util.pipeline.PipelineContext) r1
            java.lang.Object r9 = r8.L$1
            java.lang.Object r4 = r1.getContext()     // Catch: java.lang.Throwable -> L5b
            io.ktor.client.request.HttpRequestBuilder r4 = (io.ktor.client.request.HttpRequestBuilder) r4     // Catch: java.lang.Throwable -> L5b
            io.ktor.util.Attributes r4 = r4.getAttributes()     // Catch: java.lang.Throwable -> L5b
            io.ktor.util.AttributeKey r5 = io.ktor.client.plugins.HttpCallValidatorKt.getExpectSuccessAttributeKey()     // Catch: java.lang.Throwable -> L5b
            io.ktor.client.plugins.HttpCallValidator$Companion$install$1$1 r6 = new io.ktor.client.plugins.HttpCallValidator$Companion$install$1$1     // Catch: java.lang.Throwable -> L5b
            io.ktor.client.plugins.HttpCallValidator r7 = r8.$plugin     // Catch: java.lang.Throwable -> L5b
            r6.<init>()     // Catch: java.lang.Throwable -> L5b
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6     // Catch: java.lang.Throwable -> L5b
            r4.computeIfAbsent(r5, r6)     // Catch: java.lang.Throwable -> L5b
            r4 = r8
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L5b
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L5b
            r8.label = r3     // Catch: java.lang.Throwable -> L5b
            java.lang.Object r9 = r1.proceedWith(r9, r4)     // Catch: java.lang.Throwable -> L5b
            if (r9 != r0) goto L58
            goto L7b
        L58:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L5b:
            r9 = move-exception
            java.lang.Throwable r9 = io.ktor.client.utils.ExceptionUtilsJvmKt.unwrapCancellationException(r9)
            io.ktor.client.plugins.HttpCallValidator r3 = r8.$plugin
            java.lang.Object r1 = r1.getContext()
            io.ktor.client.request.HttpRequestBuilder r1 = (io.ktor.client.request.HttpRequestBuilder) r1
            io.ktor.client.plugins.HttpCallValidatorKt$HttpRequest$1 r1 = io.ktor.client.plugins.HttpCallValidatorKt.access$HttpRequest(r1)
            io.ktor.client.request.HttpRequest r1 = (io.ktor.client.request.HttpRequest) r1
            r4 = r8
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r8.L$0 = r9
            r8.label = r2
            java.lang.Object r1 = io.ktor.client.plugins.HttpCallValidator.access$processException(r3, r9, r1, r4)
            if (r1 != r0) goto L7c
        L7b:
            return r0
        L7c:
            r0 = r9
        L7d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpCallValidator$Companion$install$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
