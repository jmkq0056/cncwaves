package com.stripe.jvmcore.restclient;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: RestInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0088\u0001\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u000f0\r\"\u001c\b\u0000\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\b\u00030\u0011j\b\u0012\u0004\u0012\u0002H\u0010`\u0012\"\u001c\b\u0001\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u0011j\b\u0012\u0004\u0012\u0002H\u000e`\u0012\"\u001c\b\u0002\u0010\u000f*\u0016\u0012\u0004\u0012\u0002H\u000f\u0012\u0002\b\u00030\u0011j\b\u0012\u0004\u0012\u0002H\u000f`\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u000f0\u0014H&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestInterceptor;", "", "()V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "Chain", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class RestInterceptor {

    /* JADX INFO: compiled from: RestInterceptor.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u001c\b\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003*\u001c\b\u0001\u0010\u0004*\u0016\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0004`\u0003*\u001c\b\u0002\u0010\u0005*\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0005`\u00032\u00020\u0006J\r\u0010\u000b\u001a\u00028\u0002H&¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0011\u001a\u00020\u0012H&J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0014H&J\r\u0010\u0015\u001a\u00028\u0000H&¢\u0006\u0002\u0010\fJ\b\u0010\u0016\u001a\u00020\u000eH&R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "Rsp", "Err", "", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "getRestConfig", "()Lcom/stripe/jvmcore/restclient/RestConfig;", "error", "()Lcom/squareup/wire/Message;", FirebaseAnalytics.Param.METHOD, "", "proceed", "Lcom/stripe/jvmcore/restclient/RestResponse;", "request", "Lokhttp3/Request;", "responseProtoType", "Ljava/lang/Class;", "rpcRequest", NotificationCompat.CATEGORY_SERVICE, "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Chain<Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> {
        Err error();

        RestConfig getRestConfig();

        /* JADX INFO: renamed from: method */
        String getMethod();

        RestResponse<Rsp, Err> proceed(Request request);

        /* JADX INFO: renamed from: request */
        Request getRequest();

        Class<Rsp> responseProtoType();

        Rq rpcRequest();

        /* JADX INFO: renamed from: service */
        String getService();
    }

    public abstract String getName();

    public abstract <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(Chain<Rq, Rsp, Err> chain);

    public boolean equals(Object other) {
        return (other instanceof RestInterceptor) && Intrinsics.areEqual(getName(), ((RestInterceptor) other).getName());
    }

    public int hashCode() {
        return getName().hashCode();
    }
}
