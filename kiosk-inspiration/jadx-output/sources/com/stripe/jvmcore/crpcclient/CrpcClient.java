package com.stripe.jvmcore.crpcclient;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.crpcclient.CrpcTimeout;
import com.stripe.jvmcore.traffictype.TrafficType;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.trace.RequestInfoPb;
import com.stripe.proto.net.rpc.base.RpcEC;
import com.stripe.proto.net.rpc.base.RpcRequest;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.time.Duration;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.ByteString;

/* JADX INFO: compiled from: CrpcClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0003345B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0083\u0001\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0012\b\u0000\u0010\u001d*\f\u0012\u0004\u0012\u0002H\u001d\u0012\u0002\b\u00030\u001e\"\u0012\b\u0001\u0010\u001f*\f\u0012\u0004\u0012\u0002H\u001f\u0012\u0002\b\u00030\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u0002H\u001f2\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u001f0%2\f\u0010&\u001a\b\u0012\u0004\u0012\u0002H\u001d0%2\u0014\b\u0002\u0010'\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0(¢\u0006\u0002\u0010)Ja\u0010*\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0012\b\u0000\u0010\u001d*\f\u0012\u0004\u0012\u0002H\u001d\u0012\u0002\b\u00030\u001e\"\u0012\b\u0001\u0010\u001f*\f\u0012\u0004\u0012\u0002H\u001f\u0012\u0002\b\u00030\u001e2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002H\u001f2\f\u00100\u001a\b\u0012\u0004\u0012\u0002H\u001d0%H\u0002¢\u0006\u0002\u00101J\u0006\u00102\u001a\u00020\u0003R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u00066"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "", "builder", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;", "(Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;)V", "baseUrlProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "getBaseUrlProvider", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "customCrpcInterceptors", "", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "okHttpClient", "Lokhttp3/OkHttpClient;", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "requestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "getRequestContextProvider", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "<set-?>", "", "requestId", "getRequestId", "()J", "blockingPost", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "M", "Lcom/squareup/wire/Message;", "RE", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "message", "requestProtoAdapter", "Lcom/squareup/wire/ProtoAdapter;", "responseProtoAdapter", "headers", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/util/Map;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "execute", "httpRequest", "Lokhttp3/Request;", "crpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "apiRequest", "protoAdapter", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "toBuilder", "BaseUrlProvider", "Builder", "CrpcRequestContextProvider", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CrpcClient {
    private final BaseUrlProvider baseUrlProvider;
    private final Set<CustomCrpcInterceptor> customCrpcInterceptors;
    private final LogWriter logWriter;
    private final OkHttpClient okHttpClient;
    private final CrpcRequestContextProvider requestContextProvider;
    private long requestId;

    /* JADX INFO: compiled from: CrpcClient.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "", "getBaseUrl", "", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface BaseUrlProvider {
        String getBaseUrl();
    }

    public CrpcClient(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.okHttpClient = builder.getClientBuilder$crpcclient().build();
        this.baseUrlProvider = builder.getBaseUrlProvider();
        this.requestContextProvider = builder.getRequestContextProvider();
        this.customCrpcInterceptors = builder.getCustomApplicationInterceptors$crpcclient();
        this.logWriter = builder.getLogWriter();
    }

    public final OkHttpClient getOkHttpClient() {
        return this.okHttpClient;
    }

    public final BaseUrlProvider getBaseUrlProvider() {
        return this.baseUrlProvider;
    }

    public final CrpcRequestContextProvider getRequestContextProvider() {
        return this.requestContextProvider;
    }

    public final long getRequestId() {
        return this.requestId;
    }

    private final <M extends Message<M, ?>, RE extends Message<RE, ?>> CrpcResponse<M> execute(Request httpRequest, RpcRequest crpcRequest, RE apiRequest, ProtoAdapter<M> protoAdapter) {
        OkHttpClient okHttpClientBuild;
        CrpcResponse.RpcError rpcError;
        Iterator<T> it = this.customCrpcInterceptors.iterator();
        while (it.hasNext()) {
            ((CustomCrpcInterceptor) it.next()).preCallAction(httpRequest, crpcRequest, apiRequest);
        }
        CrpcTimeout requestTimeout = this.requestContextProvider.getRequestTimeout(crpcRequest);
        if (requestTimeout instanceof CrpcTimeout.Default) {
            okHttpClientBuild = this.okHttpClient;
        } else if (requestTimeout instanceof CrpcTimeout.Specified) {
            CrpcTimeout.Specified specified = (CrpcTimeout.Specified) requestTimeout;
            okHttpClientBuild = this.okHttpClient.newBuilder().connectTimeout(Duration.m2190getInWholeMillisecondsimpl(specified.m487getTimeoutUwyO8pc()), TimeUnit.MILLISECONDS).readTimeout(Duration.m2190getInWholeMillisecondsimpl(specified.m487getTimeoutUwyO8pc()), TimeUnit.MILLISECONDS).build();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        try {
            synchronized (this) {
                Response responseExecute = FirebasePerfOkHttpClient.execute(okHttpClientBuild.newCall(httpRequest));
                try {
                    rpcError = MappersKt.toCrpcResponse(responseExecute, crpcRequest.id, protoAdapter, this.logWriter);
                    CloseableKt.closeFinally(responseExecute, null);
                } finally {
                }
            }
        } catch (IOException e) {
            RpcEC rpcEC = RpcEC.SERVER_UNREACHABLE;
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            rpcError = new CrpcResponse.RpcError(rpcEC, message, null, e, 4, null);
        } catch (Throwable th) {
            RpcEC rpcEC2 = RpcEC.RPC_ERROR;
            String message2 = th.getMessage();
            if (message2 == null) {
                message2 = "";
            }
            rpcError = new CrpcResponse.RpcError(rpcEC2, message2, null, th, 4, null);
        }
        Iterator<T> it2 = this.customCrpcInterceptors.iterator();
        while (it2.hasNext()) {
            ((CustomCrpcInterceptor) it2.next()).postCallAction(httpRequest, crpcRequest, apiRequest, rpcError);
        }
        return rpcError;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CrpcResponse blockingPost$default(CrpcClient crpcClient, String str, String str2, Message message, ProtoAdapter protoAdapter, ProtoAdapter protoAdapter2, Map map, int i, Object obj) {
        if ((i & 32) != 0) {
            map = MapsKt.emptyMap();
        }
        return crpcClient.blockingPost(str, str2, message, protoAdapter, protoAdapter2, map);
    }

    public final <M extends Message<M, ?>, RE extends Message<RE, ?>> CrpcResponse<M> blockingPost(String service, String method, RE message, ProtoAdapter<RE> requestProtoAdapter, ProtoAdapter<M> responseProtoAdapter, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(requestProtoAdapter, "requestProtoAdapter");
        Intrinsics.checkNotNullParameter(responseProtoAdapter, "responseProtoAdapter");
        Intrinsics.checkNotNullParameter(headers, "headers");
        long j = this.requestId;
        this.requestId = 1 + j;
        ByteString byteStringOf$default = ByteString.Companion.of$default(ByteString.INSTANCE, requestProtoAdapter.encode(message), 0, 0, 3, null);
        String sessionToken = this.requestContextProvider.getToken();
        long j2 = 0;
        String str = null;
        RequestInfoPb requestInfoPb = null;
        RpcRequest rpcRequest = new RpcRequest(j, service, method, byteStringOf$default, j2, str, this.requestContextProvider.getLocalIp(), sessionToken, requestInfoPb, this.requestContextProvider.getVersionInfo(), this.requestContextProvider.getDeviceInfo(), 0L, null, 6448, null);
        HttpUrl httpUrlBuild = HttpUrl.INSTANCE.get(this.baseUrlProvider.getBaseUrl()).newBuilder().addPathSegment("rpcservice").addPathSegment(service).build();
        return execute(new Request.Builder().url(httpUrlBuild).post(RequestBody.Companion.create$default(RequestBody.INSTANCE, RpcRequest.ADAPTER.encode(rpcRequest), (MediaType) null, 0, 0, 7, (Object) null)).tag(TrafficType.class, new TrafficType.Crpc(service, method)).headers(Headers.INSTANCE.of(headers)).build(), rpcRequest, message, responseProtoAdapter);
    }

    public final Builder toBuilder() {
        return new Builder(this);
    }

    /* JADX INFO: compiled from: CrpcClient.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B+\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001bJ\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u0003J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00060"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;", "", "client", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)V", "getOkHttpClient", "Lkotlin/Function0;", "Lokhttp3/OkHttpClient;", "baseUrlProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "requestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/logwriter/LogWriter;)V", "getBaseUrlProvider$crpcclient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "setBaseUrlProvider$crpcclient", "(Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;)V", "clientBuilder", "Lokhttp3/OkHttpClient$Builder;", "getClientBuilder$crpcclient", "()Lokhttp3/OkHttpClient$Builder;", "clientBuilder$delegate", "Lkotlin/Lazy;", "customApplicationInterceptors", "", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "getCustomApplicationInterceptors$crpcclient", "()Ljava/util/Set;", "getGetOkHttpClient$crpcclient", "()Lkotlin/jvm/functions/Function0;", "getLogWriter$crpcclient", "()Lcom/stripe/logwriter/LogWriter;", "getRequestContextProvider$crpcclient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "addCustomCrpcInterceptor", "interceptor", "build", "callTimeout", "seconds", "", "connectTimeout", "readTimeout", "retryOnConnectionFailure", "retry", "", "writeTimeout", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private BaseUrlProvider baseUrlProvider;

        /* JADX INFO: renamed from: clientBuilder$delegate, reason: from kotlin metadata */
        private final Lazy clientBuilder;
        private final Set<CustomCrpcInterceptor> customApplicationInterceptors;
        private final Function0<OkHttpClient> getOkHttpClient;
        private final LogWriter logWriter;
        private final CrpcRequestContextProvider requestContextProvider;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(Function0<? extends OkHttpClient> getOkHttpClient, BaseUrlProvider baseUrlProvider, CrpcRequestContextProvider requestContextProvider, LogWriter logWriter) {
            Intrinsics.checkNotNullParameter(getOkHttpClient, "getOkHttpClient");
            Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
            Intrinsics.checkNotNullParameter(requestContextProvider, "requestContextProvider");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            this.getOkHttpClient = getOkHttpClient;
            this.baseUrlProvider = baseUrlProvider;
            this.requestContextProvider = requestContextProvider;
            this.logWriter = logWriter;
            this.clientBuilder = LazyKt.lazy(new Function0<OkHttpClient.Builder>() { // from class: com.stripe.jvmcore.crpcclient.CrpcClient$Builder$clientBuilder$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final OkHttpClient.Builder invoke() {
                    return this.this$0.getGetOkHttpClient$crpcclient().invoke().newBuilder();
                }
            });
            this.customApplicationInterceptors = new LinkedHashSet();
        }

        public final Function0<OkHttpClient> getGetOkHttpClient$crpcclient() {
            return this.getOkHttpClient;
        }

        /* JADX INFO: renamed from: getBaseUrlProvider$crpcclient, reason: from getter */
        public final BaseUrlProvider getBaseUrlProvider() {
            return this.baseUrlProvider;
        }

        public final void setBaseUrlProvider$crpcclient(BaseUrlProvider baseUrlProvider) {
            Intrinsics.checkNotNullParameter(baseUrlProvider, "<set-?>");
            this.baseUrlProvider = baseUrlProvider;
        }

        /* JADX INFO: renamed from: getRequestContextProvider$crpcclient, reason: from getter */
        public final CrpcRequestContextProvider getRequestContextProvider() {
            return this.requestContextProvider;
        }

        /* JADX INFO: renamed from: getLogWriter$crpcclient, reason: from getter */
        public final LogWriter getLogWriter() {
            return this.logWriter;
        }

        public final OkHttpClient.Builder getClientBuilder$crpcclient() {
            return (OkHttpClient.Builder) this.clientBuilder.getValue();
        }

        public final Set<CustomCrpcInterceptor> getCustomApplicationInterceptors$crpcclient() {
            return this.customApplicationInterceptors;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(CrpcClient client) {
            this(new PropertyReference0Impl(client) { // from class: com.stripe.jvmcore.crpcclient.CrpcClient.Builder.1
                @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
                public Object get() {
                    return ((CrpcClient) this.receiver).getOkHttpClient();
                }
            }, client.getBaseUrlProvider(), client.getRequestContextProvider(), client.logWriter);
            Intrinsics.checkNotNullParameter(client, "client");
            CollectionsKt.addAll(this.customApplicationInterceptors, client.customCrpcInterceptors);
        }

        public final Builder callTimeout(long seconds) {
            getClientBuilder$crpcclient().callTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder connectTimeout(long seconds) {
            getClientBuilder$crpcclient().callTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder readTimeout(long seconds) {
            getClientBuilder$crpcclient().readTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder writeTimeout(long seconds) {
            getClientBuilder$crpcclient().writeTimeout(seconds, TimeUnit.SECONDS);
            return this;
        }

        public final Builder retryOnConnectionFailure(boolean retry) {
            getClientBuilder$crpcclient().retryOnConnectionFailure(retry);
            return this;
        }

        public final Builder addCustomCrpcInterceptor(CustomCrpcInterceptor interceptor) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            this.customApplicationInterceptors.add(interceptor);
            return this;
        }

        public final Builder baseUrlProvider(BaseUrlProvider baseUrlProvider) {
            Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
            this.baseUrlProvider = baseUrlProvider;
            return this;
        }

        public final CrpcClient build() {
            return new CrpcClient(this);
        }
    }

    /* JADX INFO: compiled from: CrpcClient.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0005H&J\b\u0010\u000b\u001a\u00020\fH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "", "getDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "getLocalIp", "", "getRequestTimeout", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "crpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "getSessionToken", "getVersionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface CrpcRequestContextProvider {
        DeviceInfo getDeviceInfo();

        String getLocalIp();

        /* JADX INFO: renamed from: getSessionToken */
        String getToken();

        VersionInfoPb getVersionInfo();

        default CrpcTimeout getRequestTimeout(RpcRequest crpcRequest) {
            Intrinsics.checkNotNullParameter(crpcRequest, "crpcRequest");
            return CrpcTimeout.Default.INSTANCE;
        }
    }
}
