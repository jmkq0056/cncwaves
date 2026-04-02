package org.xbill.DNS;

import java.util.Date;
import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
public class TSIGRecord extends Record {
    private static final long serialVersionUID = -88820909016649306L;
    private Name alg;
    private int error;
    private int fudge;
    private int originalID;
    private byte[] other;
    private byte[] signature;
    private Date timeSigned;

    public TSIGRecord() {
    }

    public Name getAlgorithm() {
        return this.alg;
    }

    public int getError() {
        return this.error;
    }

    public int getFudge() {
        return this.fudge;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new TSIGRecord();
    }

    public int getOriginalID() {
        return this.originalID;
    }

    public byte[] getOther() {
        return this.other;
    }

    public byte[] getSignature() {
        return this.signature;
    }

    public Date getTimeSigned() {
        return this.timeSigned;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        throw tokenizer.exception("no text format defined for TSIG");
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        this.alg = new Name(dNSInput);
        this.timeSigned = new Date(((((long) dNSInput.readU16()) << 32) + dNSInput.readU32()) * 1000);
        this.fudge = dNSInput.readU16();
        this.signature = dNSInput.readByteArray(dNSInput.readU16());
        this.originalID = dNSInput.readU16();
        this.error = dNSInput.readU16();
        int u16 = dNSInput.readU16();
        if (u16 > 0) {
            this.other = dNSInput.readByteArray(u16);
        } else {
            this.other = null;
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.alg);
        stringBuffer.append(" ");
        if (Options.check("multiline")) {
            stringBuffer.append("(\n\t");
        }
        stringBuffer.append(this.timeSigned.getTime() / 1000);
        stringBuffer.append(" ");
        stringBuffer.append(this.fudge);
        stringBuffer.append(" ");
        stringBuffer.append(this.signature.length);
        if (Options.check("multiline")) {
            stringBuffer.append("\n");
            stringBuffer.append(base64.formatString(this.signature, 64, "\t", false));
        } else {
            stringBuffer.append(" ");
            stringBuffer.append(base64.toString(this.signature));
        }
        stringBuffer.append(" ");
        stringBuffer.append(Rcode.TSIGstring(this.error));
        stringBuffer.append(" ");
        byte[] bArr = this.other;
        if (bArr == null) {
            stringBuffer.append(0);
        } else {
            stringBuffer.append(bArr.length);
            if (Options.check("multiline")) {
                stringBuffer.append("\n\n\n\t");
            } else {
                stringBuffer.append(" ");
            }
            if (this.error == 18) {
                byte[] bArr2 = this.other;
                if (bArr2.length != 6) {
                    stringBuffer.append("<invalid BADTIME other data>");
                } else {
                    long j4 = (((long) (bArr2[0] & 255)) << 40) + (((long) (bArr2[1] & 255)) << 32) + ((long) ((bArr2[2] & 255) << 24)) + ((long) ((bArr2[3] & 255) << 16)) + ((long) ((bArr2[4] & 255) << 8)) + ((long) (bArr2[5] & 255));
                    stringBuffer.append("<server time: ");
                    stringBuffer.append(new Date(j4 * 1000));
                    stringBuffer.append(">");
                }
            } else {
                stringBuffer.append("<");
                stringBuffer.append(base64.toString(this.other));
                stringBuffer.append(">");
            }
        }
        if (Options.check("multiline")) {
            stringBuffer.append(" )");
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.alg.toWire(dNSOutput, null, z3);
        long time = this.timeSigned.getTime() / 1000;
        dNSOutput.writeU16((int) (time >> 32));
        dNSOutput.writeU32(time & 4294967295L);
        dNSOutput.writeU16(this.fudge);
        dNSOutput.writeU16(this.signature.length);
        dNSOutput.writeByteArray(this.signature);
        dNSOutput.writeU16(this.originalID);
        dNSOutput.writeU16(this.error);
        byte[] bArr = this.other;
        if (bArr == null) {
            dNSOutput.writeU16(0);
        } else {
            dNSOutput.writeU16(bArr.length);
            dNSOutput.writeByteArray(this.other);
        }
    }

    public TSIGRecord(Name name, int i4, long j4, Name name2, Date date, int i5, byte[] bArr, int i6, int i7, byte[] bArr2) {
        super(name, 250, i4, j4);
        this.alg = Record.checkName("alg", name2);
        this.timeSigned = date;
        this.fudge = Record.checkU16("fudge", i5);
        this.signature = bArr;
        this.originalID = Record.checkU16("originalID", i6);
        this.error = Record.checkU16("error", i7);
        this.other = bArr2;
    }
}
