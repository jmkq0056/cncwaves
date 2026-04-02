package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

/* JADX INFO: loaded from: classes2.dex */
public class SMIMEARecord extends Record {
    private static final long serialVersionUID = 1640247915216425235L;
    private byte[] certificateAssociationData;
    private int certificateUsage;
    private int matchingType;
    private int selector;

    public static class CertificateUsage {
        public static final int CA_CONSTRAINT = 0;
        public static final int DOMAIN_ISSUED_CERTIFICATE = 3;
        public static final int SERVICE_CERTIFICATE_CONSTRAINT = 1;
        public static final int TRUST_ANCHOR_ASSERTION = 2;

        private CertificateUsage() {
        }
    }

    public static class MatchingType {
        public static final int EXACT = 0;
        public static final int SHA256 = 1;
        public static final int SHA512 = 2;

        private MatchingType() {
        }
    }

    public static class Selector {
        public static final int FULL_CERTIFICATE = 0;
        public static final int SUBJECT_PUBLIC_KEY_INFO = 1;

        private Selector() {
        }
    }

    public SMIMEARecord() {
    }

    public final byte[] getCertificateAssociationData() {
        return this.certificateAssociationData;
    }

    public int getCertificateUsage() {
        return this.certificateUsage;
    }

    public int getMatchingType() {
        return this.matchingType;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new SMIMEARecord();
    }

    public int getSelector() {
        return this.selector;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.certificateUsage = tokenizer.getUInt8();
        this.selector = tokenizer.getUInt8();
        this.matchingType = tokenizer.getUInt8();
        this.certificateAssociationData = tokenizer.getHex();
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.certificateUsage = dNSInput.readU8();
        this.selector = dNSInput.readU8();
        this.matchingType = dNSInput.readU8();
        this.certificateAssociationData = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.certificateUsage);
        stringBuffer.append(" ");
        stringBuffer.append(this.selector);
        stringBuffer.append(" ");
        stringBuffer.append(this.matchingType);
        stringBuffer.append(" ");
        stringBuffer.append(base16.toString(this.certificateAssociationData));
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU8(this.certificateUsage);
        dNSOutput.writeU8(this.selector);
        dNSOutput.writeU8(this.matchingType);
        dNSOutput.writeByteArray(this.certificateAssociationData);
    }

    public SMIMEARecord(Name name, int i4, long j4, int i5, int i6, int i7, byte[] bArr) {
        super(name, 53, i4, j4);
        this.certificateUsage = Record.checkU8("certificateUsage", i5);
        this.selector = Record.checkU8("selector", i6);
        this.matchingType = Record.checkU8("matchingType", i7);
        this.certificateAssociationData = Record.checkByteArrayLength("certificateAssociationData", bArr, 65535);
    }
}
