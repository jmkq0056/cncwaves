package org.xbill.DNS;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SPFRecord extends TXTBase {
    private static final long serialVersionUID = -2100754352801658722L;

    public SPFRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new SPFRecord();
    }

    public SPFRecord(Name name, int i4, long j4, List list) {
        super(name, 99, i4, j4, list);
    }

    public SPFRecord(Name name, int i4, long j4, String str) {
        super(name, 99, i4, j4, str);
    }
}
