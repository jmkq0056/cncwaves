package org.xbill.DNS;

import java.net.Inet6Address;
import java.net.InetAddress;
import org.xbill.DNS.utils.base64;

/* JADX INFO: loaded from: classes2.dex */
public class IPSECKEYRecord extends Record {
    private static final long serialVersionUID = 3050449702765909687L;
    private int algorithmType;
    private Object gateway;
    private int gatewayType;
    private byte[] key;
    private int precedence;

    public static class Algorithm {
        public static final int DSA = 1;
        public static final int RSA = 2;

        private Algorithm() {
        }
    }

    public static class Gateway {
        public static final int IPv4 = 1;
        public static final int IPv6 = 2;
        public static final int Name = 3;
        public static final int None = 0;

        private Gateway() {
        }
    }

    public IPSECKEYRecord() {
    }

    public int getAlgorithmType() {
        return this.algorithmType;
    }

    public Object getGateway() {
        return this.gateway;
    }

    public int getGatewayType() {
        return this.gatewayType;
    }

    public byte[] getKey() {
        return this.key;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new IPSECKEYRecord();
    }

    public int getPrecedence() {
        return this.precedence;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException, WireParseException {
        this.precedence = tokenizer.getUInt8();
        this.gatewayType = tokenizer.getUInt8();
        this.algorithmType = tokenizer.getUInt8();
        int i4 = this.gatewayType;
        if (i4 != 0) {
            if (i4 == 1) {
                this.gateway = tokenizer.getAddress(1);
            } else if (i4 == 2) {
                this.gateway = tokenizer.getAddress(2);
            } else {
                if (i4 != 3) {
                    throw new WireParseException("invalid gateway type");
                }
                this.gateway = tokenizer.getName(name);
            }
        } else {
            if (!tokenizer.getString().equals(".")) {
                throw new TextParseException("invalid gateway format");
            }
            this.gateway = null;
        }
        this.key = tokenizer.getBase64(false);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        this.precedence = dNSInput.readU8();
        this.gatewayType = dNSInput.readU8();
        this.algorithmType = dNSInput.readU8();
        int i4 = this.gatewayType;
        if (i4 == 0) {
            this.gateway = null;
        } else if (i4 == 1) {
            this.gateway = InetAddress.getByAddress(dNSInput.readByteArray(4));
        } else if (i4 == 2) {
            this.gateway = InetAddress.getByAddress(dNSInput.readByteArray(16));
        } else {
            if (i4 != 3) {
                throw new WireParseException("invalid gateway type");
            }
            this.gateway = new Name(dNSInput);
        }
        if (dNSInput.remaining() > 0) {
            this.key = dNSInput.readByteArray();
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.precedence);
        stringBuffer.append(" ");
        stringBuffer.append(this.gatewayType);
        stringBuffer.append(" ");
        stringBuffer.append(this.algorithmType);
        stringBuffer.append(" ");
        int i4 = this.gatewayType;
        if (i4 == 0) {
            stringBuffer.append(".");
        } else if (i4 == 1 || i4 == 2) {
            stringBuffer.append(((InetAddress) this.gateway).getHostAddress());
        } else if (i4 == 3) {
            stringBuffer.append(this.gateway);
        }
        if (this.key != null) {
            stringBuffer.append(" ");
            stringBuffer.append(base64.toString(this.key));
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU8(this.precedence);
        dNSOutput.writeU8(this.gatewayType);
        dNSOutput.writeU8(this.algorithmType);
        int i4 = this.gatewayType;
        if (i4 == 1 || i4 == 2) {
            dNSOutput.writeByteArray(((InetAddress) this.gateway).getAddress());
        } else if (i4 == 3) {
            ((Name) this.gateway).toWire(dNSOutput, null, z3);
        }
        byte[] bArr = this.key;
        if (bArr != null) {
            dNSOutput.writeByteArray(bArr);
        }
    }

    public IPSECKEYRecord(Name name, int i4, long j4, int i5, int i6, int i7, Object obj, byte[] bArr) {
        super(name, 45, i4, j4);
        this.precedence = Record.checkU8("precedence", i5);
        this.gatewayType = Record.checkU8("gatewayType", i6);
        this.algorithmType = Record.checkU8("algorithmType", i7);
        if (i6 == 0) {
            this.gateway = null;
        } else if (i6 != 1) {
            if (i6 != 2) {
                if (i6 != 3) {
                    throw new IllegalArgumentException("\"gatewayType\" must be between 0 and 3");
                }
                if (!(obj instanceof Name)) {
                    throw new IllegalArgumentException("\"gateway\" must be a DNS name");
                }
                this.gateway = Record.checkName("gateway", (Name) obj);
            } else {
                if (!(obj instanceof Inet6Address)) {
                    throw new IllegalArgumentException("\"gateway\" must be an IPv6 address");
                }
                this.gateway = obj;
            }
        } else {
            if (!(obj instanceof InetAddress)) {
                throw new IllegalArgumentException("\"gateway\" must be an IPv4 address");
            }
            this.gateway = obj;
        }
        this.key = bArr;
    }
}
