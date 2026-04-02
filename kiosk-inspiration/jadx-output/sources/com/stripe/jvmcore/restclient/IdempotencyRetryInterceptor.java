package com.stripe.jvmcore.restclient;

import com.squareup.wire.Message;
import com.stripe.jvmcore.restclient.RestInterceptor;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.Request;

/* JADX INFO: compiled from: IdempotencyRetryInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\n\"\u001c\b\u0000\u0010\r*\u0016\u0012\u0004\u0012\u0002H\r\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\r`\u000f\"\u001c\b\u0001\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\b\u0002\u0010\f*\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\f`\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\u0011H\u0016Js\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\n\"\u001c\b\u0000\u0010\u000b*\u0016\u0012\u0004\u0012\u0002H\u000b\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\u000b`\u000f\"\u001c\b\u0001\u0010\f*\u0016\u0012\u0004\u0012\u0002H\f\u0012\u0002\b\u00030\u000ej\b\u0012\u0004\u0012\u0002H\f`\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\f0\n0\u0016H\u0082\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "idempotencyHeader", "Lcom/stripe/jvmcore/restclient/IdempotencyHeader;", "(Lcom/stripe/jvmcore/restclient/IdempotencyHeader;)V", "name", "", "getName", "()Ljava/lang/String;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "withNetworkRetry", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "networkCall", "Lkotlin/Function0;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IdempotencyRetryInterceptor extends RestInterceptor {
    private final IdempotencyHeader idempotencyHeader;
    private final String name;

    public IdempotencyRetryInterceptor(IdempotencyHeader idempotencyHeader) {
        Intrinsics.checkNotNullParameter(idempotencyHeader, "idempotencyHeader");
        this.idempotencyHeader = idempotencyHeader;
        this.name = "IdempotencyRetryInterceptor";
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        T tM817constructorimpl;
        T tM817constructorimpl2;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        if (!IdempotencyHeader.INSTANCE.hasIdempotencyKey(request.headers())) {
            Pair pairHeaderEntry$default = IdempotencyHeader.headerEntry$default(this.idempotencyHeader, null, 1, null);
            request = request.newBuilder().header((String) pairHeaderEntry$default.component1(), (String) pairHeaderEntry$default.component2()).build();
        }
        int maxAttempts = chain.getRestConfig().getMaxAttempts();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        try {
            Result.Companion companion = Result.INSTANCE;
            IdempotencyRetryInterceptor idempotencyRetryInterceptor = this;
            tM817constructorimpl = Result.m817constructorimpl(chain.proceed(request));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            tM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        objectRef.element = tM817constructorimpl;
        int i = maxAttempts - 1;
        for (int i2 = 0; i2 < i; i2++) {
            T t = objectRef.element;
            if (!(Result.m820exceptionOrNullimpl(t) == null ? ((RestResponse) t).shouldRetry() : true)) {
                T t2 = objectRef.element;
                ResultKt.throwOnFailure(t2);
                return (RestResponse) t2;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                IdempotencyRetryInterceptor idempotencyRetryInterceptor2 = this;
                tM817constructorimpl2 = Result.m817constructorimpl(chain.proceed(request));
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                tM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
            }
            objectRef.element = tM817constructorimpl2;
        }
        T t3 = objectRef.element;
        ResultKt.throwOnFailure(t3);
        return (RestResponse) t3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    private final <Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> withNetworkRetry(RestConfig restConfig, Function0<? extends RestResponse<Rsp, Err>> networkCall) {
        T tM817constructorimpl;
        T tM817constructorimpl2;
        int maxAttempts = restConfig.getMaxAttempts();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        try {
            Result.Companion companion = Result.INSTANCE;
            IdempotencyRetryInterceptor idempotencyRetryInterceptor = this;
            tM817constructorimpl = Result.m817constructorimpl(networkCall.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            tM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        objectRef.element = tM817constructorimpl;
        int i = maxAttempts - 1;
        for (int i2 = 0; i2 < i; i2++) {
            T t = objectRef.element;
            if (!(Result.m820exceptionOrNullimpl(t) == null ? ((RestResponse) t).shouldRetry() : true)) {
                T t2 = objectRef.element;
                ResultKt.throwOnFailure(t2);
                return (RestResponse) t2;
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                IdempotencyRetryInterceptor idempotencyRetryInterceptor2 = this;
                tM817constructorimpl2 = Result.m817constructorimpl(networkCall.invoke());
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                tM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
            }
            objectRef.element = tM817constructorimpl2;
        }
        T t3 = objectRef.element;
        ResultKt.throwOnFailure(t3);
        return (RestResponse) t3;
    }
}
