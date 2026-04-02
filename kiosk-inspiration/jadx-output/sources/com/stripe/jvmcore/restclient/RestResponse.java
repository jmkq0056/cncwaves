package com.stripe.jvmcore.restclient;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.squareup.moshi.Moshi;
import com.squareup.wire.AnyMessage;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.redaction.CustomMessageRedactor;
import com.stripe.jvmcore.redaction.Extensions;
import com.stripe.jvmcore.redaction.ResourceIdRedactor;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.model.rest.StatusCode;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.ByteString;

/* JADX INFO: compiled from: RestResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u001e*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0001\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u00022\u00020\u0004:\u0004\u001e\u001f !B\u0007\b\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u0010H&J\u0006\u0010\u001d\u001a\u00020\u0010R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0001\u0003\"#$¨\u0006%"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestResponse;", "M", "Lcom/squareup/wire/Message;", "E", "", "()V", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "getCustomMessageRedactor", "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "durationMillis", "", "getDurationMillis", "()Ljava/lang/Long;", "headers", "Ljava/util/TreeMap;", "", "getHeaders", "()Ljava/util/TreeMap;", "statusCode", "Lcom/stripe/proto/model/rest/StatusCode;", "getStatusCode", "()Lcom/stripe/proto/model/rest/StatusCode;", ImagesContract.URL, "getUrl", "()Ljava/lang/String;", "shouldRetry", "", "toLogString", "toString", "Companion", "ParseError", "ServerError", "Success", "Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;", "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;", "Lcom/stripe/jvmcore/restclient/RestResponse$Success;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class RestResponse<M extends Message<M, ?>, E extends Message<E, ?>> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String KEY_STRIPE_SHOULD_RETRY = "stripe-should-retry";
    private static final String TAG = "RestResponse";

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StatusCode.values().length];
            try {
                iArr[StatusCode.CONFLICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StatusCode.SERVER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StatusCode.HTTP_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StatusCode.HTTP_ERROR_UNKNOWN_STATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StatusCode.UNKNOWN_STATUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[StatusCode.OK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[StatusCode.BAD_REQUEST.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[StatusCode.UNAUTHORIZED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[StatusCode.REQUEST_FAILED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[StatusCode.FORBIDDEN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[StatusCode.NOT_FOUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[StatusCode.TOO_MANY_REQUESTS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ RestResponse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract CustomMessageRedactor getCustomMessageRedactor();

    public abstract Long getDurationMillis();

    public abstract TreeMap<String, String> getHeaders();

    public abstract StatusCode getStatusCode();

    public abstract String getUrl();

    public abstract String toLogString();

    private RestResponse() {
    }

    public final String toString() {
        return toLogString();
    }

    public final boolean shouldRetry() {
        String str = getHeaders().get(KEY_STRIPE_SHOULD_RETRY);
        Boolean booleanStrictOrNull = str != null ? StringsKt.toBooleanStrictOrNull(str) : null;
        if (Intrinsics.areEqual((Object) booleanStrictOrNull, (Object) true)) {
            return true;
        }
        if (Intrinsics.areEqual((Object) booleanStrictOrNull, (Object) false)) {
            return false;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[getStatusCode().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0012\b\u0002\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0003\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004BM\u0012\u0006\u0010\u0005\u001a\u00028\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\u000e\u0010!\u001a\u00028\u0002HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0015\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010&\u001a\u00020\u000fHÂ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0011HÆ\u0003Jp\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u00022\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020/HÖ\u0001J\b\u00100\u001a\u00020\bH\u0016R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\f\u001a\u0004\u0018\u00010\rX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u000b\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u00061"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestResponse$Success;", "M", "Lcom/squareup/wire/Message;", "E", "Lcom/stripe/jvmcore/restclient/RestResponse;", "response", "headers", "Ljava/util/TreeMap;", "", "statusCode", "Lcom/stripe/proto/model/rest/StatusCode;", ImagesContract.URL, "durationMillis", "", "moshi", "Lcom/squareup/moshi/Moshi;", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "(Lcom/squareup/wire/Message;Ljava/util/TreeMap;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)V", "getCustomMessageRedactor", "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "getDurationMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHeaders", "()Ljava/util/TreeMap;", "getResponse", "()Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message;", "getStatusCode", "()Lcom/stripe/proto/model/rest/StatusCode;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Lcom/squareup/wire/Message;Ljava/util/TreeMap;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)Lcom/stripe/jvmcore/restclient/RestResponse$Success;", "equals", "", "other", "", "hashCode", "", "toLogString", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Success<M extends Message<M, ?>, E extends Message<E, ?>> extends RestResponse<M, E> {
        private final CustomMessageRedactor customMessageRedactor;
        private final Long durationMillis;
        private final TreeMap<String, String> headers;
        private final Moshi moshi;
        private final M response;
        private final StatusCode statusCode;
        private final String url;

        /* JADX INFO: renamed from: component6, reason: from getter */
        private final Moshi getMoshi() {
            return this.moshi;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, Message message, TreeMap treeMap, StatusCode statusCode, String str, Long l, Moshi moshi, CustomMessageRedactor customMessageRedactor, int i, Object obj) {
            if ((i & 1) != 0) {
                message = success.response;
            }
            if ((i & 2) != 0) {
                treeMap = success.headers;
            }
            if ((i & 4) != 0) {
                statusCode = success.statusCode;
            }
            if ((i & 8) != 0) {
                str = success.url;
            }
            if ((i & 16) != 0) {
                l = success.durationMillis;
            }
            if ((i & 32) != 0) {
                moshi = success.moshi;
            }
            if ((i & 64) != 0) {
                customMessageRedactor = success.customMessageRedactor;
            }
            Moshi moshi2 = moshi;
            CustomMessageRedactor customMessageRedactor2 = customMessageRedactor;
            Long l2 = l;
            StatusCode statusCode2 = statusCode;
            return success.copy(message, treeMap, statusCode2, str, l2, moshi2, customMessageRedactor2);
        }

        public final M component1() {
            return this.response;
        }

        public final TreeMap<String, String> component2() {
            return this.headers;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final StatusCode getStatusCode() {
            return this.statusCode;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Long getDurationMillis() {
            return this.durationMillis;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        public final Success<M, E> copy(M response, TreeMap<String, String> headers, StatusCode statusCode, String url, Long durationMillis, Moshi moshi, CustomMessageRedactor customMessageRedactor) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            return new Success<>(response, headers, statusCode, url, durationMillis, moshi, customMessageRedactor);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Success)) {
                return false;
            }
            Success success = (Success) other;
            return Intrinsics.areEqual(this.response, success.response) && Intrinsics.areEqual(this.headers, success.headers) && this.statusCode == success.statusCode && Intrinsics.areEqual(this.url, success.url) && Intrinsics.areEqual(this.durationMillis, success.durationMillis) && Intrinsics.areEqual(this.moshi, success.moshi) && Intrinsics.areEqual(this.customMessageRedactor, success.customMessageRedactor);
        }

        public int hashCode() {
            int iHashCode = ((((((this.response.hashCode() * 31) + this.headers.hashCode()) * 31) + this.statusCode.hashCode()) * 31) + this.url.hashCode()) * 31;
            Long l = this.durationMillis;
            int iHashCode2 = (((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.moshi.hashCode()) * 31;
            CustomMessageRedactor customMessageRedactor = this.customMessageRedactor;
            return iHashCode2 + (customMessageRedactor != null ? customMessageRedactor.hashCode() : 0);
        }

        public final M getResponse() {
            return this.response;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public TreeMap<String, String> getHeaders() {
            return this.headers;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public StatusCode getStatusCode() {
            return this.statusCode;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String getUrl() {
            return this.url;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public Long getDurationMillis() {
            return this.durationMillis;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(M response, TreeMap<String, String> headers, StatusCode statusCode, String url, Long l, Moshi moshi, CustomMessageRedactor customMessageRedactor) {
            super(null);
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(headers, "headers");
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            this.response = response;
            this.headers = headers;
            this.statusCode = statusCode;
            this.url = url;
            this.durationMillis = l;
            this.moshi = moshi;
            this.customMessageRedactor = customMessageRedactor;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String toLogString() {
            return "status=" + getStatusCode() + " headers=" + getHeaders() + " response=" + Extensions.INSTANCE.toLogJson(this.response, getCustomMessageRedactor(), this.moshi);
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0012\b\u0002\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0003\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004BM\u0012\u0006\u0010\u0005\u001a\u00028\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011¢\u0006\u0002\u0010\u0012J\u000e\u0010#\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\u001dJ\t\u0010$\u001a\u00020\u0007HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010'\u001a\u00020\rHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0015\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011HÆ\u0003Jp\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011HÆ\u0001¢\u0006\u0002\u0010+J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\b\u00102\u001a\u00020\tH\u0016R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0005\u001a\u00028\u0003¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u00063"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;", "M", "Lcom/squareup/wire/Message;", "E", "Lcom/stripe/jvmcore/restclient/RestResponse;", "response", "statusCode", "Lcom/stripe/proto/model/rest/StatusCode;", ImagesContract.URL, "", "durationMillis", "", "moshi", "Lcom/squareup/moshi/Moshi;", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "headers", "Ljava/util/TreeMap;", "(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V", "getCustomMessageRedactor", "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "getDurationMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHeaders", "()Ljava/util/TreeMap;", "getMoshi", "()Lcom/squareup/moshi/Moshi;", "getResponse", "()Lcom/squareup/wire/Message;", "Lcom/squareup/wire/Message;", "getStatusCode", "()Lcom/stripe/proto/model/rest/StatusCode;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;", "equals", "", "other", "", "hashCode", "", "toLogString", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ServerError<M extends Message<M, ?>, E extends Message<E, ?>> extends RestResponse<M, E> {
        private final CustomMessageRedactor customMessageRedactor;
        private final Long durationMillis;
        private final TreeMap<String, String> headers;
        private final Moshi moshi;
        private final E response;
        private final StatusCode statusCode;
        private final String url;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ServerError copy$default(ServerError serverError, Message message, StatusCode statusCode, String str, Long l, Moshi moshi, CustomMessageRedactor customMessageRedactor, TreeMap treeMap, int i, Object obj) {
            if ((i & 1) != 0) {
                message = serverError.response;
            }
            if ((i & 2) != 0) {
                statusCode = serverError.statusCode;
            }
            if ((i & 4) != 0) {
                str = serverError.url;
            }
            if ((i & 8) != 0) {
                l = serverError.durationMillis;
            }
            if ((i & 16) != 0) {
                moshi = serverError.moshi;
            }
            if ((i & 32) != 0) {
                customMessageRedactor = serverError.customMessageRedactor;
            }
            if ((i & 64) != 0) {
                treeMap = serverError.headers;
            }
            CustomMessageRedactor customMessageRedactor2 = customMessageRedactor;
            TreeMap treeMap2 = treeMap;
            Moshi moshi2 = moshi;
            String str2 = str;
            return serverError.copy(message, statusCode, str2, l, moshi2, customMessageRedactor2, treeMap2);
        }

        public final E component1() {
            return this.response;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final StatusCode getStatusCode() {
            return this.statusCode;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Long getDurationMillis() {
            return this.durationMillis;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Moshi getMoshi() {
            return this.moshi;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        public final TreeMap<String, String> component7() {
            return this.headers;
        }

        public final ServerError<M, E> copy(E response, StatusCode statusCode, String url, Long durationMillis, Moshi moshi, CustomMessageRedactor customMessageRedactor, TreeMap<String, String> headers) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            Intrinsics.checkNotNullParameter(headers, "headers");
            return new ServerError<>(response, statusCode, url, durationMillis, moshi, customMessageRedactor, headers);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ServerError)) {
                return false;
            }
            ServerError serverError = (ServerError) other;
            return Intrinsics.areEqual(this.response, serverError.response) && this.statusCode == serverError.statusCode && Intrinsics.areEqual(this.url, serverError.url) && Intrinsics.areEqual(this.durationMillis, serverError.durationMillis) && Intrinsics.areEqual(this.moshi, serverError.moshi) && Intrinsics.areEqual(this.customMessageRedactor, serverError.customMessageRedactor) && Intrinsics.areEqual(this.headers, serverError.headers);
        }

        public int hashCode() {
            int iHashCode = ((((this.response.hashCode() * 31) + this.statusCode.hashCode()) * 31) + this.url.hashCode()) * 31;
            Long l = this.durationMillis;
            int iHashCode2 = (((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + this.moshi.hashCode()) * 31;
            CustomMessageRedactor customMessageRedactor = this.customMessageRedactor;
            return ((iHashCode2 + (customMessageRedactor != null ? customMessageRedactor.hashCode() : 0)) * 31) + this.headers.hashCode();
        }

        public final E getResponse() {
            return this.response;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public StatusCode getStatusCode() {
            return this.statusCode;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String getUrl() {
            return this.url;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public Long getDurationMillis() {
            return this.durationMillis;
        }

        public final Moshi getMoshi() {
            return this.moshi;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public TreeMap<String, String> getHeaders() {
            return this.headers;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ServerError(E response, StatusCode statusCode, String url, Long l, Moshi moshi, CustomMessageRedactor customMessageRedactor, TreeMap<String, String> headers) {
            super(null);
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.response = response;
            this.statusCode = statusCode;
            this.url = url;
            this.durationMillis = l;
            this.moshi = moshi;
            this.customMessageRedactor = customMessageRedactor;
            this.headers = headers;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String toLogString() {
            return "status=" + getStatusCode() + " headers=" + getHeaders() + " response=" + Extensions.INSTANCE.toLogJson(this.response, getCustomMessageRedactor(), this.moshi);
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0012\b\u0002\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0003\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000eHÆ\u0003J\\\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0014\b\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000eHÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\b\u0010(\u001a\u00020\bH\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;", "M", "Lcom/squareup/wire/Message;", "E", "Lcom/stripe/jvmcore/restclient/RestResponse;", "statusCode", "Lcom/stripe/proto/model/rest/StatusCode;", ImagesContract.URL, "", "durationMillis", "", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "headers", "Ljava/util/TreeMap;", "(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V", "getCustomMessageRedactor", "()Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "getDurationMillis", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getHeaders", "()Ljava/util/TreeMap;", "getStatusCode", "()Lcom/stripe/proto/model/rest/StatusCode;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;", "equals", "", "other", "", "hashCode", "", "toLogString", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ParseError<M extends Message<M, ?>, E extends Message<E, ?>> extends RestResponse<M, E> {
        private final CustomMessageRedactor customMessageRedactor;
        private final Long durationMillis;
        private final TreeMap<String, String> headers;
        private final StatusCode statusCode;
        private final String url;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParseError copy$default(ParseError parseError, StatusCode statusCode, String str, Long l, CustomMessageRedactor customMessageRedactor, TreeMap treeMap, int i, Object obj) {
            if ((i & 1) != 0) {
                statusCode = parseError.statusCode;
            }
            if ((i & 2) != 0) {
                str = parseError.url;
            }
            if ((i & 4) != 0) {
                l = parseError.durationMillis;
            }
            if ((i & 8) != 0) {
                customMessageRedactor = parseError.customMessageRedactor;
            }
            if ((i & 16) != 0) {
                treeMap = parseError.headers;
            }
            TreeMap treeMap2 = treeMap;
            Long l2 = l;
            return parseError.copy(statusCode, str, l2, customMessageRedactor, treeMap2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final StatusCode getStatusCode() {
            return this.statusCode;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Long getDurationMillis() {
            return this.durationMillis;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        public final TreeMap<String, String> component5() {
            return this.headers;
        }

        public final ParseError<M, E> copy(StatusCode statusCode, String url, Long durationMillis, CustomMessageRedactor customMessageRedactor, TreeMap<String, String> headers) {
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            return new ParseError<>(statusCode, url, durationMillis, customMessageRedactor, headers);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParseError)) {
                return false;
            }
            ParseError parseError = (ParseError) other;
            return this.statusCode == parseError.statusCode && Intrinsics.areEqual(this.url, parseError.url) && Intrinsics.areEqual(this.durationMillis, parseError.durationMillis) && Intrinsics.areEqual(this.customMessageRedactor, parseError.customMessageRedactor) && Intrinsics.areEqual(this.headers, parseError.headers);
        }

        public int hashCode() {
            int iHashCode = ((this.statusCode.hashCode() * 31) + this.url.hashCode()) * 31;
            Long l = this.durationMillis;
            int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
            CustomMessageRedactor customMessageRedactor = this.customMessageRedactor;
            return ((iHashCode2 + (customMessageRedactor != null ? customMessageRedactor.hashCode() : 0)) * 31) + this.headers.hashCode();
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public StatusCode getStatusCode() {
            return this.statusCode;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String getUrl() {
            return this.url;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public Long getDurationMillis() {
            return this.durationMillis;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public CustomMessageRedactor getCustomMessageRedactor() {
            return this.customMessageRedactor;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public TreeMap<String, String> getHeaders() {
            return this.headers;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParseError(StatusCode statusCode, String url, Long l, CustomMessageRedactor customMessageRedactor, TreeMap<String, String> headers) {
            super(null);
            Intrinsics.checkNotNullParameter(statusCode, "statusCode");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.statusCode = statusCode;
            this.url = url;
            this.durationMillis = l;
            this.customMessageRedactor = customMessageRedactor;
            this.headers = headers;
        }

        @Override // com.stripe.jvmcore.restclient.RestResponse
        public String toLogString() {
            return "status=" + getStatusCode() + " headers=" + getHeaders();
        }
    }

    /* JADX INFO: compiled from: RestResponse.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Js\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t0\u0007\"\u0012\b\u0002\u0010\b*\f\u0012\u0004\u0012\u0002H\b\u0012\u0002\b\u00030\n\"\u0012\b\u0003\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\b0\u000f2\u0006\u0010\u0010\u001a\u0002H\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/restclient/RestResponse$Companion;", "", "()V", "KEY_STRIPE_SHOULD_RETRY", "", "TAG", "toRestResponse", "Lcom/stripe/jvmcore/restclient/RestResponse;", "M", "E", "Lcom/squareup/wire/Message;", "Lokhttp3/Response;", "moshi", "Lcom/squareup/moshi/Moshi;", "messageType", "Ljava/lang/Class;", "error", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lokhttp3/Response;Lcom/squareup/moshi/Moshi;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestResponse;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <M extends Message<M, ?>, E extends Message<E, ?>> RestResponse<M, E> toRestResponse(Response response, Moshi moshi, Class<M> messageType, E error, CustomMessageRedactor customMessageRedactor, LogWriter logWriter) {
            StatusCode statusCode;
            StatusCode statusCode2;
            String str;
            ServerError parseError;
            AnyMessage anyMessage;
            Intrinsics.checkNotNullParameter(response, "<this>");
            Intrinsics.checkNotNullParameter(moshi, "moshi");
            Intrinsics.checkNotNullParameter(messageType, "messageType");
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(logWriter, "logWriter");
            int iCode = response.code();
            if (iCode == 0) {
                statusCode = StatusCode.HTTP_ERROR_UNKNOWN_STATE;
            } else if (iCode == 200) {
                statusCode = StatusCode.OK;
            } else if (iCode == 400) {
                statusCode = StatusCode.BAD_REQUEST;
            } else if (iCode == 401) {
                statusCode = StatusCode.UNAUTHORIZED;
            } else if (iCode == 402) {
                statusCode = StatusCode.REQUEST_FAILED;
            } else if (iCode == 403) {
                statusCode = StatusCode.FORBIDDEN;
            } else if (iCode == 404) {
                statusCode = StatusCode.NOT_FOUND;
            } else if (iCode == 409) {
                statusCode = StatusCode.CONFLICT;
            } else if (iCode == 500) {
                statusCode = StatusCode.SERVER_ERROR;
            } else if (502 <= iCode && iCode < 505) {
                statusCode = StatusCode.SERVER_ERROR;
            } else {
                statusCode = StatusCode.UNKNOWN_STATUS;
            }
            String url = new HttpUrl.Builder().scheme(response.request().url().scheme()).host(response.request().url().host()).addPathSegments(StringsKt.removePrefix(new ResourceIdRedactor(response.request().url().encodedPath()).redact(), (CharSequence) RemoteSettings.FORWARD_SLASH_STRING)).build().getUrl();
            long jReceivedResponseAtMillis = response.receivedResponseAtMillis() - response.sentRequestAtMillis();
            logWriter.i(RestResponse.TAG, "REST response with code " + response.code() + " received");
            String str2 = (String) MapsKt.toMap(response.headers()).get("request-id");
            if (str2 != null) {
                logWriter.i(RestResponse.TAG, "request-id: " + str2);
            }
            TreeMap caseInsensitive = RestResponseKt.toCaseInsensitive(response.headers());
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody != null) {
                ResponseBody responseBody = responseBodyBody;
                try {
                    ResponseBody responseBody2 = responseBody;
                    try {
                    } catch (Exception unused) {
                        statusCode2 = statusCode;
                    }
                    if (statusCode == StatusCode.OK) {
                        if (Intrinsics.areEqual(messageType, AnyMessage.class)) {
                            ByteString byteStringEncodeByteString = ProtoAdapter.STRING_VALUE.encodeByteString(responseBody2.string());
                            String typeUrl = ProtoAdapter.STRING_VALUE.getTypeUrl();
                            Intrinsics.checkNotNull(typeUrl);
                            anyMessage = new AnyMessage(typeUrl, byteStringEncodeByteString);
                        } else {
                            Object objFromJson = moshi.adapter((Class) messageType).fromJson(responseBody2.getSource());
                            Intrinsics.checkNotNull(objFromJson);
                            Intrinsics.checkNotNull(objFromJson);
                            anyMessage = (Message) objFromJson;
                        }
                        StatusCode statusCode3 = statusCode;
                        try {
                            parseError = new Success(anyMessage, caseInsensitive, statusCode3, url, Long.valueOf(jReceivedResponseAtMillis), moshi, customMessageRedactor);
                        } catch (Exception unused2) {
                            caseInsensitive = caseInsensitive;
                            statusCode2 = statusCode3;
                            str = url;
                            logWriter.w(RestResponse.TAG, "Failed to parse REST response");
                            parseError = new ParseError(statusCode2, str, Long.valueOf(jReceivedResponseAtMillis), customMessageRedactor, caseInsensitive);
                        }
                        CloseableKt.closeFinally(responseBody, null);
                        return parseError;
                    }
                    Object objFromJson2 = moshi.adapter((Class) error.getClass()).fromJson(responseBody2.getSource());
                    Intrinsics.checkNotNull(objFromJson2);
                    statusCode2 = statusCode;
                    try {
                        str = url;
                        try {
                            parseError = new ServerError((Message) objFromJson2, statusCode2, str, Long.valueOf(jReceivedResponseAtMillis), moshi, customMessageRedactor, caseInsensitive);
                        } catch (Exception unused3) {
                            logWriter.w(RestResponse.TAG, "Failed to parse REST response");
                            parseError = new ParseError(statusCode2, str, Long.valueOf(jReceivedResponseAtMillis), customMessageRedactor, caseInsensitive);
                        }
                    } catch (Exception unused4) {
                        str = url;
                    }
                    CloseableKt.closeFinally(responseBody, null);
                    return parseError;
                    logWriter.w(RestResponse.TAG, "Failed to parse REST response");
                    parseError = new ParseError(statusCode2, str, Long.valueOf(jReceivedResponseAtMillis), customMessageRedactor, caseInsensitive);
                    CloseableKt.closeFinally(responseBody, null);
                    return parseError;
                } finally {
                }
            } else {
                return new ServerError(error, statusCode, url, Long.valueOf(jReceivedResponseAtMillis), moshi, customMessageRedactor, caseInsensitive);
            }
        }
    }
}
