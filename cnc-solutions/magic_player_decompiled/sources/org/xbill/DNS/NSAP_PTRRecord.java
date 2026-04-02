package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class NSAP_PTRRecord extends SingleNameBase {
    private static final long serialVersionUID = 2386284746382064904L;

    public NSAP_PTRRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NSAP_PTRRecord();
    }

    public Name getTarget() {
        return getSingleName();
    }

    public NSAP_PTRRecord(Name name, int i4, long j4, Name name2) {
        super(name, 23, i4, j4, name2, "target");
    }
}
