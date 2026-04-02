package com.stripe.stripeterminal.external.models;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.SerialName;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SetupErrorType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupErrorType;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "API_CONNECTION_ERROR", "API_ERROR", "AUTHENTICATION_ERROR", "CARD_ERROR", "IDEMPOTENCY_ERROR", "INVALID_REQUEST_ERROR", "RATE_LIMIT_ERROR", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupErrorType implements Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SetupErrorType[] $VALUES;

    @SerialName("api_connection_error")
    public static final SetupErrorType API_CONNECTION_ERROR = new SetupErrorType("API_CONNECTION_ERROR", 0);

    @SerialName("api_error")
    public static final SetupErrorType API_ERROR = new SetupErrorType("API_ERROR", 1);

    @SerialName("authentication_error")
    public static final SetupErrorType AUTHENTICATION_ERROR = new SetupErrorType("AUTHENTICATION_ERROR", 2);

    @SerialName("card_error")
    public static final SetupErrorType CARD_ERROR = new SetupErrorType("CARD_ERROR", 3);

    @SerialName("idempotency_error")
    public static final SetupErrorType IDEMPOTENCY_ERROR = new SetupErrorType("IDEMPOTENCY_ERROR", 4);

    @SerialName("invalid_request_error")
    public static final SetupErrorType INVALID_REQUEST_ERROR = new SetupErrorType("INVALID_REQUEST_ERROR", 5);

    @SerialName("rate_limit_error")
    public static final SetupErrorType RATE_LIMIT_ERROR = new SetupErrorType("RATE_LIMIT_ERROR", 6);

    private static final /* synthetic */ SetupErrorType[] $values() {
        return new SetupErrorType[]{API_CONNECTION_ERROR, API_ERROR, AUTHENTICATION_ERROR, CARD_ERROR, IDEMPOTENCY_ERROR, INVALID_REQUEST_ERROR, RATE_LIMIT_ERROR};
    }

    public static EnumEntries<SetupErrorType> getEntries() {
        return $ENTRIES;
    }

    public static SetupErrorType valueOf(String str) {
        return (SetupErrorType) Enum.valueOf(SetupErrorType.class, str);
    }

    public static SetupErrorType[] values() {
        return (SetupErrorType[]) $VALUES.clone();
    }

    private SetupErrorType(String str, int i) {
    }

    static {
        SetupErrorType[] setupErrorTypeArr$values = $values();
        $VALUES = setupErrorTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(setupErrorTypeArr$values);
    }
}
