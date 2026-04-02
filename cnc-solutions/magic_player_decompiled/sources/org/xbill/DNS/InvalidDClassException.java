package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidDClassException extends IllegalArgumentException {
    public InvalidDClassException(int i4) {
        super(v2.a.a("Invalid DNS class: ", i4));
    }
}
