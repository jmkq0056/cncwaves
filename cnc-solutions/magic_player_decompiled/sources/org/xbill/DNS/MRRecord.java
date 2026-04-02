package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class MRRecord extends SingleNameBase {
    private static final long serialVersionUID = -5617939094209927533L;

    public MRRecord() {
    }

    public Name getNewName() {
        return getSingleName();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new MRRecord();
    }

    public MRRecord(Name name, int i4, long j4, Name name2) {
        super(name, 9, i4, j4, name2, "new name");
    }
}
