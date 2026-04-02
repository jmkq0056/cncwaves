package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class MXRecord extends U16NameBase {
    private static final long serialVersionUID = 2914841027584208546L;

    public MXRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Name getAdditionalName() {
        return getNameField();
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new MXRecord();
    }

    public int getPriority() {
        return getU16Field();
    }

    public Name getTarget() {
        return getNameField();
    }

    @Override // org.xbill.DNS.U16NameBase, org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU16(this.u16Field);
        this.nameField.toWire(dNSOutput, compression, z3);
    }

    public MXRecord(Name name, int i4, long j4, int i5, Name name2) {
        super(name, 15, i4, j4, i5, "priority", name2, "target");
    }
}
