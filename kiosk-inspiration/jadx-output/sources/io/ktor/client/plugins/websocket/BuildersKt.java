package io.ktor.client.plugins.websocket;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.plugins.HttpClientPluginKt;
import io.ktor.client.plugins.websocket.WebSockets;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestKt;
import io.ktor.client.request.UtilsKt;
import io.ktor.client.statement.HttpStatement;
import io.ktor.http.HttpMethod;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLParserKt;
import io.ktor.http.URLProtocol;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: builders.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u001a'\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006\u001aW\u0010\u0007\u001a\u00020\u0001*\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a\u0087\u0001\u0010\u0007\u001a\u00020\u0001*\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001aa\u0010\u0007\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a.\u0010\u001b\u001a\u00020\r*\u00020\b2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a^\u0010\u001b\u001a\u00020\r*\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0019\b\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a8\u0010\u001b\u001a\u00020\r*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00142\u0019\b\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001aW\u0010\u001f\u001a\u00020\u0001*\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a\u0087\u0001\u0010\u001f\u001a\u00020\u0001*\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001aa\u0010\u001f\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001aW\u0010 \u001a\u00020\u0001*\u00020\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001a\u0087\u0001\u0010 \u001a\u00020\u0001*\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001aa\u0010 \u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00142\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0002\b\u00062'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\f¢\u0006\u0002\b\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"WebSockets", "", "Lio/ktor/client/HttpClientConfig;", "config", "Lkotlin/Function1;", "Lio/ktor/client/plugins/websocket/WebSockets$Config;", "Lkotlin/ExtensionFunctionType;", "webSocket", "Lio/ktor/client/HttpClient;", "request", "Lio/ktor/client/request/HttpRequestBuilder;", "block", "Lkotlin/Function2;", "Lio/ktor/client/plugins/websocket/DefaultClientWebSocketSession;", "Lkotlin/coroutines/Continuation;", "", "(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", FirebaseAnalytics.Param.METHOD, "Lio/ktor/http/HttpMethod;", "host", "", "port", "", "path", "(Lio/ktor/client/HttpClient;Lio/ktor/http/HttpMethod;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "urlString", "(Lio/ktor/client/HttpClient;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "webSocketSession", "(Lio/ktor/client/HttpClient;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lio/ktor/client/HttpClient;Lio/ktor/http/HttpMethod;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lio/ktor/client/HttpClient;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ws", "wss", "ktor-client-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class BuildersKt {

    /* JADX INFO: renamed from: io.ktor.client.plugins.websocket.BuildersKt$webSocket$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: builders.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.websocket.BuildersKt", f = "builders.kt", i = {0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4}, l = {242, 245, 101, 103, 103, 251, 251}, m = "webSocket", n = {"block", "this_$iv", "block", "this_$iv", "response$iv", "this_$iv", "response$iv", "it", "this_$iv", "response$iv", "it", "this_$iv", "response$iv", "it"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class C04971 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C04971(Continuation<? super C04971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BuildersKt.webSocket(null, null, null, this);
        }
    }

    public static final void WebSockets(HttpClientConfig<?> httpClientConfig, final Function1<? super WebSockets.Config, Unit> config) {
        Intrinsics.checkNotNullParameter(httpClientConfig, "<this>");
        Intrinsics.checkNotNullParameter(config, "config");
        httpClientConfig.install(WebSockets.INSTANCE, new Function1<WebSockets.Config, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.WebSockets.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(WebSockets.Config config2) {
                invoke2(config2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(WebSockets.Config install) {
                Intrinsics.checkNotNullParameter(install, "$this$install");
                config.invoke(install);
            }
        });
    }

    public static final Object webSocketSession(HttpClient httpClient, Function1<? super HttpRequestBuilder, Unit> function1, Continuation<? super DefaultClientWebSocketSession> continuation) {
        HttpClientPluginKt.plugin(httpClient, WebSockets.INSTANCE);
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        httpRequestBuilder.url(new Function2<URLBuilder, URLBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$statement$1$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(URLBuilder uRLBuilder, URLBuilder uRLBuilder2) {
                invoke2(uRLBuilder, uRLBuilder2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(URLBuilder url, URLBuilder it) {
                Intrinsics.checkNotNullParameter(url, "$this$url");
                Intrinsics.checkNotNullParameter(it, "it");
                url.setProtocol(URLProtocol.INSTANCE.getWS());
                url.setPort(url.getProtocol().getDefaultPort());
            }
        });
        function1.invoke(httpRequestBuilder);
        BuildersKt__Builders_commonKt.launch$default(httpClient, null, null, new AnonymousClass2(new HttpStatement(httpRequestBuilder, httpClient), completableDeferredCompletableDeferred$default, null), 3, null);
        return completableDeferredCompletableDeferred$default.await(continuation);
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: builders.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.client.plugins.websocket.BuildersKt$webSocketSession$2", f = "builders.kt", i = {0, 1, 1, 2, 2}, l = {240, 243, 49, 249, 249}, m = "invokeSuspend", n = {"this_$iv", "this_$iv", "response$iv", "this_$iv", "response$iv"}, s = {"L$0", "L$0", "L$2", "L$0", "L$1"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<DefaultClientWebSocketSession> $sessionDeferred;
        final /* synthetic */ HttpStatement $statement;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(HttpStatement httpStatement, CompletableDeferred<DefaultClientWebSocketSession> completableDeferred, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$statement = httpStatement;
            this.$sessionDeferred = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$statement, this.$sessionDeferred, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|68|(1:(1:(1:(1:(1:(2:9|10)(3:11|12|73))(4:14|15|65|66))(5:17|71|18|48|49))(4:22|67|23|(3:44|(3:47|48|49)|58)(2:52|53)))(2:27|28))(4:32|33|34|(2:36|58)(1:37))|38|69|39|(2:42|(0)(0))|58|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00e2, code lost:
        
            if (r4.cleanup(r1, r14) != r0) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00ed, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00ee, code lost:
        
            r1 = r15;
            r15 = r1;
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ac A[Catch: all -> 0x0052, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:23:0x004e, B:44:0x00ac, B:52:0x00e5, B:53:0x00ec), top: B:67:0x004e }] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00e5 A[Catch: all -> 0x0052, TRY_ENTER, TryCatch #0 {all -> 0x0052, blocks: (B:23:0x004e, B:44:0x00ac, B:52:0x00e5, B:53:0x00ec), top: B:67:0x004e }] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0102  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.websocket.BuildersKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ Object webSocketSession$default(HttpClient httpClient, HttpMethod httpMethod, String str, Integer num, String str2, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            httpMethod = HttpMethod.INSTANCE.getGet();
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocketSession.4
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        return webSocketSession(httpClient, httpMethod, str, num, str2, function1, continuation);
    }

    public static final Object webSocketSession(HttpClient httpClient, final HttpMethod httpMethod, final String str, final Integer num, final String str2, final Function1<? super HttpRequestBuilder, Unit> function1, Continuation<? super DefaultClientWebSocketSession> continuation) {
        return webSocketSession(httpClient, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocketSession.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocketSession) {
                Intrinsics.checkNotNullParameter(webSocketSession, "$this$webSocketSession");
                webSocketSession.setMethod(httpMethod);
                HttpRequestKt.url$default(webSocketSession, "ws", str, num, str2, null, 16, null);
                function1.invoke(webSocketSession);
            }
        }, continuation);
    }

    public static /* synthetic */ Object webSocketSession$default(HttpClient httpClient, String str, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocketSession.7
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        return webSocketSession(httpClient, str, function1, continuation);
    }

    public static final Object webSocketSession(HttpClient httpClient, final String str, final Function1<? super HttpRequestBuilder, Unit> function1, Continuation<? super DefaultClientWebSocketSession> continuation) {
        return webSocketSession(httpClient, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocketSession.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocketSession) {
                Intrinsics.checkNotNullParameter(webSocketSession, "$this$webSocketSession");
                URLParserKt.takeFrom(webSocketSession.getUrl(), str);
                function1.invoke(webSocketSession);
            }
        }, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0144, code lost:
    
        if (r2.cleanup(r10, r0) != r1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0183, code lost:
    
        if (r2.cleanup(r10, r0) != r1) goto L76;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0104 A[Catch: all -> 0x0095, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0095, blocks: (B:19:0x0050, B:67:0x0161, B:68:0x0168, B:22:0x0063, B:56:0x012e, B:53:0x011b, B:64:0x014c, B:30:0x0090, B:48:0x0104, B:69:0x0169, B:70:0x0170), top: B:82:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012e A[Catch: all -> 0x0095, PHI: r2 r8 r10
      0x012e: PHI (r2v14 ??) = (r2v19 ??), (r2v20 ??) binds: [B:54:0x012b, B:22:0x0063] A[DONT_GENERATE, DONT_INLINE]
      0x012e: PHI (r8v27 io.ktor.client.plugins.websocket.DefaultClientWebSocketSession) = 
      (r8v23 io.ktor.client.plugins.websocket.DefaultClientWebSocketSession)
      (r8v33 io.ktor.client.plugins.websocket.DefaultClientWebSocketSession)
     binds: [B:54:0x012b, B:22:0x0063] A[DONT_GENERATE, DONT_INLINE]
      0x012e: PHI (r10v16 io.ktor.client.statement.HttpResponse) = (r10v11 io.ktor.client.statement.HttpResponse), (r10v18 io.ktor.client.statement.HttpResponse) binds: [B:54:0x012b, B:22:0x0063] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x0095, blocks: (B:19:0x0050, B:67:0x0161, B:68:0x0168, B:22:0x0063, B:56:0x012e, B:53:0x011b, B:64:0x014c, B:30:0x0090, B:48:0x0104, B:69:0x0169, B:70:0x0170), top: B:82:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0169 A[Catch: all -> 0x0095, TryCatch #1 {all -> 0x0095, blocks: (B:19:0x0050, B:67:0x0161, B:68:0x0168, B:22:0x0063, B:56:0x012e, B:53:0x011b, B:64:0x014c, B:30:0x0090, B:48:0x0104, B:69:0x0169, B:70:0x0170), top: B:82:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, kotlin.jvm.functions.Function2<? super io.ktor.client.plugins.websocket.DefaultClientWebSocketSession, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r10v1, types: [io.ktor.client.statement.HttpResponse] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [io.ktor.client.statement.HttpStatement] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [io.ktor.client.statement.HttpStatement] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v13, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r8v43 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object webSocket(io.ktor.client.HttpClient r8, kotlin.jvm.functions.Function1<? super io.ktor.client.request.HttpRequestBuilder, kotlin.Unit> r9, kotlin.jvm.functions.Function2<? super io.ktor.client.plugins.websocket.DefaultClientWebSocketSession, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.websocket.BuildersKt.webSocket(io.ktor.client.HttpClient, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object webSocket$default(HttpClient httpClient, HttpMethod httpMethod, String str, Integer num, String str2, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            httpMethod = HttpMethod.INSTANCE.getGet();
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocket.4
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        return webSocket(httpClient, httpMethod, str, num, str2, function12, function2, continuation);
    }

    public static final Object webSocket(HttpClient httpClient, final HttpMethod httpMethod, final String str, final Integer num, final String str2, final Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocket.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocket) {
                Intrinsics.checkNotNullParameter(webSocket, "$this$webSocket");
                webSocket.setMethod(httpMethod);
                HttpRequestKt.url$default(webSocket, "ws", str, num, str2, null, 16, null);
                function1.invoke(webSocket);
            }
        }, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static /* synthetic */ Object webSocket$default(HttpClient httpClient, String str, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocket.7
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        return webSocket(httpClient, str, function1, function2, continuation);
    }

    public static final Object webSocket(HttpClient httpClient, final String str, final Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, HttpMethod.INSTANCE.getGet(), null, null, null, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.webSocket.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocket) {
                Intrinsics.checkNotNullParameter(webSocket, "$this$webSocket");
                webSocket.getUrl().setProtocol(URLProtocol.INSTANCE.getWS());
                webSocket.getUrl().setPort(UtilsKt.getPort(webSocket));
                URLParserKt.takeFrom(webSocket.getUrl(), str);
                function1.invoke(webSocket);
            }
        }, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static /* synthetic */ Object ws$default(HttpClient httpClient, HttpMethod httpMethod, String str, Integer num, String str2, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            httpMethod = HttpMethod.INSTANCE.getGet();
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.ws.2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        return ws(httpClient, httpMethod, str, num, str2, function12, function2, continuation);
    }

    public static final Object ws(HttpClient httpClient, HttpMethod httpMethod, String str, Integer num, String str2, Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, httpMethod, str, num, str2, function1, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static final Object ws(HttpClient httpClient, Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, function1, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static /* synthetic */ Object ws$default(HttpClient httpClient, String str, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.ws.5
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        return ws(httpClient, str, function1, function2, continuation);
    }

    public static final Object ws(HttpClient httpClient, String str, Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, str, function1, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static final Object wss(HttpClient httpClient, final Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.wss.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocket) {
                Intrinsics.checkNotNullParameter(webSocket, "$this$webSocket");
                webSocket.getUrl().setProtocol(URLProtocol.INSTANCE.getWSS());
                webSocket.getUrl().setPort(webSocket.getUrl().getProtocol().getDefaultPort());
                function1.invoke(webSocket);
            }
        }, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }

    public static /* synthetic */ Object wss$default(HttpClient httpClient, String str, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.wss.4
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        return wss(httpClient, str, function1, function2, continuation);
    }

    public static final Object wss(HttpClient httpClient, final String str, final Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWss = wss(httpClient, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.wss.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder wss) {
                Intrinsics.checkNotNullParameter(wss, "$this$wss");
                URLParserKt.takeFrom(wss.getUrl(), str);
                function1.invoke(wss);
            }
        }, function2, continuation);
        return objWss == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWss : Unit.INSTANCE;
    }

    public static /* synthetic */ Object wss$default(HttpClient httpClient, HttpMethod httpMethod, String str, Integer num, String str2, Function1 function1, Function2 function2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            httpMethod = HttpMethod.INSTANCE.getGet();
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            function1 = new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.wss.7
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(HttpRequestBuilder httpRequestBuilder) {
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                    invoke2(httpRequestBuilder);
                    return Unit.INSTANCE;
                }
            };
        }
        Function1 function12 = function1;
        return wss(httpClient, httpMethod, str, num, str2, function12, function2, continuation);
    }

    public static final Object wss(HttpClient httpClient, HttpMethod httpMethod, String str, final Integer num, String str2, final Function1<? super HttpRequestBuilder, Unit> function1, Function2<? super DefaultClientWebSocketSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWebSocket = webSocket(httpClient, httpMethod, str, num, str2, new Function1<HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.websocket.BuildersKt.wss.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestBuilder httpRequestBuilder) {
                invoke2(httpRequestBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpRequestBuilder webSocket) {
                Intrinsics.checkNotNullParameter(webSocket, "$this$webSocket");
                webSocket.getUrl().setProtocol(URLProtocol.INSTANCE.getWSS());
                if (num != null) {
                    webSocket.getUrl().setPort(num.intValue());
                }
                function1.invoke(webSocket);
            }
        }, function2, continuation);
        return objWebSocket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWebSocket : Unit.INSTANCE;
    }
}
