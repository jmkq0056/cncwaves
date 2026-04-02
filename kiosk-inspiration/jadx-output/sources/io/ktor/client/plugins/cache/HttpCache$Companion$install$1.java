package io.ktor.client.plugins.cache;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: HttpCache.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/util/pipeline/PipelineContext;", "", "Lio/ktor/client/request/HttpRequestBuilder;", FirebaseAnalytics.Param.CONTENT}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.client.plugins.cache.HttpCache$Companion$install$1", f = "HttpCache.kt", i = {1}, l = {WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_IS_SUBST_TARGET, 155, WinUser.VK_RMENU, WinError.ERROR_BUSY}, m = "invokeSuspend", n = {"$this$intercept"}, s = {"L$0"})
final class HttpCache$Companion$install$1 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
    final /* synthetic */ HttpCache $plugin;
    final /* synthetic */ HttpClient $scope;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpCache$Companion$install$1(HttpCache httpCache, HttpClient httpClient, Continuation<? super HttpCache$Companion$install$1> continuation) {
        super(3, continuation);
        this.$plugin = httpCache;
        this.$scope = httpClient;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
        HttpCache$Companion$install$1 httpCache$Companion$install$1 = new HttpCache$Companion$install$1(this.$plugin, this.$scope, continuation);
        httpCache$Companion$install$1.L$0 = pipelineContext;
        httpCache$Companion$install$1.L$1 = obj;
        return httpCache$Companion$install$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
    
        if (io.ktor.client.plugins.cache.HttpCacheLegacyKt.interceptSendLegacy(r1, r14.$plugin, (io.ktor.http.content.OutgoingContent) r15, r14.$scope, r14) == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0131, code lost:
    
        if (io.ktor.client.plugins.cache.HttpCache.INSTANCE.proceedWithMissingCache$ktor_client_core(r9, r14.$scope, r14) == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0184, code lost:
    
        if (io.ktor.client.plugins.cache.HttpCache.INSTANCE.proceedWithCache$ktor_client_core(r9, r14.$scope, r15, r14) == r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01aa, code lost:
    
        if (io.ktor.client.plugins.cache.HttpCache.INSTANCE.proceedWithWarning(r9, r10, r14.$scope, r9.getContext().getExecutionContext(), r14) == r0) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0138  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.cache.HttpCache$Companion$install$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
