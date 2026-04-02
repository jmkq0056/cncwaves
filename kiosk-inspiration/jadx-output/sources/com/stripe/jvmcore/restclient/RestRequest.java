package com.stripe.jvmcore.restclient;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RestRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005B!\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u000e\u0010\u0010\u001a\u00028\u0000HÆ\u0003¢\u0006\u0002\u0010\fJ\u0015\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J:\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\b\u0002\u0010\u0006\u001a\u00028\u00002\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bHÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\tHÖ\u0001R\u0013\u0010\u0006\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestRequest;", "M", "Lcom/squareup/wire/Message;", "B", "Lcom/squareup/wire/Message$Builder;", "", "body", "headers", "", "", "(Lcom/squareup/wire/Message;Ljava/util/Map;)V", "getBody", "()Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message;", "getHeaders", "()Ljava/util/Map;", "component1", "component2", "copy", "(Lcom/squareup/wire/Message;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestRequest;", "equals", "", "other", "hashCode", "", "toString", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class RestRequest<M extends Message<M, B>, B extends Message.Builder<M, B>> {
    private final M body;
    private final Map<String, String> headers;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestRequest copy$default(RestRequest restRequest, Message message, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            message = restRequest.body;
        }
        if ((i & 2) != 0) {
            map = restRequest.headers;
        }
        return restRequest.copy(message, map);
    }

    public final M component1() {
        return this.body;
    }

    public final Map<String, String> component2() {
        return this.headers;
    }

    public final RestRequest<M, B> copy(M body, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(headers, "headers");
        return new RestRequest<>(body, headers);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RestRequest)) {
            return false;
        }
        RestRequest restRequest = (RestRequest) other;
        return Intrinsics.areEqual(this.body, restRequest.body) && Intrinsics.areEqual(this.headers, restRequest.headers);
    }

    public int hashCode() {
        return (this.body.hashCode() * 31) + this.headers.hashCode();
    }

    public String toString() {
        return "RestRequest(body=" + this.body + ", headers=" + this.headers + ')';
    }

    public RestRequest(M body, Map<String, String> headers) {
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.body = body;
        this.headers = headers;
    }

    public final M getBody() {
        return this.body;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }
}
