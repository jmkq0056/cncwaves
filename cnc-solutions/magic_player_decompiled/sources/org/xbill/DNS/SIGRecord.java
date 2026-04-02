package org.xbill.DNS;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class SIGRecord extends SIGBase {
    private static final long serialVersionUID = 4963556060953589058L;

    public SIGRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new SIGRecord();
    }

    public SIGRecord(Name name, int i4, long j4, int i5, int i6, long j5, Date date, Date date2, int i7, Name name2, byte[] bArr) {
        super(name, 24, i4, j4, i5, i6, j5, date, date2, i7, name2, bArr);
    }
}
