package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

/* JADX INFO: loaded from: classes2.dex */
public class DSRecord extends Record {
    public static final int GOST3411_DIGEST_ID = 3;
    public static final int SHA1_DIGEST_ID = 1;
    public static final int SHA256_DIGEST_ID = 2;
    public static final int SHA384_DIGEST_ID = 4;
    private static final long serialVersionUID = -9001819329700081493L;
    private int alg;
    private byte[] digest;
    private int digestid;
    private int footprint;

    public static class Digest {
        public static final int GOST3411 = 3;
        public static final int SHA1 = 1;
        public static final int SHA256 = 2;
        public static final int SHA384 = 4;

        private Digest() {
        }
    }

    public DSRecord() {
    }

    public int getAlgorithm() {
        return this.alg;
    }

    public byte[] getDigest() {
        return this.digest;
    }

    public int getDigestID() {
        return this.digestid;
    }

    public int getFootprint() {
        return this.footprint;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new DSRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.footprint = tokenizer.getUInt16();
        this.alg = tokenizer.getUInt8();
        this.digestid = tokenizer.getUInt8();
        this.digest = tokenizer.getHex();
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.footprint = dNSInput.readU16();
        this.alg = dNSInput.readU8();
        this.digestid = dNSInput.readU8();
        this.digest = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.footprint);
        stringBuffer.append(" ");
        stringBuffer.append(this.alg);
        stringBuffer.append(" ");
        stringBuffer.append(this.digestid);
        if (this.digest != null) {
            stringBuffer.append(" ");
            stringBuffer.append(base16.toString(this.digest));
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU16(this.footprint);
        dNSOutput.writeU8(this.alg);
        dNSOutput.writeU8(this.digestid);
        byte[] bArr = this.digest;
        if (bArr != null) {
            dNSOutput.writeByteArray(bArr);
        }
    }

    public DSRecord(Name name, int i4, int i5, long j4, int i6, int i7, int i8, byte[] bArr) {
        super(name, i4, i5, j4);
        this.footprint = Record.checkU16("footprint", i6);
        this.alg = Record.checkU8("alg", i7);
        this.digestid = Record.checkU8("digestid", i8);
        this.digest = bArr;
    }

    public DSRecord(Name name, int i4, long j4, int i5, int i6, int i7, byte[] bArr) {
        this(name, 43, i4, j4, i5, i6, i7, bArr);
    }

    public DSRecord(Name name, int i4, long j4, int i5, DNSKEYRecord dNSKEYRecord) {
        this(name, i4, j4, dNSKEYRecord.getFootprint(), dNSKEYRecord.getAlgorithm(), i5, DNSSEC.generateDSDigest(dNSKEYRecord, i5));
    }
}
