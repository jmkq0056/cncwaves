package com.stripe.jvmcore.restclient;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.Message;
import com.stripe.jvmcore.restclient.RestInterceptor;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: InterceptorChain.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u001c\b\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003*\u001c\b\u0001\u0010\u0004*\u0016\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0004`\u0003*\u001c\b\u0002\u0010\u0005*\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0005`\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0006BY\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00028\u0000\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0013\u0012\u0006\u0010\u0014\u001a\u00028\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J\r\u0010\u0014\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0001¢\u0006\u0002\b\u001cJ\b\u0010\u000e\u001a\u00020\rH\u0016J\u001c\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0013H\u0016J\r\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001bJ\b\u0010\f\u001a\u00020\rH\u0016R\u0010\u0010\u0014\u001a\u00028\u0002X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00028\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/jvmcore/restclient/InterceptorChain;", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "Rsp", "Err", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "interceptors", "", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", FirebaseAnalytics.Param.INDEX, "", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "request", "Lokhttp3/Request;", "requestProto", "responseProtoType", "Ljava/lang/Class;", "error", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)V", "Lcom/squareup/wire/Message;", "getRestConfig", "()Lcom/stripe/jvmcore/restclient/RestConfig;", "()Lcom/squareup/wire/Message;", "interceptors$base", "proceed", "Lcom/stripe/jvmcore/restclient/RestResponse;", "rpcRequest", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InterceptorChain<Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> implements RestInterceptor.Chain<Rq, Rsp, Err> {
    private final Err error;
    private final int index;
    private final List<RestInterceptor> interceptors;
    private final String method;
    private final Request request;
    private final Rq requestProto;
    private final Class<Rsp> responseProtoType;
    private final RestConfig restConfig;
    private final String service;

    /* JADX WARN: Multi-variable type inference failed */
    public InterceptorChain(List<? extends RestInterceptor> interceptors, int i, String service, String method, Request request, Rq requestProto, Class<Rsp> responseProtoType, Err error, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(requestProto, "requestProto");
        Intrinsics.checkNotNullParameter(responseProtoType, "responseProtoType");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        this.interceptors = interceptors;
        this.index = i;
        this.service = service;
        this.method = method;
        this.request = request;
        this.requestProto = requestProto;
        this.responseProtoType = responseProtoType;
        this.error = error;
        this.restConfig = restConfig;
        if (interceptors.isEmpty()) {
            throw new IllegalStateException("Interceptors in chain must not be empty".toString());
        }
        if (i < 0) {
            throw new IllegalStateException(("Invalid index " + i + ", must be greater than zero.").toString());
        }
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    public RestConfig getRestConfig() {
        return this.restConfig;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    public RestResponse<Rsp, Err> proceed(Request request) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.index >= this.interceptors.size()) {
            throw new IllegalStateException(("index " + this.index + " does not map to an interceptor").toString());
        }
        return this.interceptors.get(this.index).intercept(new InterceptorChain(this.interceptors, this.index + 1, this.service, this.method, request, this.requestProto, this.responseProtoType, this.error, getRestConfig()));
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    /* JADX INFO: renamed from: request, reason: from getter */
    public Request getRequest() {
        return this.request;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    /* JADX INFO: renamed from: method, reason: from getter */
    public String getMethod() {
        return this.method;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    /* JADX INFO: renamed from: service, reason: from getter */
    public String getService() {
        return this.service;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    public Rq rpcRequest() {
        return this.requestProto;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    public Err error() {
        return this.error;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor.Chain
    public Class<Rsp> responseProtoType() {
        return this.responseProtoType;
    }

    public final List<RestInterceptor> interceptors$base() {
        return this.interceptors;
    }
}
