package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
public class DHCIDRecord extends Record {
    private static final long serialVersionUID = -8214820200808997707L;
    private byte[] data;

    public DHCIDRecord() {
    }

    public byte[] getData() {
        return this.data;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new DHCIDRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.data = tokenizer.getBase64();
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.data = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        return base64.toString(this.data);
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeByteArray(this.data);
    }

    public DHCIDRecord(Name name, int i4, long j4, byte[] bArr) {
        super(name, 49, i4, j4);
        this.data = bArr;
    }
}
