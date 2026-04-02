package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
final class ccc054zz {
    aaa000zz aaa000 = aaa000zz.NO_ERROR;
    int aaa001 = -1;
    String aaa002 = "";

    enum aaa000zz {
        NO_ERROR,
        PASSKEY_INCORRECT,
        MOBILE_NOT_SUPPORT_LE_SECURE_CONNECTION,
        DEVICE_BEING_LINKED_TO_ANOTHER_MOBILE_ALREADY,
        PASSKEY_TIMEOUT,
        OTHER_ERROR_FROM_FW,
        CRC,
        INCORRECT_LENGTH,
        UNKNOWN,
        THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_USB,
        THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_BLUETOOTH
    }

    ccc054zz() {
        aaa001();
    }

    void aaa001() {
        this.aaa000 = aaa000zz.NO_ERROR;
        this.aaa001 = -1;
        this.aaa002 = "";
    }

    String aaa000() {
        aaa000zz aaa000zzVar = this.aaa000;
        return aaa000zzVar == aaa000zz.PASSKEY_INCORRECT ? "Incorrect Passkey error." : aaa000zzVar == aaa000zz.MOBILE_NOT_SUPPORT_LE_SECURE_CONNECTION ? "This device does not support BLE Secure Connection (Bluetooth 4.2)." : aaa000zzVar == aaa000zz.DEVICE_BEING_LINKED_TO_ANOTHER_MOBILE_ALREADY ? "The MPOS reader already paired with another device." : aaa000zzVar == aaa000zz.PASSKEY_TIMEOUT ? "Pairing Error (Code=5700)" : aaa000zzVar == aaa000zz.OTHER_ERROR_FROM_FW ? "Pairing Error (Code=58" + ccc071zz.aaa000((byte) (this.aaa001 & 255)) + ")" : aaa000zzVar == aaa000zz.CRC ? "BLE 4.2 secure connection setup package CRC error" : aaa000zzVar == aaa000zz.INCORRECT_LENGTH ? "BLE 4.2 secure connection setup package incorrect length" : aaa000zzVar == aaa000zz.THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_USB ? "Error Code 119 - The reader is already connected to another device via USB." : aaa000zzVar == aaa000zz.THE_READER_IS_ALREADY_CONNECTED_TO_ANOTHER_DEVICE_VIA_BLUETOOTH ? "Error Code 120 - The reader is already connected to another device via Bluetooth." : aaa000zzVar == aaa000zz.UNKNOWN ? "BLE 4.2 unknown error" : "";
    }
}
