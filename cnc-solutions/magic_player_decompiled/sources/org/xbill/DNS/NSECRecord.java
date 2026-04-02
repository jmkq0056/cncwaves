package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class NSECRecord extends Record {
    private static final long serialVersionUID = -5165065768816265385L;
    private Name next;
    private TypeBitmap types;

    public NSECRecord() {
    }

    public Name getNext() {
        return this.next;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NSECRecord();
    }

    public int[] getTypes() {
        return this.types.toArray();
    }

    public boolean hasType(int i4) {
        return this.types.contains(i4);
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.next = tokenizer.getName(name);
        this.types = new TypeBitmap(tokenizer);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.next = new Name(dNSInput);
        this.types = new TypeBitmap(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.next);
        if (!this.types.empty()) {
            stringBuffer.append(' ');
            stringBuffer.append(this.types.toString());
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.next.toWire(dNSOutput, null, false);
        this.types.toWire(dNSOutput);
    }

    public NSECRecord(Name name, int i4, long j4, Name name2, int[] iArr) {
        super(name, 47, i4, j4);
        this.next = Record.checkName("next", name2);
        for (int i5 : iArr) {
            Type.check(i5);
        }
        this.types = new TypeBitmap(iArr);
    }
}
