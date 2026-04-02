package com.stripe.jvmcore.restclient;

import com.google.android.gms.common.internal.ImagesContract;
import com.squareup.wire.AnyMessage;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.proto.model.rest.StatusCode;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RestResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\u00020\u0003:\u0003\u0017\u0018\u0019B\u001b\b\u0004\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u0015\u001a\u00020\u0012H&J\b\u0010\u0016\u001a\u00020\u0012H\u0016R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014\u0082\u0001\u0003\u001a\u001b\u001c¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/restclient/StringRestResponse;", "E", "Lcom/squareup/wire/Message;", "", "wireResponse", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/squareup/wire/AnyMessage;", "(Lcom/stripe/jvmcore/restclient/RestResponse;)V", "durationMillis", "", "getDurationMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "statusCode", "Lcom/stripe/proto/model/rest/StatusCode;", "getStatusCode", "()Lcom/stripe/proto/model/rest/StatusCode;", ImagesContract.URL, "", "getUrl", "()Ljava/lang/String;", "toLogString", "toString", "ParseError", "ServerError", "Success", "Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;", "Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;", "Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class StringRestResponse<E extends Message<E, ?>> {
    private final Long durationMillis;
    private final StatusCode statusCode;
    private final String url;

    public /* synthetic */ StringRestResponse(RestResponse restResponse, DefaultConstructorMarker defaultConstructorMarker) {
        this(restResponse);
    }

    public abstract String toLogString();

    private StringRestResponse(RestResponse<AnyMessage, E> restResponse) {
        this.statusCode = restResponse.getStatusCode();
        this.url = restResponse.getUrl();
        this.durationMillis = restResponse.getDurationMillis();
    }

    public final StatusCode getStatusCode() {
        return this.statusCode;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Long getDurationMillis() {
        return this.durationMillis;
    }

    public String toString() {
        return toLogString();
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B;\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0010\u001a\u00020\bH\u0016R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/jvmcore/restclient/StringRestResponse$Success;", "E", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/StringRestResponse;", "wireResponse", "Lcom/stripe/jvmcore/restclient/RestResponse$Success;", "Lcom/squareup/wire/AnyMessage;", "response", "", "headers", "Ljava/util/TreeMap;", "(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Ljava/lang/String;Ljava/util/TreeMap;)V", "getHeaders", "()Ljava/util/TreeMap;", "getResponse", "()Ljava/lang/String;", "toLogString", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Success<E extends Message<E, ?>> extends StringRestResponse<E> {
        private final TreeMap<String, String> headers;
        private final String response;

        public /* synthetic */ Success(RestResponse.Success success, String str, TreeMap treeMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(success, (i & 2) != 0 ? (String) ((AnyMessage) success.getResponse()).unpack(ProtoAdapter.STRING_VALUE) : str, (i & 4) != 0 ? success.getHeaders() : treeMap);
        }

        public final String getResponse() {
            return this.response;
        }

        public final TreeMap<String, String> getHeaders() {
            return this.headers;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(RestResponse.Success<AnyMessage, E> wireResponse, String str, TreeMap<String, String> headers) {
            super(wireResponse, null);
            Intrinsics.checkNotNullParameter(wireResponse, "wireResponse");
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.response = str;
            this.headers = headers;
        }

        @Override // com.stripe.jvmcore.restclient.StringRestResponse
        public String toLogString() {
            return "status=" + getStatusCode() + " headers=" + this.headers + " response=" + this.response;
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00028\u0001¢\u0006\u0002\u0010\bJ\b\u0010\f\u001a\u00020\rH\u0016R\u0013\u0010\u0007\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/restclient/StringRestResponse$ServerError;", "E", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/StringRestResponse;", "wireResponse", "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;", "Lcom/squareup/wire/AnyMessage;", "response", "(Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;Lcom/squareup/wire/Message;)V", "getResponse", "()Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message;", "toLogString", "", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ServerError<E extends Message<E, ?>> extends StringRestResponse<E> {
        private final E response;
        private final RestResponse.ServerError<AnyMessage, E> wireResponse;

        public /* synthetic */ ServerError(RestResponse.ServerError serverError, Message message, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(serverError, (i & 2) != 0 ? serverError.getResponse() : message);
        }

        public final E getResponse() {
            return this.response;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ServerError(RestResponse.ServerError<AnyMessage, E> wireResponse, E response) {
            super(wireResponse, null);
            Intrinsics.checkNotNullParameter(wireResponse, "wireResponse");
            Intrinsics.checkNotNullParameter(response, "response");
            this.wireResponse = wireResponse;
            this.response = response;
        }

        @Override // com.stripe.jvmcore.restclient.StringRestResponse
        public String toLogString() {
            return "status=" + getStatusCode() + " response=" + this.response;
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0012\b\u0001\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/stripe/jvmcore/restclient/StringRestResponse$ParseError;", "E", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/StringRestResponse;", "wireResponse", "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;", "Lcom/squareup/wire/AnyMessage;", "(Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;)V", "toLogString", "", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ParseError<E extends Message<E, ?>> extends StringRestResponse<E> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParseError(RestResponse.ParseError<AnyMessage, E> wireResponse) {
            super(wireResponse, null);
            Intrinsics.checkNotNullParameter(wireResponse, "wireResponse");
        }

        @Override // com.stripe.jvmcore.restclient.StringRestResponse
        public String toLogString() {
            return "status=" + getStatusCode();
        }
    }
}
