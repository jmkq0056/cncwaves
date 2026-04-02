package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
public class OPENPGPKEYRecord extends Record {
    private static final long serialVersionUID = -1277262990243423062L;
    private byte[] cert;

    public OPENPGPKEYRecord() {
    }

    public byte[] getCert() {
        return this.cert;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new OPENPGPKEYRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.cert = tokenizer.getBase64();
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.cert = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.cert != null) {
            if (Options.check("multiline")) {
                stringBuffer.append("(\n");
                stringBuffer.append(base64.formatString(this.cert, 64, "\t", true));
            } else {
                stringBuffer.append(base64.toString(this.cert));
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeByteArray(this.cert);
    }

    public OPENPGPKEYRecord(Name name, int i4, long j4, byte[] bArr) {
        super(name, 61, i4, j4);
        this.cert = bArr;
    }
}
