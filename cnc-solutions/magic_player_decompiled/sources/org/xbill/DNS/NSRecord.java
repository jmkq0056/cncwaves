package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class NSRecord extends SingleCompressedNameBase {
    private static final long serialVersionUID = 487170758138268838L;

    public NSRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Name getAdditionalName() {
        return getSingleName();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NSRecord();
    }

    public Name getTarget() {
        return getSingleName();
    }

    public NSRecord(Name name, int i4, long j4, Name name2) {
        super(name, 2, i4, j4, name2, "target");
    }
}
