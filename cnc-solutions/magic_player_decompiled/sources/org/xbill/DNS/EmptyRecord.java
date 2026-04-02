package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
class EmptyRecord extends Record {
    private static final long serialVersionUID = 3601852050646429582L;

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new EmptyRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        return "";
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
    }
}
