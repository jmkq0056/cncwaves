package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class KXRecord extends U16NameBase {
    private static final long serialVersionUID = 7448568832769757809L;

    public KXRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Name getAdditionalName() {
        return getNameField();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new KXRecord();
    }

    public int getPreference() {
        return getU16Field();
    }

    public Name getTarget() {
        return getNameField();
    }

    public KXRecord(Name name, int i4, long j4, int i5, Name name2) {
        super(name, 36, i4, j4, i5, "preference", name2, "target");
    }
}
