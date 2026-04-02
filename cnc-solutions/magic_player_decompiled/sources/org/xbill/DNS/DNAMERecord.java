package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class DNAMERecord extends SingleNameBase {
    private static final long serialVersionUID = 2670767677200844154L;

    public DNAMERecord() {
    }

    public Name getAlias() {
        return getSingleName();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new DNAMERecord();
    }

    public Name getTarget() {
        return getSingleName();
    }

    public DNAMERecord(Name name, int i4, long j4, Name name2) {
        super(name, 39, i4, j4, name2, "alias");
    }
}
