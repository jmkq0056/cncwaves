package org.xbill.DNS;

import java.security.PublicKey;
import org.xbill.DNS.DNSSEC;

/* JADX INFO: loaded from: classes2.dex */
public class DNSKEYRecord extends KEYBase {
    private static final long serialVersionUID = -8679800040426675002L;

    public static class Flags {
        public static final int REVOKE = 128;
        public static final int SEP_KEY = 1;
        public static final int ZONE_KEY = 256;

        private Flags() {
        }
    }

    public static class Protocol {
        public static final int DNSSEC = 3;

        private Protocol() {
        }
    }

    public DNSKEYRecord() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new DNSKEYRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        this.flags = tokenizer.getUInt16();
        this.proto = tokenizer.getUInt8();
        String string = tokenizer.getString();
        int iValue = DNSSEC.Algorithm.value(string);
        this.alg = iValue;
        if (iValue < 0) {
            throw a.a("Invalid algorithm: ", string, tokenizer);
        }
        this.key = tokenizer.getBase64();
    }

    public DNSKEYRecord(Name name, int i4, int i5, long j4, int i6, int i7, int i8, byte[] bArr) {
        super(name, i4, i5, j4, i6, i7, i8, bArr);
    }

    public DNSKEYRecord(Name name, int i4, long j4, int i5, int i6, int i7, byte[] bArr) {
        this(name, 48, i4, j4, i5, i6, i7, bArr);
    }

    public DNSKEYRecord(Name name, int i4, long j4, int i5, int i6, int i7, PublicKey publicKey) {
        super(name, 48, i4, j4, i5, i6, i7, DNSSEC.fromPublicKey(publicKey, i7));
        this.publicKey = publicKey;
    }
}
