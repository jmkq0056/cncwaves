package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidTTLException extends IllegalArgumentException {
    public InvalidTTLException(long j4) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Invalid DNS TTL: ");
        stringBuffer.append(j4);
        super(stringBuffer.toString());
    }
}
