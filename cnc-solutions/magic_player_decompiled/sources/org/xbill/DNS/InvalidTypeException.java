package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidTypeException extends IllegalArgumentException {
    public InvalidTypeException(int i4) {
        super(v2.a.a("Invalid DNS type: ", i4));
    }
}
