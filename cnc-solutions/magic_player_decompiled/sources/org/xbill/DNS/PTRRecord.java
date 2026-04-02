package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class PTRRecord extends SingleCompressedNameBase {
    private static final long serialVersionUID = -8321636610425434192L;

    public PTRRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new PTRRecord();
    }

    public Name getTarget() {
        return getSingleName();
    }

    public PTRRecord(Name name, int i4, long j4, Name name2) {
        super(name, 12, i4, j4, name2, "target");
    }
}
