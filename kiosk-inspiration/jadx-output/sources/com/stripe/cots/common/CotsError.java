package com.stripe.cots.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: CotsError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/stripe/cots/common/CotsError;", "", "message", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "NONE", "DISCOVERY_MISSING_KEY_CERTIFICATES", "DISCOVERY_UNSUPPORTED_ANDROID_VERSION", "DISCOVERY_MISSING_NFC_READER", "DISCOVERY_UNTRUSTED_HARDWARE", "DISCOVERY_UNTRUSTED_SOFTWARE", "ATTESTATION_DEVICE_TAMPERED", "ATTESTATION_API_CONNECTION_ERROR", "ATTESTATION_SERVER_ERROR", "ATTESTATION_API_RESPONSE_DECODING", "UNEXPECTED_ERROR", "DISCOVERY_DEBUG_NOT_ALLOWED", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CotsError[] $VALUES;
    private final String message;
    public static final CotsError NONE = new CotsError("NONE", 0, "SUCCESS");
    public static final CotsError DISCOVERY_MISSING_KEY_CERTIFICATES = new CotsError("DISCOVERY_MISSING_KEY_CERTIFICATES", 1, "Unable to generate keypair certificates");
    public static final CotsError DISCOVERY_UNSUPPORTED_ANDROID_VERSION = new CotsError("DISCOVERY_UNSUPPORTED_ANDROID_VERSION", 2, "Android version not supported. Upgrade device to Android 11+");
    public static final CotsError DISCOVERY_MISSING_NFC_READER = new CotsError("DISCOVERY_MISSING_NFC_READER", 3, "Device does not have NFC");
    public static final CotsError DISCOVERY_UNTRUSTED_HARDWARE = new CotsError("DISCOVERY_UNTRUSTED_HARDWARE", 4, "Device does not use Trusted Execution Environment");
    public static final CotsError DISCOVERY_UNTRUSTED_SOFTWARE = new CotsError("DISCOVERY_UNTRUSTED_SOFTWARE", 5, "Tap to Pay reader not operating in secure process");
    public static final CotsError ATTESTATION_DEVICE_TAMPERED = new CotsError("ATTESTATION_DEVICE_TAMPERED", 6, "Device is tampered");
    public static final CotsError ATTESTATION_API_CONNECTION_ERROR = new CotsError("ATTESTATION_API_CONNECTION_ERROR", 7, "There was an issue connecting to backend APIs. Are you connected to the internet?");
    public static final CotsError ATTESTATION_SERVER_ERROR = new CotsError("ATTESTATION_SERVER_ERROR", 8, "Received internal error response from server");
    public static final CotsError ATTESTATION_API_RESPONSE_DECODING = new CotsError("ATTESTATION_API_RESPONSE_DECODING", 9, "Error while parsing server response");
    public static final CotsError UNEXPECTED_ERROR = new CotsError("UNEXPECTED_ERROR", 10, "Unexpected error occurred");
    public static final CotsError DISCOVERY_DEBUG_NOT_ALLOWED = new CotsError("DISCOVERY_DEBUG_NOT_ALLOWED", 11, "Debuggable applications are not supported in the production version of the Tap to Pay reader. Please use a simulated version of the reader by setting `DiscoveryConfiguration.isSimulated` to true.");

    private static final /* synthetic */ CotsError[] $values() {
        return new CotsError[]{NONE, DISCOVERY_MISSING_KEY_CERTIFICATES, DISCOVERY_UNSUPPORTED_ANDROID_VERSION, DISCOVERY_MISSING_NFC_READER, DISCOVERY_UNTRUSTED_HARDWARE, DISCOVERY_UNTRUSTED_SOFTWARE, ATTESTATION_DEVICE_TAMPERED, ATTESTATION_API_CONNECTION_ERROR, ATTESTATION_SERVER_ERROR, ATTESTATION_API_RESPONSE_DECODING, UNEXPECTED_ERROR, DISCOVERY_DEBUG_NOT_ALLOWED};
    }

    public static EnumEntries<CotsError> getEntries() {
        return $ENTRIES;
    }

    public static CotsError valueOf(String str) {
        return (CotsError) Enum.valueOf(CotsError.class, str);
    }

    public static CotsError[] values() {
        return (CotsError[]) $VALUES.clone();
    }

    private CotsError(String str, int i, String str2) {
        this.message = str2;
    }

    public final String getMessage() {
        return this.message;
    }

    static {
        CotsError[] cotsErrorArr$values = $values();
        $VALUES = cotsErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cotsErrorArr$values);
    }
}
