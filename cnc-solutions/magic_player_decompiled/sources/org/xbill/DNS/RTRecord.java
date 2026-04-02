package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class RTRecord extends U16NameBase {
    private static final long serialVersionUID = -3206215651648278098L;

    public RTRecord() {
    }

    public Name getIntermediateHost() {
        return getNameField();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new RTRecord();
    }

    public int getPreference() {
        return getU16Field();
    }

    public RTRecord(Name name, int i4, long j4, int i5, Name name2) {
        super(name, 21, i4, j4, i5, "preference", name2, "intermediateHost");
    }
}
