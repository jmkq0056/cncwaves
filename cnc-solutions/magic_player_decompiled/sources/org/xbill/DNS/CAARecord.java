package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class CAARecord extends Record {
    private static final long serialVersionUID = 8544304287274216443L;
    private int flags;
    private byte[] tag;
    private byte[] value;

    public static class Flags {
        public static final int IssuerCritical = 128;

        private Flags() {
        }
    }

    public CAARecord() {
    }

    public int getFlags() {
        return this.flags;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new CAARecord();
    }

    public String getTag() {
        return Record.byteArrayToString(this.tag, false);
    }

    public String getValue() {
        return Record.byteArrayToString(this.value, false);
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        this.flags = tokenizer.getUInt8();
        try {
            this.tag = Record.byteArrayFromString(tokenizer.getString());
            this.value = Record.byteArrayFromString(tokenizer.getString());
        } catch (TextParseException e4) {
            throw tokenizer.exception(e4.getMessage());
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.flags = dNSInput.readU8();
        this.tag = dNSInput.readCountedString();
        this.value = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.flags);
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.tag, false));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.value, true));
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU8(this.flags);
        dNSOutput.writeCountedString(this.tag);
        dNSOutput.writeByteArray(this.value);
    }

    public CAARecord(Name name, int i4, long j4, int i5, String str, String str2) {
        super(name, 257, i4, j4);
        this.flags = Record.checkU8("flags", i5);
        try {
            this.tag = Record.byteArrayFromString(str);
            this.value = Record.byteArrayFromString(str2);
        } catch (TextParseException e4) {
            throw new IllegalArgumentException(e4.getMessage());
        }
    }
}
