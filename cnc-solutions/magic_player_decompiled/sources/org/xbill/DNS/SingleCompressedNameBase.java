package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
abstract class SingleCompressedNameBase extends SingleNameBase {
    private static final long serialVersionUID = -236435396815460677L;

    public SingleCompressedNameBase() {
    }

    @Override // org.xbill.DNS.SingleNameBase, org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.singleName.toWire(dNSOutput, compression, z3);
    }

    public SingleCompressedNameBase(Name name, int i4, int i5, long j4, Name name2, String str) {
        super(name, i4, i5, j4, name2, str);
    }
}
