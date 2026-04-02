package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
abstract class SingleNameBase extends Record {
    private static final long serialVersionUID = -18595042501413L;
    public Name singleName;

    public SingleNameBase() {
    }

    public Name getSingleName() {
        return this.singleName;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.singleName = tokenizer.getName(name);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.singleName = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        return this.singleName.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.singleName.toWire(dNSOutput, null, z3);
    }

    public SingleNameBase(Name name, int i4, int i5, long j4) {
        super(name, i4, i5, j4);
    }

    public SingleNameBase(Name name, int i4, int i5, long j4, Name name2, String str) {
        super(name, i4, i5, j4);
        this.singleName = Record.checkName(str, name2);
    }
}
