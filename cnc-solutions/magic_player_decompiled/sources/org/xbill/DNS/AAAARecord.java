package org.xbill.DNS;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class AAAARecord extends Record {
    private static final long serialVersionUID = -4588601512069748050L;
    private byte[] address;

    public AAAARecord() {
    }

    public InetAddress getAddress() {
        try {
            Name name = this.name;
            return name == null ? InetAddress.getByAddress(this.address) : InetAddress.getByAddress(name.toString(), this.address);
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new AAAARecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.address = tokenizer.getAddressBytes(2);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.address = dNSInput.readByteArray(16);
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        try {
            InetAddress byAddress = InetAddress.getByAddress(null, this.address);
            if (byAddress.getAddress().length != 4) {
                return byAddress.getHostAddress();
            }
            StringBuffer stringBuffer = new StringBuffer("0:0:0:0:0:ffff:");
            byte[] bArr = this.address;
            int i4 = ((bArr[12] & 255) << 8) + (bArr[13] & 255);
            int i5 = ((bArr[14] & 255) << 8) + (bArr[15] & 255);
            stringBuffer.append(Integer.toHexString(i4));
            stringBuffer.append(':');
            stringBuffer.append(Integer.toHexString(i5));
            return stringBuffer.toString();
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeByteArray(this.address);
    }

    public AAAARecord(Name name, int i4, long j4, InetAddress inetAddress) {
        super(name, 28, i4, j4);
        if (Address.familyOf(inetAddress) != 2) {
            throw new IllegalArgumentException("invalid IPv6 address");
        }
        this.address = inetAddress.getAddress();
    }
}
