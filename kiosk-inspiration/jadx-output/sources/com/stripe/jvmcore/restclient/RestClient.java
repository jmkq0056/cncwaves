package com.stripe.jvmcore.restclient;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.squareup.wire.WireJsonAdapterFactory;
import com.stripe.jvmcore.redaction.CustomMessageRedactor;
import com.stripe.jvmcore.traffictype.TrafficType;
import com.stripe.logwriter.LogWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: RestClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002<=B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JË\u0001\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\b\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\b\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\b\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)¢\u0006\u0002\u0010*JË\u0001\u0010+\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\b\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\b\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\b\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)¢\u0006\u0002\u0010.JË\u0001\u0010/\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\b\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\b\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\b\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00100\u001a\u0002012\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)¢\u0006\u0002\u00102J\u0014\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#H\u0016J±\u0001\u00103\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\b\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\b\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\b\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00104\u001a\u0002052\u0006\u0010$\u001a\u0002H\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)H\u0002¢\u0006\u0002\u00106JÍ\u0001\u00107\u001a\u000e\u0012\u0004\u0012\u0002H\u0017\u0012\u0004\u0012\u0002H\u00180\u0016\"\u001c\b\u0000\u0010\u0019*\u0016\u0012\u0004\u0012\u0002H\u0019\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0019`\u001b\"\u001c\b\u0001\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0017`\u001b\"\u001c\b\u0002\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u001aj\b\u0012\u0004\u0012\u0002H\u0018`\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u00108\u001a\u0002092\u0006\u0010!\u001a\u00020\u001d2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0#2\u0006\u0010$\u001a\u0002H\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00170&2\u0006\u0010'\u001a\u0002H\u00182\u0006\u0010(\u001a\u00020)H\u0002¢\u0006\u0002\u0010:J\u0006\u0010;\u001a\u00020\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestClient;", "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;", "builder", "Lcom/stripe/jvmcore/restclient/RestClient$Builder;", "(Lcom/stripe/jvmcore/restclient/RestClient$Builder;)V", "baseUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "customRestInterceptors", "", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "moshi", "Lcom/squareup/moshi/Moshi;", "kotlin.jvm.PlatformType", "okHttpClient", "Lokhttp3/OkHttpClient;", "requestSendInterceptor", "Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;", "blockingGet", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "urlBuilder", "Lokhttp3/HttpUrl$Builder;", "path", "customHeaders", "", "requestProto", "responseProtoType", "Ljava/lang/Class;", "error", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/HttpUrl$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "blockingMultipartPost", "multipartBuilder", "Lokhttp3/MultipartBody$Builder;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "blockingPost", "formBuilder", "Lokhttp3/FormBody$Builder;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "execute", "request", "Lokhttp3/Request;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "postHelper", "requestBody", "Lokhttp3/RequestBody;", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;", "toBuilder", "BaseUrlProvider", "Builder", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RestClient implements CustomHeadersProvider {
    private final BaseUrlProvider baseUrlProvider;
    private final CustomMessageRedactor customMessageRedactor;
    private final Set<RestInterceptor> customRestInterceptors;
    private final LogWriter logWriter;
    private final Moshi moshi;
    private final OkHttpClient okHttpClient;
    private final RequestSendInterceptor requestSendInterceptor;

    /* JADX INFO: compiled from: RestClient.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "", "getBaseUrl", "", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface BaseUrlProvider {
        String getBaseUrl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RestClient(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        OkHttpClient okHttpClientBuild = builder.getClientBuilder$base().build();
        this.okHttpClient = okHttpClientBuild;
        this.baseUrlProvider = builder.getBaseUrlProvider();
        this.customRestInterceptors = builder.getCustomApplicationInterceptors$base();
        Moshi moshi = builder.getMoshi();
        if (moshi == null) {
            moshi = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, false, 3, 0 == true ? 1 : 0)).build();
        }
        this.moshi = moshi;
        this.customMessageRedactor = builder.getCustomMessageRedactor();
        this.logWriter = builder.getLogWriter();
        Intrinsics.checkNotNullExpressionValue(moshi, "moshi");
        this.requestSendInterceptor = new RequestSendInterceptor(okHttpClientBuild, moshi, builder.getCustomMessageRedactor(), builder.getLogWriter());
    }

    public final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> blockingPost(String service, String method, FormBody.Builder formBuilder, String path, Map<String, String> customHeaders, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(formBuilder, "formBuilder");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(customHeaders, "customHeaders");
        Intrinsics.checkNotNullParameter(requestProto, "requestProto");
        Intrinsics.checkNotNullParameter(responseProtoType, "responseProtoType");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return postHelper(service, method, formBuilder.build(), path, customHeaders, requestProto, responseProtoType, error, restConfig);
    }

    public final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> blockingMultipartPost(String service, String method, MultipartBody.Builder multipartBuilder, String path, Map<String, String> customHeaders, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(multipartBuilder, "multipartBuilder");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(customHeaders, "customHeaders");
        Intrinsics.checkNotNullParameter(requestProto, "requestProto");
        Intrinsics.checkNotNullParameter(responseProtoType, "responseProtoType");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return postHelper(service, method, multipartBuilder.build(), path, customHeaders, requestProto, responseProtoType, error, restConfig);
    }

    private final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> postHelper(String service, String method, RequestBody requestBody, String path, Map<String, String> customHeaders, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        return execute(service, method, new Request.Builder().url(HttpUrl.INSTANCE.get(this.baseUrlProvider.getBaseUrl()).newBuilder().addPathSegments(path).build()).post(requestBody).headers(Headers.INSTANCE.of(customHeaders)).tag(TrafficType.class, TrafficType.Rest.INSTANCE).build(), requestProto, responseProtoType, error, restConfig);
    }

    public final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> blockingGet(String service, String method, HttpUrl.Builder urlBuilder, String path, Map<String, String> customHeaders, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(urlBuilder, "urlBuilder");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(customHeaders, "customHeaders");
        Intrinsics.checkNotNullParameter(requestProto, "requestProto");
        Intrinsics.checkNotNullParameter(responseProtoType, "responseProtoType");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        HttpUrl httpUrl = HttpUrl.INSTANCE.get(this.baseUrlProvider.getBaseUrl());
        return execute(service, method, new Request.Builder().url(urlBuilder.scheme(httpUrl.scheme()).host(httpUrl.host()).port(httpUrl.port()).addPathSegments(path).build()).get().headers(Headers.INSTANCE.of(customHeaders)).tag(TrafficType.class, TrafficType.Rest.INSTANCE).build(), requestProto, responseProtoType, error, restConfig);
    }

    private final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> execute(String service, String method, Request request, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        return new InterceptorChain(CollectionsKt.plus((Collection<? extends RequestSendInterceptor>) CollectionsKt.toList(this.customRestInterceptors), this.requestSendInterceptor), 0, service, method, request, requestProto, responseProtoType, error, restConfig).proceed(request);
    }

    @Override // com.stripe.jvmcore.restclient.CustomHeadersProvider
    public Map<String, String> customHeaders() {
        List<Interceptor> listInterceptors = this.okHttpClient.interceptors();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listInterceptors) {
            if (obj instanceof CustomHeadersProvider) {
                arrayList.add(obj);
            }
        }
        Map<String, String> mapEmptyMap = MapsKt.emptyMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            mapEmptyMap = MapsKt.plus(mapEmptyMap, ((CustomHeadersProvider) it.next()).customHeaders());
        }
        return mapEmptyMap;
    }

    public final Builder toBuilder() {
        return new Builder(this, this.customMessageRedactor, this.logWriter);
    }

    /* JADX INFO: compiled from: RestClient.kt */
    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B!\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB/\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u001a\u0010+\u001a\u00020\u00002\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020.0-J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u001bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0006\u00101\u001a\u00020\u0003J\u000e\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020\u0000J\u000e\u00106\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&J\u000e\u00107\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u00108\u001a\u00020\u00002\u0006\u00109\u001a\u00020:J\u000e\u0010;\u001a\u00020\u00002\u0006\u00103\u001a\u000204R\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006<"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestClient$Builder;", "", "client", "Lcom/stripe/jvmcore/restclient/RestClient;", "restRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/jvmcore/restclient/RestClient;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V", "getOkHttpClient", "Lkotlin/Function0;", "Lokhttp3/OkHttpClient;", "baseUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V", "getBaseUrlProvider$base", "()Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "setBaseUrlProvider$base", "(Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;)V", "clientBuilder", "Lokhttp3/OkHttpClient$Builder;", "getClientBuilder$base", "()Lokhttp3/OkHttpClient$Builder;", "clientBuilder$delegate", "Lkotlin/Lazy;", "customApplicationInterceptors", "", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "getCustomApplicationInterceptors$base", "()Ljava/util/Set;", "customMessageRedactor", "getCustomMessageRedactor$base", "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "setCustomMessageRedactor$base", "(Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)V", "getLogWriter$base", "()Lcom/stripe/logwriter/LogWriter;", "moshi", "Lcom/squareup/moshi/Moshi;", "getMoshi$base", "()Lcom/squareup/moshi/Moshi;", "setMoshi$base", "(Lcom/squareup/moshi/Moshi;)V", "addCustomHeaders", "customHeaders", "", "", "addCustomRestInterceptor", "interceptor", "build", "callTimeout", "seconds", "", "clearCustomHeaders", "connectTimeout", "readTimeout", "retryOnConnectionFailure", "retry", "", "writeTimeout", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private BaseUrlProvider baseUrlProvider;

        /* JADX INFO: renamed from: clientBuilder$delegate, reason: from kotlin metadata */
        private final Lazy clientBuilder;
        private final Set<RestInterceptor> customApplicationInterceptors;
        private CustomMessageRedactor customMessageRedactor;
        private final Function0<OkHttpClient> getOkHttpClient;
        private final LogWriter logWriter;
        private Moshi moshi;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(Function0<? extends OkHttpClient> getOkHttpClient, CustomMessageRedactor customMessageRedactor, LogWriter logWriter, BaseUrlProvider baseUrlProvider) {
            Intrinsics.checkNotNullParameter(getOkHttpClient, "getOkHttpClient");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
            this.getOkHttpClient = getOkHttpClient;
            this.logWriter = logWriter;
            this.baseUrlProvider = baseUrlProvider;
            this.clientBuilder = LazyKt.lazy(new Function0<OkHttpClient.Builder>() { // from class: com.stripe.jvmcore.restclient.RestClient$Builder$clientBuilder$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final OkHttpClient.Builder invoke() {
                    return ((OkHttpClient) this.this$0.getOkHttpClient.invoke()).newBuilder();
                }
            });
            this.customApplicationInterceptors = new LinkedHashSet();
            this.customMessageRedactor = customMessageRedactor;
        }

        public /* synthetic */ Builder(Function0 function0, CustomMessageRedactor customMessageRedactor, LogWriter logWriter, BaseUrlProvider baseUrlProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(function0, (i & 2) != 0 ? null : customMessageRedactor, logWriter, baseUrlProvider);
        }

        /* JADX INFO: renamed from: getLogWriter$base, reason: from getter */
        public final LogWriter getLogWriter() {
            return this.logWriter;
        }

        /* JADX INFO: renamed from: getBaseUrlProvider$base, reason: from getter */
        public final BaseUrlProvider getBaseUrlProvider() {
            return this.baseUrlProvider;
        }

        public final void setBaseUrlProvider$base(BaseUrlProvider baseUrlProvider) {
            Intrinsics.checkNotNullParameter(baseUrlProvider, "<set-?>");
            this.baseUrlProvider = baseUrlProvider;
        }

        /* JADX INFO: renamed from: getMoshi$base, reason: from getter */
        public final Moshi getMoshi() {
            return this.moshi;
        }

        public final void setMoshi$base(Moshi moshi) {
            this.moshi = moshi;
        }

        public final OkHttpClient.Builder getClientBuilder$base() {
            return (OkHttpClient.Builder) this.clientBuilder.getValue();
        }

        public final Set<RestInterceptor> getCustomApplicationInterceptors$base() {
            return this.customApplicationInterceptors;
        }

        /* JADX INFO: renamed from: getCustomMessageRedactor$base, reason: from getter */
        public final CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        public final void setCustomMessageRedactor$base(CustomMessageRedactor customMessageRedactor) {
            this.customMessageRedactor = customMessageRedactor;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(RestClient client, CustomMessageRedactor customMessageRedactor, LogWriter logWriter) {
            this(new PropertyReference0Impl(client) { // from class: com.stripe.jvmcore.restclient.RestClient.Builder.1
                @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
                public Object get() {
                    return ((RestClient) this.receiver).okHttpClient;
                }
            }, customMessageRedactor, logWriter, client.baseUrlProvider);
            Intrinsics.checkNotNullParameter(client, "client");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            CollectionsKt.addAll(this.customApplicationInterceptors, client.customRestInterceptors);
            this.moshi = client.moshi;
        }

        public final Builder addCustomHeaders(Map<String, String> customHeaders) {
            Intrinsics.checkNotNullParameter(customHeaders, "customHeaders");
            getClientBuilder$base().addInterceptor(new CustomHeadersInterceptor(customHeaders));
            return this;
        }

        public final Builder clearCustomHeaders() {
            CollectionsKt.removeAll((List) getClientBuilder$base().interceptors(), (Function1) new Function1<Interceptor, Boolean>() { // from class: com.stripe.jvmcore.restclient.RestClient$Builder$clearCustomHeaders$1$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Interceptor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(it instanceof CustomHeadersInterceptor);
                }
            });
            return this;
        }

        public final Builder callTimeout(long seconds) {
            getClientBuilder$base().callTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder connectTimeout(long seconds) {
            getClientBuilder$base().callTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder readTimeout(long seconds) {
            getClientBuilder$base().readTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder writeTimeout(long seconds) {
            getClientBuilder$base().writeTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder retryOnConnectionFailure(boolean retry) {
            getClientBuilder$base().retryOnConnectionFailure(retry);
            return this;
        }

        public final Builder addCustomRestInterceptor(RestInterceptor interceptor) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            this.customApplicationInterceptors.add(interceptor);
            return this;
        }

        public final Builder baseUrlProvider(BaseUrlProvider baseUrlProvider) {
            Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
            this.baseUrlProvider = baseUrlProvider;
            return this;
        }

        public final Builder moshi(Moshi moshi) {
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            this.moshi = moshi;
            return this;
        }

        public final Builder restRedactor(CustomMessageRedactor restRedactor) {
            Intrinsics.checkNotNullParameter(restRedactor, "restRedactor");
            this.customMessageRedactor = restRedactor;
            return this;
        }

        public final RestClient build() {
            return new RestClient(this);
        }
    }
}
