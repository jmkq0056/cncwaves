package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class X25Record extends Record {
    private static final long serialVersionUID = 4267576252335579764L;
    private byte[] address;

    public X25Record() {
    }

    private static final byte[] checkAndConvertAddress(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (!Character.isDigit(cCharAt)) {
                return null;
            }
            bArr[i4] = (byte) cCharAt;
        }
        return bArr;
    }

    public String getAddress() {
        return Record.byteArrayToString(this.address, false);
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new X25Record();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        String string = tokenizer.getString();
        byte[] bArrCheckAndConvertAddress = checkAndConvertAddress(string);
        this.address = bArrCheckAndConvertAddress;
        if (bArrCheckAndConvertAddress == null) {
            throw a.a("invalid PSDN address ", string, tokenizer);
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.address = dNSInput.readCountedString();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        return Record.byteArrayToString(this.address, true);
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeCountedString(this.address);
    }

    public X25Record(Name name, int i4, long j4, String str) {
        super(name, 19, i4, j4);
        byte[] bArrCheckAndConvertAddress = checkAndConvertAddress(str);
        this.address = bArrCheckAndConvertAddress;
        if (bArrCheckAndConvertAddress != null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("invalid PSDN address ");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }
}
