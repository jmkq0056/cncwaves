package org.xbill.DNS;

import java.security.PublicKey;

/* JADX INFO: loaded from: classes2.dex */
public class CDNSKEYRecord extends DNSKEYRecord {
    private static final long serialVersionUID = 1307874430666933615L;

    public CDNSKEYRecord() {
    }

    @Override // org.xbill.DNS.DNSKEYRecord, org.xbill.DNS.Record
    public Record getObject() {
        return new CDNSKEYRecord();
    }

    public CDNSKEYRecord(Name name, int i4, long j4, int i5, int i6, int i7, byte[] bArr) {
        super(name, 60, i4, j4, i5, i6, i7, bArr);
    }

    public CDNSKEYRecord(Name name, int i4, long j4, int i5, int i6, int i7, PublicKey publicKey) {
        super(name, 60, i4, j4, i5, i6, i7, DNSSEC.fromPublicKey(publicKey, i7));
    }
}
