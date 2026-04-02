package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class AFSDBRecord extends U16NameBase {
    private static final long serialVersionUID = 3034379930729102437L;

    public AFSDBRecord() {
    }

    public Name getHost() {
        return getNameField();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new AFSDBRecord();
    }

    public int getSubtype() {
        return getU16Field();
    }

    public AFSDBRecord(Name name, int i4, long j4, int i5, Name name2) {
        super(name, 18, i4, j4, i5, "subtype", name2, "host");
    }
}
