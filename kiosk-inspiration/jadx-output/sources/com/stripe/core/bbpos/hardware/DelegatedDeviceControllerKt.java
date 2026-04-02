package com.stripe.core.bbpos.hardware;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: DelegatedDeviceController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS", "", "getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS", "()J", "CHECK_CARD_TIMEOUT_SECONDS", "", "ONLINE_PROCESS_TIMEOUT_SECONDS", "SELECT_ACCOUNT_TYPE_TIMEOUT_SECONDS", "SELECT_APPLICATION_TIMEOUT_SECONDS", "hardware_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DelegatedDeviceControllerKt {
    private static final long ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS;
    public static final int CHECK_CARD_TIMEOUT_SECONDS = 3600;
    public static final int ONLINE_PROCESS_TIMEOUT_SECONDS = 90;
    public static final int SELECT_ACCOUNT_TYPE_TIMEOUT_SECONDS = 90;
    public static final int SELECT_APPLICATION_TIMEOUT_SECONDS = 90;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS = Duration.m2193getInWholeSecondsimpl(DurationKt.toDuration(2, DurationUnit.MINUTES));
    }

    public static final long getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS() {
        return ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS;
    }
}
