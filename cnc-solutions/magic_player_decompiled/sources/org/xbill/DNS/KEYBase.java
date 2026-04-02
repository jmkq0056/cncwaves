package org.xbill.DNS;

import java.security.PublicKey;
import org.xbill.DNS.DNSSEC;
import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
abstract class KEYBase extends Record {
    private static final long serialVersionUID = 3469321722693285454L;
    public int alg;
    public int flags;
    public int footprint;
    public byte[] key;
    public int proto;
    public PublicKey publicKey;

    public KEYBase() {
        this.footprint = -1;
        this.publicKey = null;
    }

    public int getAlgorithm() {
        return this.alg;
    }

    public int getFlags() {
        return this.flags;
    }

    public int getFootprint() {
        int i4;
        int i5;
        int i6 = this.footprint;
        if (i6 >= 0) {
            return i6;
        }
        DNSOutput dNSOutput = new DNSOutput();
        int i7 = 0;
        rrToWire(dNSOutput, null, false);
        byte[] byteArray = dNSOutput.toByteArray();
        if (this.alg == 1) {
            int i8 = byteArray[byteArray.length - 3] & 255;
            i5 = byteArray[byteArray.length - 2] & 255;
            i4 = i8 << 8;
        } else {
            i4 = 0;
            while (i7 < byteArray.length - 1) {
                i4 += ((byteArray[i7] & 255) << 8) + (byteArray[i7 + 1] & 255);
                i7 += 2;
            }
            if (i7 < byteArray.length) {
                i4 += (byteArray[i7] & 255) << 8;
            }
            i5 = (i4 >> 16) & 65535;
        }
        int i9 = (i4 + i5) & 65535;
        this.footprint = i9;
        return i9;
    }

    public byte[] getKey() {
        return this.key;
    }

    public int getProtocol() {
        return this.proto;
    }

    public PublicKey getPublicKey() throws DNSSEC.DNSSECException {
        PublicKey publicKey = this.publicKey;
        if (publicKey != null) {
            return publicKey;
        }
        PublicKey publicKey2 = DNSSEC.toPublicKey(this);
        this.publicKey = publicKey2;
        return publicKey2;
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.flags = dNSInput.readU16();
        this.proto = dNSInput.readU8();
        this.alg = dNSInput.readU8();
        if (dNSInput.remaining() > 0) {
            this.key = dNSInput.readByteArray();
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.flags);
        stringBuffer.append(" ");
        stringBuffer.append(this.proto);
        stringBuffer.append(" ");
        stringBuffer.append(this.alg);
        if (this.key != null) {
            if (Options.check("multiline")) {
                stringBuffer.append(" (\n");
                stringBuffer.append(base64.formatString(this.key, 64, "\t", true));
                stringBuffer.append(" ; key_tag = ");
                stringBuffer.append(getFootprint());
            } else {
                stringBuffer.append(" ");
                stringBuffer.append(base64.toString(this.key));
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU16(this.flags);
        dNSOutput.writeU8(this.proto);
        dNSOutput.writeU8(this.alg);
        byte[] bArr = this.key;
        if (bArr != null) {
            dNSOutput.writeByteArray(bArr);
        }
    }

    public KEYBase(Name name, int i4, int i5, long j4, int i6, int i7, int i8, byte[] bArr) {
        super(name, i4, i5, j4);
        this.footprint = -1;
        this.publicKey = null;
        this.flags = Record.checkU16("flags", i6);
        this.proto = Record.checkU8("proto", i7);
        this.alg = Record.checkU8("alg", i8);
        this.key = bArr;
    }
}
