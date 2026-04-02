package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class NULLRecord extends Record {
    private static final long serialVersionUID = -5796493183235216538L;
    private byte[] data;

    public NULLRecord() {
    }

    public byte[] getData() {
        return this.data;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NULLRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        throw tokenizer.exception("no defined text format for NULL records");
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.data = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        return Record.unknownToString(this.data);
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeByteArray(this.data);
    }

    public NULLRecord(Name name, int i4, long j4, byte[] bArr) {
        super(name, 10, i4, j4);
        if (bArr.length > 65535) {
            throw new IllegalArgumentException("data must be <65536 bytes");
        }
        this.data = bArr;
    }
}
