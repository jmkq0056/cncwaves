package com.stripe.core.bbpos.hardware.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SessionError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/api/SessionError;", "", "(Ljava/lang/String;I)V", "FIRMWARE_NOT_SUPPORTED", "SESSION_NOT_INITIALIZED", "INVALID_VENDOR_TOKEN", "INVALID_SESSION", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionError {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SessionError[] $VALUES;
    public static final SessionError FIRMWARE_NOT_SUPPORTED = new SessionError("FIRMWARE_NOT_SUPPORTED", 0);
    public static final SessionError SESSION_NOT_INITIALIZED = new SessionError("SESSION_NOT_INITIALIZED", 1);
    public static final SessionError INVALID_VENDOR_TOKEN = new SessionError("INVALID_VENDOR_TOKEN", 2);
    public static final SessionError INVALID_SESSION = new SessionError("INVALID_SESSION", 3);

    private static final /* synthetic */ SessionError[] $values() {
        return new SessionError[]{FIRMWARE_NOT_SUPPORTED, SESSION_NOT_INITIALIZED, INVALID_VENDOR_TOKEN, INVALID_SESSION};
    }

    public static EnumEntries<SessionError> getEntries() {
        return $ENTRIES;
    }

    public static SessionError valueOf(String str) {
        return (SessionError) Enum.valueOf(SessionError.class, str);
    }

    public static SessionError[] values() {
        return (SessionError[]) $VALUES.clone();
    }

    private SessionError(String str, int i) {
    }

    static {
        SessionError[] sessionErrorArr$values = $values();
        $VALUES = sessionErrorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(sessionErrorArr$values);
    }
}
