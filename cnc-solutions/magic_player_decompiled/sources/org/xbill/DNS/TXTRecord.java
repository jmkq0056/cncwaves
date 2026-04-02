package org.xbill.DNS;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TXTRecord extends TXTBase {
    private static final long serialVersionUID = -5780785764284221342L;

    public TXTRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new TXTRecord();
    }

    public TXTRecord(Name name, int i4, long j4, List list) {
        super(name, 16, i4, j4, list);
    }

    public TXTRecord(Name name, int i4, long j4, String str) {
        super(name, 16, i4, j4, str);
    }
}
