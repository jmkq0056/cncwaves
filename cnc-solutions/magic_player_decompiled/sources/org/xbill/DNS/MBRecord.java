package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class MBRecord extends SingleNameBase {
    private static final long serialVersionUID = 532349543479150419L;

    public MBRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Name getAdditionalName() {
        return getSingleName();
    }

    public Name getMailbox() {
        return getSingleName();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new MBRecord();
    }

    public MBRecord(Name name, int i4, long j4, Name name2) {
        super(name, 7, i4, j4, name2, "mailbox");
    }
}
