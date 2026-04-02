package com.stripe.stripeterminal.external.api;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApiErrorType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0087\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "", "(Ljava/lang/String;I)V", "API_CONNECTION_ERROR", "API_ERROR", "AUTHENTICATION_ERROR", "CARD_ERROR", "IDEMPOTENCY_ERROR", "INVALID_REQUEST_ERROR", "RATE_LIMIT_ERROR", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class ApiErrorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApiErrorType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("api_connection_error")
    public static final ApiErrorType API_CONNECTION_ERROR = new ApiErrorType("API_CONNECTION_ERROR", 0);

    @SerialName("api_error")
    public static final ApiErrorType API_ERROR = new ApiErrorType("API_ERROR", 1);

    @SerialName("authentication_error")
    public static final ApiErrorType AUTHENTICATION_ERROR = new ApiErrorType("AUTHENTICATION_ERROR", 2);

    @SerialName("card_error")
    public static final ApiErrorType CARD_ERROR = new ApiErrorType("CARD_ERROR", 3);

    @SerialName("idempotency_error")
    public static final ApiErrorType IDEMPOTENCY_ERROR = new ApiErrorType("IDEMPOTENCY_ERROR", 4);

    @SerialName("invalid_request_error")
    public static final ApiErrorType INVALID_REQUEST_ERROR = new ApiErrorType("INVALID_REQUEST_ERROR", 5);

    @SerialName("rate_limit_error")
    public static final ApiErrorType RATE_LIMIT_ERROR = new ApiErrorType("RATE_LIMIT_ERROR", 6);

    private static final /* synthetic */ ApiErrorType[] $values() {
        return new ApiErrorType[]{API_CONNECTION_ERROR, API_ERROR, AUTHENTICATION_ERROR, CARD_ERROR, IDEMPOTENCY_ERROR, INVALID_REQUEST_ERROR, RATE_LIMIT_ERROR};
    }

    public static EnumEntries<ApiErrorType> getEntries() {
        return $ENTRIES;
    }

    public static ApiErrorType valueOf(String str) {
        return (ApiErrorType) Enum.valueOf(ApiErrorType.class, str);
    }

    public static ApiErrorType[] values() {
        return (ApiErrorType[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: ApiErrorType.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/api/ApiErrorType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) ApiErrorType.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<ApiErrorType> serializer() {
            return get$cachedSerializer();
        }
    }

    private ApiErrorType(String str, int i) {
    }

    static {
        ApiErrorType[] apiErrorTypeArr$values = $values();
        $VALUES = apiErrorTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(apiErrorTypeArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.api.ApiErrorType.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.api.ApiErrorType", ApiErrorType.values(), new String[]{"api_connection_error", "api_error", "authentication_error", "card_error", "idempotency_error", "invalid_request_error", "rate_limit_error"}, new Annotation[][]{null, null, null, null, null, null, null}, null);
            }
        });
    }
}
