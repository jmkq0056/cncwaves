package org.xbill.DNS;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class A6Record extends Record {
    private static final long serialVersionUID = -8815026887337346789L;
    private Name prefix;
    private int prefixBits;
    private InetAddress suffix;

    public A6Record() {
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new A6Record();
    }

    public Name getPrefix() {
        return this.prefix;
    }

    public int getPrefixBits() {
        return this.prefixBits;
    }

    public InetAddress getSuffix() {
        return this.suffix;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        int uInt8 = tokenizer.getUInt8();
        this.prefixBits = uInt8;
        if (uInt8 > 128) {
            throw tokenizer.exception("prefix bits must be [0..128]");
        }
        if (uInt8 < 128) {
            String string = tokenizer.getString();
            try {
                this.suffix = Address.getByAddress(string, 2);
            } catch (UnknownHostException unused) {
                throw a.a("invalid IPv6 address: ", string, tokenizer);
            }
        }
        if (this.prefixBits > 0) {
            this.prefix = tokenizer.getName(name);
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        int u8 = dNSInput.readU8();
        this.prefixBits = u8;
        int i4 = ((128 - u8) + 7) / 8;
        if (u8 < 128) {
            byte[] bArr = new byte[16];
            dNSInput.readByteArray(bArr, 16 - i4, i4);
            this.suffix = InetAddress.getByAddress(bArr);
        }
        if (this.prefixBits > 0) {
            this.prefix = new Name(dNSInput);
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.prefixBits);
        if (this.suffix != null) {
            stringBuffer.append(" ");
            stringBuffer.append(this.suffix.getHostAddress());
        }
        if (this.prefix != null) {
            stringBuffer.append(" ");
            stringBuffer.append(this.prefix);
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU8(this.prefixBits);
        InetAddress inetAddress = this.suffix;
        if (inetAddress != null) {
            int i4 = ((128 - this.prefixBits) + 7) / 8;
            dNSOutput.writeByteArray(inetAddress.getAddress(), 16 - i4, i4);
        }
        Name name = this.prefix;
        if (name != null) {
            name.toWire(dNSOutput, null, z3);
        }
    }

    public A6Record(Name name, int i4, long j4, int i5, InetAddress inetAddress, Name name2) {
        super(name, 38, i4, j4);
        this.prefixBits = Record.checkU8("prefixBits", i5);
        if (inetAddress != null && Address.familyOf(inetAddress) != 2) {
            throw new IllegalArgumentException("invalid IPv6 address");
        }
        this.suffix = inetAddress;
        if (name2 != null) {
            this.prefix = Record.checkName("prefix", name2);
        }
    }
}
