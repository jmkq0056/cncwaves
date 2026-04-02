package org.fourthline.cling.support.model.dlna.types;

/* JADX INFO: loaded from: classes2.dex */
public class CodedDataBuffer {
    private Long size;
    private TransferMechanism tranfer;

    public enum TransferMechanism {
        IMMEDIATELY,
        TIMESTAMP,
        OTHER
    }

    public CodedDataBuffer(Long l4, TransferMechanism transferMechanism) {
        this.size = l4;
        this.tranfer = transferMechanism;
    }

    public Long getSize() {
        return this.size;
    }

    public TransferMechanism getTranfer() {
        return this.tranfer;
    }
}
