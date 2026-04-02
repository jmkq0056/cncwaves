package org.fourthline.cling.support.model;

import androidx.appcompat.view.a;

/* JADX INFO: loaded from: classes2.dex */
public enum SeekMode {
    TRACK_NR("TRACK_NR"),
    ABS_TIME("ABS_TIME"),
    REL_TIME("REL_TIME"),
    ABS_COUNT("ABS_COUNT"),
    REL_COUNT("REL_COUNT"),
    CHANNEL_FREQ("CHANNEL_FREQ"),
    TAPE_INDEX("TAPE-INDEX"),
    FRAME("FRAME");

    private String protocolString;

    SeekMode(String str) {
        this.protocolString = str;
    }

    public static SeekMode valueOrExceptionOf(String str) {
        for (SeekMode seekMode : values()) {
            if (seekMode.protocolString.equals(str)) {
                return seekMode;
            }
        }
        throw new IllegalArgumentException(a.a("Invalid seek mode string: ", str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocolString;
    }
}
