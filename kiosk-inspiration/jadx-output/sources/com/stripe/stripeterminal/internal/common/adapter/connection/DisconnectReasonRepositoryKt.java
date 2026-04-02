package com.stripe.stripeterminal.internal.common.adapter.connection;

import com.stripe.stripeterminal.external.models.DisconnectReason;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DisconnectReasonRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toLogString", "", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "adapter_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DisconnectReasonRepositoryKt {

    /* JADX INFO: compiled from: DisconnectReasonRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DisconnectReason.values().length];
            try {
                iArr[DisconnectReason.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DisconnectReason.DISCONNECT_REQUESTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DisconnectReason.REBOOT_REQUESTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DisconnectReason.SECURITY_REBOOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DisconnectReason.CRITICALLY_LOW_BATTERY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DisconnectReason.POWERED_OFF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DisconnectReason.BLUETOOTH_DISABLED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String toLogString(DisconnectReason disconnectReason) {
        Intrinsics.checkNotNullParameter(disconnectReason, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[disconnectReason.ordinal()]) {
            case 1:
                return "unknown";
            case 2:
                return "disconnect_requested";
            case 3:
                return "reboot_requested";
            case 4:
                return "security_reboot";
            case 5:
                return "critically_low_battery";
            case 6:
                return "powered_off";
            case 7:
                return "bluetooth_disabled";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
