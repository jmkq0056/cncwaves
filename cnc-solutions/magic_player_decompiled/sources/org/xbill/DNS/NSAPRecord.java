package org.xbill.DNS;

import java.io.ByteArrayOutputStream;
import org.xbill.DNS.utils.base16;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class NSAPRecord extends Record {
    private static final long serialVersionUID = -1037209403185658593L;
    private byte[] address;

    public NSAPRecord() {
    }

    private static final byte[] checkAndConvertAddress(String str) {
        if (!str.substring(0, 2).equalsIgnoreCase("0x")) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        boolean z3 = false;
        int i4 = 0;
        for (int i5 = 2; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '.') {
                int iDigit = Character.digit(cCharAt, 16);
                if (iDigit == -1) {
                    return null;
                }
                if (z3) {
                    i4 += iDigit;
                    byteArrayOutputStream.write(i4);
                    z3 = false;
                } else {
                    i4 = iDigit << 4;
                    z3 = true;
                }
            }
        }
        if (z3) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public String getAddress() {
        return Record.byteArrayToString(this.address, false);
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NSAPRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        String string = tokenizer.getString();
        byte[] bArrCheckAndConvertAddress = checkAndConvertAddress(string);
        this.address = bArrCheckAndConvertAddress;
        if (bArrCheckAndConvertAddress == null) {
            throw a.a("invalid NSAP address ", string, tokenizer);
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.address = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBufferA = e.a("0x");
        stringBufferA.append(base16.toString(this.address));
        return stringBufferA.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeByteArray(this.address);
    }

    public NSAPRecord(Name name, int i4, long j4, String str) {
        super(name, 22, i4, j4);
        byte[] bArrCheckAndConvertAddress = checkAndConvertAddress(str);
        this.address = bArrCheckAndConvertAddress;
        if (bArrCheckAndConvertAddress != null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("invalid NSAP address ");
        stringBuffer.append(str);
        throw new IllegalArgumentException(stringBuffer.toString());
    }
}
