package com.stripe.bbpos.sdk;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Error.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b-\b\u0086\u0081\u0002\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u00010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/¨\u00061"}, d2 = {"Lcom/stripe/bbpos/sdk/Error;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ERROR_UNKNOWN", "UNKNOWN", "CMD_NOT_AVAILABLE", "DEVICE_BUSY", "INPUT_OUT_OF_RANGE", "INPUT_INVALID_FORMAT", "INPUT_INVALID", "CASHBACK_NOT_SUPPORTED", "COMM_ERROR", "FAIL_TO_START_BT", "VOLUME_WARNING_NOT_ACCEPTED", "FAIL_TO_START_AUDIO", "INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE", "COMM_LINK_UNINITIALIZED", "BTV4_NOT_SUPPORTED", "FAIL_TO_START_SERIAL", "FAIL_TO_START_USB", "USB_DEVICE_NOT_FOUND", "USB_DEVICE_PERMISSION_DENIED", "USB_NOT_SUPPORTED", "CHANNEL_BUFFER_FULL", "BLUETOOTH_PERMISSION_DENIED", "HARDWARE_NOT_SUPPORTED", "TAMPER", "PCI_ERROR", "AUDIO_PERMISSION_DENIED", "BLUETOOTH_LOCATION_PERMISSION_DENIED", "SERIAL_PERMISSION_DENIED", "PAIRING_ERROR", "PAIRING_ERROR_INCORRECT_PASSKEY", "PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE", "BLE_SECURE_CONNECTION_NOT_SUPPORTED", "NFC_NOT_SUPPORTED", "NFC_PERMISSION_DENIED", "NFC_DISABLED", "CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE", "CONTACTLESS_ERROR", "NOT_COMPATIBLE_ERROR", "INTEGRITY_CHECK_ERROR", "FAIL_TO_START_TEST_CHANNEL", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Error implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Error[] $VALUES;
    public static final ProtoAdapter<Error> ADAPTER;
    public static final Error AUDIO_PERMISSION_DENIED;
    public static final Error BLE_SECURE_CONNECTION_NOT_SUPPORTED;
    public static final Error BLUETOOTH_LOCATION_PERMISSION_DENIED;
    public static final Error BLUETOOTH_PERMISSION_DENIED;

    @Deprecated(message = "BTV4_NOT_SUPPORTED is deprecated")
    public static final Error BTV4_NOT_SUPPORTED;
    public static final Error CASHBACK_NOT_SUPPORTED;
    public static final Error CHANNEL_BUFFER_FULL;
    public static final Error CMD_NOT_AVAILABLE;
    public static final Error COMM_ERROR;
    public static final Error COMM_LINK_UNINITIALIZED;
    public static final Error CONTACTLESS_ERROR;
    public static final Error CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final Error DEVICE_BUSY;
    public static final Error ERROR_UNKNOWN;
    public static final Error FAIL_TO_START_AUDIO;
    public static final Error FAIL_TO_START_BT;
    public static final Error FAIL_TO_START_SERIAL;
    public static final Error FAIL_TO_START_TEST_CHANNEL;
    public static final Error FAIL_TO_START_USB;
    public static final Error HARDWARE_NOT_SUPPORTED;
    public static final Error INPUT_INVALID;
    public static final Error INPUT_INVALID_FORMAT;
    public static final Error INPUT_OUT_OF_RANGE;
    public static final Error INTEGRITY_CHECK_ERROR;
    public static final Error INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE;
    public static final Error NFC_DISABLED;
    public static final Error NFC_NOT_SUPPORTED;
    public static final Error NFC_PERMISSION_DENIED;
    public static final Error NOT_COMPATIBLE_ERROR;
    public static final Error PAIRING_ERROR;
    public static final Error PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE;
    public static final Error PAIRING_ERROR_INCORRECT_PASSKEY;
    public static final Error PCI_ERROR;
    public static final Error SERIAL_PERMISSION_DENIED;
    public static final Error TAMPER;
    public static final Error UNKNOWN;
    public static final Error USB_DEVICE_NOT_FOUND;
    public static final Error USB_DEVICE_PERMISSION_DENIED;
    public static final Error USB_NOT_SUPPORTED;
    public static final Error VOLUME_WARNING_NOT_ACCEPTED;
    private final int value;

    private static final /* synthetic */ Error[] $values() {
        return new Error[]{ERROR_UNKNOWN, UNKNOWN, CMD_NOT_AVAILABLE, DEVICE_BUSY, INPUT_OUT_OF_RANGE, INPUT_INVALID_FORMAT, INPUT_INVALID, CASHBACK_NOT_SUPPORTED, COMM_ERROR, FAIL_TO_START_BT, VOLUME_WARNING_NOT_ACCEPTED, FAIL_TO_START_AUDIO, INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE, COMM_LINK_UNINITIALIZED, BTV4_NOT_SUPPORTED, FAIL_TO_START_SERIAL, FAIL_TO_START_USB, USB_DEVICE_NOT_FOUND, USB_DEVICE_PERMISSION_DENIED, USB_NOT_SUPPORTED, CHANNEL_BUFFER_FULL, BLUETOOTH_PERMISSION_DENIED, HARDWARE_NOT_SUPPORTED, TAMPER, PCI_ERROR, AUDIO_PERMISSION_DENIED, BLUETOOTH_LOCATION_PERMISSION_DENIED, SERIAL_PERMISSION_DENIED, PAIRING_ERROR, PAIRING_ERROR_INCORRECT_PASSKEY, PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE, BLE_SECURE_CONNECTION_NOT_SUPPORTED, NFC_NOT_SUPPORTED, NFC_PERMISSION_DENIED, NFC_DISABLED, CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE, CONTACTLESS_ERROR, NOT_COMPATIBLE_ERROR, INTEGRITY_CHECK_ERROR, FAIL_TO_START_TEST_CHANNEL};
    }

    @JvmStatic
    public static final Error fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Error> getEntries() {
        return $ENTRIES;
    }

    public static Error valueOf(String str) {
        return (Error) Enum.valueOf(Error.class, str);
    }

    public static Error[] values() {
        return (Error[]) $VALUES.clone();
    }

    private Error(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Error error = new Error("ERROR_UNKNOWN", 0, 0);
        ERROR_UNKNOWN = error;
        UNKNOWN = new Error("UNKNOWN", 1, 1);
        CMD_NOT_AVAILABLE = new Error("CMD_NOT_AVAILABLE", 2, 2);
        DEVICE_BUSY = new Error("DEVICE_BUSY", 3, 3);
        INPUT_OUT_OF_RANGE = new Error("INPUT_OUT_OF_RANGE", 4, 4);
        INPUT_INVALID_FORMAT = new Error("INPUT_INVALID_FORMAT", 5, 5);
        INPUT_INVALID = new Error("INPUT_INVALID", 6, 6);
        CASHBACK_NOT_SUPPORTED = new Error("CASHBACK_NOT_SUPPORTED", 7, 7);
        COMM_ERROR = new Error("COMM_ERROR", 8, 8);
        FAIL_TO_START_BT = new Error("FAIL_TO_START_BT", 9, 9);
        VOLUME_WARNING_NOT_ACCEPTED = new Error("VOLUME_WARNING_NOT_ACCEPTED", 10, 10);
        FAIL_TO_START_AUDIO = new Error("FAIL_TO_START_AUDIO", 11, 11);
        INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE = new Error("INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE", 12, 12);
        COMM_LINK_UNINITIALIZED = new Error("COMM_LINK_UNINITIALIZED", 13, 13);
        BTV4_NOT_SUPPORTED = new Error("BTV4_NOT_SUPPORTED", 14, 14);
        FAIL_TO_START_SERIAL = new Error("FAIL_TO_START_SERIAL", 15, 15);
        FAIL_TO_START_USB = new Error("FAIL_TO_START_USB", 16, 16);
        USB_DEVICE_NOT_FOUND = new Error("USB_DEVICE_NOT_FOUND", 17, 17);
        USB_DEVICE_PERMISSION_DENIED = new Error("USB_DEVICE_PERMISSION_DENIED", 18, 18);
        USB_NOT_SUPPORTED = new Error("USB_NOT_SUPPORTED", 19, 19);
        CHANNEL_BUFFER_FULL = new Error("CHANNEL_BUFFER_FULL", 20, 20);
        BLUETOOTH_PERMISSION_DENIED = new Error("BLUETOOTH_PERMISSION_DENIED", 21, 21);
        HARDWARE_NOT_SUPPORTED = new Error("HARDWARE_NOT_SUPPORTED", 22, 22);
        TAMPER = new Error("TAMPER", 23, 23);
        PCI_ERROR = new Error("PCI_ERROR", 24, 24);
        AUDIO_PERMISSION_DENIED = new Error("AUDIO_PERMISSION_DENIED", 25, 25);
        BLUETOOTH_LOCATION_PERMISSION_DENIED = new Error("BLUETOOTH_LOCATION_PERMISSION_DENIED", 26, 26);
        SERIAL_PERMISSION_DENIED = new Error("SERIAL_PERMISSION_DENIED", 27, 27);
        PAIRING_ERROR = new Error("PAIRING_ERROR", 28, 28);
        PAIRING_ERROR_INCORRECT_PASSKEY = new Error("PAIRING_ERROR_INCORRECT_PASSKEY", 29, 29);
        PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE = new Error("PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE", 30, 30);
        BLE_SECURE_CONNECTION_NOT_SUPPORTED = new Error("BLE_SECURE_CONNECTION_NOT_SUPPORTED", 31, 31);
        NFC_NOT_SUPPORTED = new Error("NFC_NOT_SUPPORTED", 32, 32);
        NFC_PERMISSION_DENIED = new Error("NFC_PERMISSION_DENIED", 33, 33);
        NFC_DISABLED = new Error("NFC_DISABLED", 34, 34);
        CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE = new Error("CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE", 35, 35);
        CONTACTLESS_ERROR = new Error("CONTACTLESS_ERROR", 36, 36);
        NOT_COMPATIBLE_ERROR = new Error("NOT_COMPATIBLE_ERROR", 37, 37);
        INTEGRITY_CHECK_ERROR = new Error("INTEGRITY_CHECK_ERROR", 38, 38);
        FAIL_TO_START_TEST_CHANNEL = new Error("FAIL_TO_START_TEST_CHANNEL", 39, 39);
        Error[] errorArr$values = $values();
        $VALUES = errorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(errorArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Error.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Error>(orCreateKotlinClass, syntax, error) { // from class: com.stripe.bbpos.sdk.Error$Companion$ADAPTER$1
            {
                Error error2 = error;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Error fromValue(int value) {
                return Error.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Error.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/Error$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/Error;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Error fromValue(int value) {
            switch (value) {
                case 0:
                    return Error.ERROR_UNKNOWN;
                case 1:
                    return Error.UNKNOWN;
                case 2:
                    return Error.CMD_NOT_AVAILABLE;
                case 3:
                    return Error.DEVICE_BUSY;
                case 4:
                    return Error.INPUT_OUT_OF_RANGE;
                case 5:
                    return Error.INPUT_INVALID_FORMAT;
                case 6:
                    return Error.INPUT_INVALID;
                case 7:
                    return Error.CASHBACK_NOT_SUPPORTED;
                case 8:
                    return Error.COMM_ERROR;
                case 9:
                    return Error.FAIL_TO_START_BT;
                case 10:
                    return Error.VOLUME_WARNING_NOT_ACCEPTED;
                case 11:
                    return Error.FAIL_TO_START_AUDIO;
                case 12:
                    return Error.INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE;
                case 13:
                    return Error.COMM_LINK_UNINITIALIZED;
                case 14:
                    return Error.BTV4_NOT_SUPPORTED;
                case 15:
                    return Error.FAIL_TO_START_SERIAL;
                case 16:
                    return Error.FAIL_TO_START_USB;
                case 17:
                    return Error.USB_DEVICE_NOT_FOUND;
                case 18:
                    return Error.USB_DEVICE_PERMISSION_DENIED;
                case 19:
                    return Error.USB_NOT_SUPPORTED;
                case 20:
                    return Error.CHANNEL_BUFFER_FULL;
                case 21:
                    return Error.BLUETOOTH_PERMISSION_DENIED;
                case 22:
                    return Error.HARDWARE_NOT_SUPPORTED;
                case 23:
                    return Error.TAMPER;
                case 24:
                    return Error.PCI_ERROR;
                case 25:
                    return Error.AUDIO_PERMISSION_DENIED;
                case 26:
                    return Error.BLUETOOTH_LOCATION_PERMISSION_DENIED;
                case 27:
                    return Error.SERIAL_PERMISSION_DENIED;
                case 28:
                    return Error.PAIRING_ERROR;
                case 29:
                    return Error.PAIRING_ERROR_INCORRECT_PASSKEY;
                case 30:
                    return Error.PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE;
                case 31:
                    return Error.BLE_SECURE_CONNECTION_NOT_SUPPORTED;
                case 32:
                    return Error.NFC_NOT_SUPPORTED;
                case 33:
                    return Error.NFC_PERMISSION_DENIED;
                case 34:
                    return Error.NFC_DISABLED;
                case 35:
                    return Error.CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE;
                case 36:
                    return Error.CONTACTLESS_ERROR;
                case 37:
                    return Error.NOT_COMPATIBLE_ERROR;
                case 38:
                    return Error.INTEGRITY_CHECK_ERROR;
                case 39:
                    return Error.FAIL_TO_START_TEST_CHANNEL;
                default:
                    return null;
            }
        }
    }
}
