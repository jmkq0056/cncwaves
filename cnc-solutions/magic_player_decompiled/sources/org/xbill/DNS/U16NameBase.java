package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
abstract class U16NameBase extends Record {
    private static final long serialVersionUID = -8315884183112502995L;
    public Name nameField;
    public int u16Field;

    public U16NameBase() {
    }

    public Name getNameField() {
        return this.nameField;
    }

    public int getU16Field() {
        return this.u16Field;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.u16Field = tokenizer.getUInt16();
        this.nameField = tokenizer.getName(name);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.u16Field = dNSInput.readU16();
        this.nameField = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.u16Field);
        stringBuffer.append(" ");
        stringBuffer.append(this.nameField);
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU16(this.u16Field);
        this.nameField.toWire(dNSOutput, null, z3);
    }

    public U16NameBase(Name name, int i4, int i5, long j4) {
        super(name, i4, i5, j4);
    }

    public U16NameBase(Name name, int i4, int i5, long j4, int i6, String str, Name name2, String str2) {
        super(name, i4, i5, j4);
        this.u16Field = Record.checkU16(str, i6);
        this.nameField = Record.checkName(str2, name2);
    }
}
