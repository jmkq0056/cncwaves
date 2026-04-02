package org.fourthline.cling.support.model.dlna;

/* JADX INFO: loaded from: classes2.dex */
public enum DLNAOperations {
    NONE(0),
    RANGE(1),
    TIMESEEK(16);

    private int code;

    DLNAOperations(int i4) {
        this.code = i4;
    }

    public int getCode() {
        return this.code;
    }

    public static DLNAOperations valueOf(int i4) {
        for (DLNAOperations dLNAOperations : values()) {
            if (dLNAOperations.getCode() == i4) {
                return dLNAOperations;
            }
        }
        return null;
    }
}
