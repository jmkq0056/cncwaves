package com.stripe.offlinemode.forwarding;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.logging.DefaultTraceLogger;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.redaction.terminal.TerminalMessageRedactor;
import com.stripe.jvmcore.restclient.CustomHeadersInterceptor;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import com.stripe.loggingmodels.TagKt;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.StatusCode;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: OfflineRestService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 M2\u00020\u0001:\u0001MBY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u001c\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020\"H\u0002Jj\u0010$\u001a\u00020%\"\u001c\b\u0000\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H&`(\"\u001c\b\u0001\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H)`(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+2\b\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/H\u0002JÎ\u0001\u00100\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\b\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H1`(\"\u001c\b\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H&`(\"\u001c\b\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H)`(2\u0006\u00102\u001a\u0002032\u0018\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"06052\u0006\u00107\u001a\u00020\"2\u0006\u00108\u001a\u0002H)2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H&0:2\b\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0086@¢\u0006\u0002\u0010@J´\u0001\u0010A\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\b\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H1`(\"\u001c\b\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H&`(\"\u001c\b\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H)`(2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u00108\u001a\u0002H)2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H&0:2\b\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0082@¢\u0006\u0002\u0010FJ¼\u0001\u0010G\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\b\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H1`(\"\u001c\b\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H&`(\"\u001c\b\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\b\u00030'j\b\u0012\u0004\u0012\u0002H)`(2\u0006\u00102\u001a\u0002032\u0006\u0010H\u001a\u00020I2\u0006\u00107\u001a\u00020\"2\u0006\u00108\u001a\u0002H)2\f\u00109\u001a\b\u0012\u0004\u0012\u0002H&0:2\b\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0086@¢\u0006\u0002\u0010JJ\u0010\u0010K\u001a\u00020%2\u0006\u0010#\u001a\u00020\"H\u0016J(\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!*\u0012\u0012\u0002\b\u0003\u0012\u0002\b\u00030'j\u0006\u0012\u0002\b\u0003`(H\u0002R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u00178B@BX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001d\u0010\u001bR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineRestService;", "Lcom/stripe/offlinemode/forwarding/AuthTokenListener;", "moshi", "Lcom/squareup/moshi/Moshi;", "baseUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineStageLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V", "<set-?>", "Lokhttp3/OkHttpClient;", "authTokenClient", "client", "getClient", "()Lokhttp3/OkHttpClient;", "originalClient", "getOriginalClient", "originalClient$delegate", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "authHeaders", "", "", "token", "endLogs", "", "Rsp", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "Err", "response", "Lcom/stripe/jvmcore/restclient/RestResponse;", "timer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "trace", "Lcom/stripe/loggingmodels/Trace;", "get", "Req", "headers", "Lokhttp3/Headers;", "queryParams", "", "Lkotlin/Pair;", BbposAdapter.ENDPOINT_TAG_KEY, "error", "responseType", "Ljava/lang/Class;", "rpcRequest", "requestType", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;", "context", "Lcom/stripe/loggingmodels/Trace$Context;", "(Lokhttp3/Headers;Ljava/util/List;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeRequest", DefaultTraceLogger.TAG_KEY_HTTP_URL, "Lokhttp3/HttpUrl;", "request", "Lokhttp3/Request;", "(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "post", "body", "Lokhttp3/FormBody;", "(Lokhttp3/Headers;Lokhttp3/FormBody;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setAuthToken", "toMetricTags", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OfflineRestService implements AuthTokenListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(OfflineRestService.class, "originalClient", "getOriginalClient()Lokhttp3/OkHttpClient;", 0))};
    private static final String KEY_AUTH_HEADER = "Authorization";
    private static final String SERVICE_NAME = "OfflineRestService";
    private static final String TOKEN_PREFIX = "Bearer";
    private OkHttpClient authTokenClient;
    private final RestClient.BaseUrlProvider baseUrlProvider;
    private final LogWriter logWriter;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> logger;
    private final Moshi moshi;
    private final OfflineConfigHelper offlineConfigHelper;

    /* JADX INFO: renamed from: originalClient$delegate, reason: from kotlin metadata */
    private final OkHttpClientProvider originalClient;
    private final TraceLogger traceLogger;

    public OfflineRestService(Moshi moshi, RestClient.BaseUrlProvider baseUrlProvider, OkHttpClientProvider okHttpClientProvider, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> logger, TraceLogger traceLogger, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.moshi = moshi;
        this.baseUrlProvider = baseUrlProvider;
        this.offlineConfigHelper = offlineConfigHelper;
        this.logger = logger;
        this.traceLogger = traceLogger;
        this.logWriter = logWriter;
        this.originalClient = okHttpClientProvider;
    }

    private final OkHttpClient getOriginalClient() {
        return this.originalClient.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized OkHttpClient getClient() {
        OkHttpClient originalClient;
        originalClient = this.authTokenClient;
        if (originalClient == null) {
            originalClient = getOriginalClient();
        }
        return originalClient;
    }

    public final <Req extends Message<Req, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> Object post(Headers headers, FormBody formBody, String str, Err err, Class<Rsp> cls, Req req, StageScope.RequestType requestType, Trace.Context context, Continuation<? super RestResponse<Rsp, Err>> continuation) {
        HttpUrl httpUrlBuild = HttpUrl.INSTANCE.get(this.baseUrlProvider.getBaseUrl()).newBuilder().addPathSegments(str).build();
        return makeRequest(httpUrlBuild, new Request.Builder().url(httpUrlBuild).headers(headers).post(formBody).build(), err, cls, req, requestType, context, continuation);
    }

    public final <Req extends Message<Req, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> Object get(Headers headers, List<Pair<String, String>> list, String str, Err err, Class<Rsp> cls, Req req, StageScope.RequestType requestType, Trace.Context context, Continuation<? super RestResponse<Rsp, Err>> continuation) {
        HttpUrl.Builder builderAddPathSegments = HttpUrl.INSTANCE.get(this.baseUrlProvider.getBaseUrl()).newBuilder().addPathSegments(str);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            builderAddPathSegments.addQueryParameter((String) pair.component1(), (String) pair.component2());
        }
        HttpUrl httpUrlBuild = builderAddPathSegments.build();
        return makeRequest(httpUrlBuild, new Request.Builder().url(httpUrlBuild).headers(headers).get().build(), err, cls, req, requestType, context, continuation);
    }

    @Override // com.stripe.offlinemode.forwarding.AuthTokenListener
    public void setAuthToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        OkHttpClient.Builder builderNewBuilder = getClient().newBuilder();
        CollectionsKt.removeAll((List) builderNewBuilder.interceptors(), (Function1) new Function1<Interceptor, Boolean>() { // from class: com.stripe.offlinemode.forwarding.OfflineRestService$setAuthToken$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Interceptor it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(it instanceof CustomHeadersInterceptor);
            }
        });
        OkHttpClient.Builder builderAddInterceptor = builderNewBuilder.addInterceptor(new CustomHeadersInterceptor(authHeaders(token)));
        Long httpHighTimeoutMs = this.offlineConfigHelper.getHttpHighTimeoutMs();
        if (httpHighTimeoutMs != null) {
            long jLongValue = httpHighTimeoutMs.longValue();
            builderAddInterceptor.connectTimeout(jLongValue, TimeUnit.MILLISECONDS);
            builderAddInterceptor.readTimeout(jLongValue, TimeUnit.MILLISECONDS);
        }
        this.authTokenClient = builderAddInterceptor.build();
    }

    private final Map<String, String> authHeaders(String token) {
        return MapsKt.mapOf(TuplesKt.to("Authorization", "Bearer " + token));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> void endLogs(RestResponse<Rsp, Err> response, PendingTimer timer, Trace trace) {
        if (response instanceof RestResponse.Success) {
            if (timer != null) {
                HealthLogger.endTimer$default(this.logger, timer, Outcome.Ok.INSTANCE, MapsKt.emptyMap(), null, 8, null);
            }
            this.traceLogger.endTraceWithSuccess(trace, ((RestResponse.Success) response).getResponse(), response.getHeaders());
        } else if (response instanceof RestResponse.ServerError) {
            if (timer != null) {
                HealthLogger.endTimer$default(this.logger, timer, Outcome.HttpError.INSTANCE.toOutcome(response.getStatusCode()), toMetricTags(((RestResponse.ServerError) response).getResponse()), null, 8, null);
            }
            TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, trace, response.toLogString(), String.valueOf(response.getStatusCode()), null, 8, null);
        } else if (response instanceof RestResponse.ParseError) {
            if (timer != null) {
                HealthLogger.endTimer$default(this.logger, timer, Outcome.HttpError.ParseError.INSTANCE, MapsKt.emptyMap(), null, 8, null);
            }
            TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, trace, "Failed to Parse REST body, " + response, String.valueOf(response.getStatusCode()), null, 8, null);
        }
    }

    private final Map<String, String> toMetricTags(Message<?, ?> message) {
        List listEmptyList;
        TerminalException terminalException$default;
        TerminalErrorCode errorCode;
        String logString;
        if (message instanceof ErrorWrapper) {
            ErrorWrapper errorWrapper = (ErrorWrapper) message;
            List<Tag> tags = TagKt.toTags(errorWrapper);
            ErrorResponse errorResponse = errorWrapper.error;
            Tag.HealthTag healthTag = null;
            if (errorResponse != null && (terminalException$default = ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, errorResponse, null, 1, null)) != null && (errorCode = terminalException$default.getErrorCode()) != null && (logString = errorCode.toLogString()) != null) {
                healthTag = new Tag.HealthTag(OfflineMetricTags.ERROR_REASON, logString);
            }
            listEmptyList = CollectionsKt.plus((Collection<? extends Tag.HealthTag>) tags, healthTag);
        } else {
            listEmptyList = CollectionsKt.emptyList();
        }
        List<Tag> listFilterNotNull = CollectionsKt.filterNotNull(listEmptyList);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listFilterNotNull, 10)), 16));
        for (Tag tag : listFilterNotNull) {
            Pair pair = TuplesKt.to(tag.getKey(), tag.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <Req extends Message<Req, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> Object makeRequest(final HttpUrl httpUrl, Request request, final Err err, final Class<Rsp> cls, Req req, StageScope.RequestType requestType, Trace.Context context, Continuation<? super RestResponse<Rsp, Err>> continuation) throws IllegalAccessException, InstantiationException {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final PendingTimer pendingTimerStartTimer = this.logger.startTimer(MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.REQUEST_TYPE, requestType.name())), new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.offlinemode.forwarding.OfflineRestService$makeRequest$2$timer$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder startTimer, Timer t) {
                Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                Intrinsics.checkNotNullParameter(t, "t");
                startTimer.http_request = t;
            }
        });
        final Trace traceStartTrace$default = TraceLogger.startTrace$default(this.traceLogger, SERVICE_NAME, requestType.name(), req, (Long) null, (Long) null, (Long) null, context, request.url().getUrl(), request.method(), MapsKt.toMap(request.headers()), (Map) null, WinError.ERROR_CANNOT_DETECT_DRIVER_FAILURE, (Object) null);
        final Call callNewCall = getClient().newCall(request);
        FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() { // from class: com.stripe.offlinemode.forwarding.OfflineRestService$makeRequest$2$1$1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                RestResponse.ServerError serverError = new RestResponse.ServerError(err, StatusCode.HTTP_ERROR_UNKNOWN_STATE, httpUrl.getUrl(), null, this.moshi, TerminalMessageRedactor.INSTANCE, new TreeMap());
                this.endLogs(serverError, pendingTimerStartTimer, traceStartTrace$default);
                Continuation continuation2 = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m817constructorimpl(serverError));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                RestResponse restResponse = RestResponse.INSTANCE.toRestResponse(response, this.moshi, cls, err, TerminalMessageRedactor.INSTANCE, this.logWriter);
                this.endLogs(restResponse, pendingTimerStartTimer, traceStartTrace$default);
                Continuation continuation2 = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m817constructorimpl(restResponse));
            }
        });
        cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.stripe.offlinemode.forwarding.OfflineRestService$makeRequest$2$1$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                try {
                    this.this$0.logger.endTimer(pendingTimerStartTimer, Outcome.Canceled.INSTANCE, MapsKt.emptyMap(), th);
                    callNewCall.cancel();
                } catch (Throwable unused) {
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
