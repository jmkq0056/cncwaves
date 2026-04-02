package org.fourthline.cling.support.model.dlna;

/* JADX INFO: loaded from: classes2.dex */
public enum DLNAConversionIndicator {
    NONE(0),
    TRANSCODED(1);

    private int code;

    DLNAConversionIndicator(int i4) {
        this.code = i4;
    }

    public int getCode() {
        return this.code;
    }

    public static DLNAConversionIndicator valueOf(int i4) {
        for (DLNAConversionIndicator dLNAConversionIndicator : values()) {
            if (dLNAConversionIndicator.getCode() == i4) {
                return dLNAConversionIndicator;
            }
        }
        return null;
    }
}
