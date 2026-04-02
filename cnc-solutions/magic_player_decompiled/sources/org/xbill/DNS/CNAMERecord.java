package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class CNAMERecord extends SingleCompressedNameBase {
    private static final long serialVersionUID = -4020373886892538580L;

    public CNAMERecord() {
    }

    public Name getAlias() {
        return getSingleName();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new CNAMERecord();
    }

    public Name getTarget() {
        return getSingleName();
    }

    public CNAMERecord(Name name, int i4, long j4, Name name2) {
        super(name, 5, i4, j4, name2, "alias");
    }
}
