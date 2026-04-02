package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class CDSRecord extends DSRecord {
    private static final long serialVersionUID = -3156174257356976006L;

    public CDSRecord() {
    }

    @Override // org.xbill.DNS.DSRecord, org.xbill.DNS.Record
    public Record getObject() {
        return new CDSRecord();
    }

    public CDSRecord(Name name, int i4, long j4, int i5, int i6, int i7, byte[] bArr) {
        super(name, 59, i4, j4, i5, i6, i7, bArr);
    }

    public CDSRecord(Name name, int i4, long j4, int i5, DNSKEYRecord dNSKEYRecord) {
        super(name, 59, i4, j4, dNSKEYRecord.getFootprint(), dNSKEYRecord.getAlgorithm(), i5, DNSSEC.generateDSDigest(dNSKEYRecord, i5));
    }
}
