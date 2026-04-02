package org.xbill.DNS;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.Tokenizer;
import org.xbill.DNS.utils.base16;

/* JADX INFO: loaded from: classes2.dex */
public class APLRecord extends Record {
    private static final long serialVersionUID = -1348173791712935864L;
    private List elements;

    public static class Element {
        public final Object address;
        public final int family;
        public final boolean negative;
        public final int prefixLength;

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Element)) {
                return false;
            }
            Element element = (Element) obj;
            return this.family == element.family && this.negative == element.negative && this.prefixLength == element.prefixLength && this.address.equals(element.address);
        }

        public int hashCode() {
            return this.address.hashCode() + this.prefixLength + (this.negative ? 1 : 0);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.negative) {
                stringBuffer.append("!");
            }
            stringBuffer.append(this.family);
            stringBuffer.append(":");
            int i4 = this.family;
            if (i4 == 1 || i4 == 2) {
                stringBuffer.append(((InetAddress) this.address).getHostAddress());
            } else {
                stringBuffer.append(base16.toString((byte[]) this.address));
            }
            stringBuffer.append("/");
            stringBuffer.append(this.prefixLength);
            return stringBuffer.toString();
        }

        private Element(int i4, boolean z3, Object obj, int i5) {
            this.family = i4;
            this.negative = z3;
            this.address = obj;
            this.prefixLength = i5;
            if (!APLRecord.validatePrefixLength(i4, i5)) {
                throw new IllegalArgumentException("invalid prefix length");
            }
        }

        public Element(boolean z3, InetAddress inetAddress, int i4) {
            this(Address.familyOf(inetAddress), z3, inetAddress, i4);
        }
    }

    public APLRecord() {
    }

    private static int addressLength(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            if (bArr[length] != 0) {
                return length + 1;
            }
        }
        return 0;
    }

    private static byte[] parseAddress(byte[] bArr, int i4) throws WireParseException {
        if (bArr.length > i4) {
            throw new WireParseException("invalid address length");
        }
        if (bArr.length == i4) {
            return bArr;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validatePrefixLength(int i4, int i5) {
        if (i5 < 0 || i5 >= 256) {
            return false;
        }
        return (i4 != 1 || i5 <= 32) && (i4 != 2 || i5 <= 128);
    }

    public List getElements() {
        return this.elements;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new APLRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException, UnknownHostException {
        this.elements = new ArrayList(1);
        while (true) {
            Tokenizer.Token token = tokenizer.get();
            if (!token.isString()) {
                tokenizer.unget();
                return;
            }
            String str = token.value;
            boolean zStartsWith = str.startsWith("!");
            int iIndexOf = str.indexOf(58, zStartsWith ? 1 : 0);
            if (iIndexOf < 0) {
                throw tokenizer.exception("invalid address prefix element");
            }
            int iIndexOf2 = str.indexOf(47, iIndexOf);
            if (iIndexOf2 < 0) {
                throw tokenizer.exception("invalid address prefix element");
            }
            String strSubstring = str.substring(zStartsWith ? 1 : 0, iIndexOf);
            String strSubstring2 = str.substring(iIndexOf + 1, iIndexOf2);
            String strSubstring3 = str.substring(iIndexOf2 + 1);
            try {
                int i4 = Integer.parseInt(strSubstring);
                if (i4 != 1 && i4 != 2) {
                    throw tokenizer.exception("unknown family");
                }
                try {
                    int i5 = Integer.parseInt(strSubstring3);
                    if (!validatePrefixLength(i4, i5)) {
                        throw tokenizer.exception("invalid prefix length");
                    }
                    byte[] byteArray = Address.toByteArray(strSubstring2, i4);
                    if (byteArray == null) {
                        throw a.a("invalid IP address ", strSubstring2, tokenizer);
                    }
                    this.elements.add(new Element(zStartsWith, InetAddress.getByAddress(byteArray), i5));
                } catch (NumberFormatException unused) {
                    throw tokenizer.exception("invalid prefix length");
                }
            } catch (NumberFormatException unused2) {
                throw tokenizer.exception("invalid family");
            }
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        this.elements = new ArrayList(1);
        while (dNSInput.remaining() != 0) {
            int u16 = dNSInput.readU16();
            int u8 = dNSInput.readU8();
            int u82 = dNSInput.readU8();
            boolean z3 = (u82 & 128) != 0;
            byte[] byteArray = dNSInput.readByteArray(u82 & (-129));
            if (!validatePrefixLength(u16, u8)) {
                throw new WireParseException("invalid prefix length");
            }
            this.elements.add((u16 == 1 || u16 == 2) ? new Element(z3, InetAddress.getByAddress(parseAddress(byteArray, Address.addressLength(u16))), u8) : new Element(u16, z3, byteArray, u8));
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.elements.iterator();
        while (it.hasNext()) {
            stringBuffer.append((Element) it.next());
            if (it.hasNext()) {
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        byte[] address;
        int iAddressLength;
        for (Element element : this.elements) {
            int i4 = element.family;
            if (i4 == 1 || i4 == 2) {
                address = ((InetAddress) element.address).getAddress();
                iAddressLength = addressLength(address);
            } else {
                address = (byte[]) element.address;
                iAddressLength = address.length;
            }
            int i5 = element.negative ? iAddressLength | 128 : iAddressLength;
            dNSOutput.writeU16(element.family);
            dNSOutput.writeU8(element.prefixLength);
            dNSOutput.writeU8(i5);
            dNSOutput.writeByteArray(address, 0, iAddressLength);
        }
    }

    public APLRecord(Name name, int i4, long j4, List list) {
        super(name, 42, i4, j4);
        this.elements = new ArrayList(list.size());
        for (Object obj : list) {
            if (!(obj instanceof Element)) {
                throw new IllegalArgumentException("illegal element");
            }
            Element element = (Element) obj;
            int i5 = element.family;
            if (i5 != 1 && i5 != 2) {
                throw new IllegalArgumentException("unknown family");
            }
            this.elements.add(element);
        }
    }
}
