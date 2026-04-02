package org.xbill.DNS;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class RRSIGRecord extends SIGBase {
    private static final long serialVersionUID = -2609150673537226317L;

    public RRSIGRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new RRSIGRecord();
    }

    public RRSIGRecord(Name name, int i4, long j4, int i5, int i6, long j5, Date date, Date date2, int i7, Name name2, byte[] bArr) {
        super(name, 46, i4, j4, i5, i6, j5, date, date2, i7, name2, bArr);
    }
}
