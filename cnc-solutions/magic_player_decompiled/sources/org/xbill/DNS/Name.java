package org.xbill.DNS;

import java.io.PrintStream;
import java.io.Serializable;
import java.text.DecimalFormat;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Name implements Comparable, Serializable {
    private static final int LABEL_COMPRESSION = 192;
    private static final int LABEL_MASK = 192;
    private static final int LABEL_NORMAL = 0;
    private static final int MAXLABEL = 63;
    private static final int MAXLABELS = 128;
    private static final int MAXNAME = 255;
    private static final int MAXOFFSETS = 7;
    private static final DecimalFormat byteFormat;
    public static final Name empty;
    private static final byte[] lowercase;
    public static final Name root;
    private static final long serialVersionUID = -7257019940971525644L;
    private static final Name wild;
    private int hashcode;
    private byte[] name;
    private long offsets;
    private static final byte[] emptyLabel = {0};
    private static final byte[] wildLabel = {1, 42};

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        byteFormat = decimalFormat;
        lowercase = new byte[256];
        decimalFormat.setMinimumIntegerDigits(3);
        int i4 = 0;
        while (true) {
            byte[] bArr = lowercase;
            if (i4 >= bArr.length) {
                Name name = new Name();
                root = name;
                name.appendSafe(emptyLabel, 0, 1);
                Name name2 = new Name();
                empty = name2;
                name2.name = new byte[0];
                Name name3 = new Name();
                wild = name3;
                name3.appendSafe(wildLabel, 0, 1);
                return;
            }
            if (i4 < 65 || i4 > 90) {
                bArr[i4] = (byte) i4;
            } else {
                bArr[i4] = (byte) ((i4 - 65) + 97);
            }
            i4++;
        }
    }

    private Name() {
    }

    private final void append(byte[] bArr, int i4, int i5) throws NameTooLongException {
        byte[] bArr2 = this.name;
        int length = bArr2 == null ? 0 : bArr2.length - offset(0);
        int i6 = i4;
        int i7 = 0;
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = bArr[i6];
            if (i9 > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i10 = i9 + 1;
            i6 += i10;
            i7 += i10;
        }
        int i11 = length + i7;
        if (i11 > 255) {
            throw new NameTooLongException();
        }
        int i12 = getlabels();
        int i13 = i12 + i5;
        if (i13 > 128) {
            throw new IllegalStateException("too many labels");
        }
        byte[] bArr3 = new byte[i11];
        if (length != 0) {
            System.arraycopy(this.name, offset(0), bArr3, 0, length);
        }
        System.arraycopy(bArr, i4, bArr3, length, i7);
        this.name = bArr3;
        for (int i14 = 0; i14 < i5; i14++) {
            setoffset(i12 + i14, length);
            length += bArr3[length] + 1;
        }
        setlabels(i13);
    }

    private final void appendFromString(String str, byte[] bArr, int i4, int i5) throws TextParseException {
        try {
            append(bArr, i4, i5);
        } catch (NameTooLongException unused) {
            throw parseException(str, "Name too long");
        }
    }

    private final void appendSafe(byte[] bArr, int i4, int i5) {
        try {
            append(bArr, i4, i5);
        } catch (NameTooLongException unused) {
        }
    }

    private String byteString(byte[] bArr, int i4) {
        StringBuffer stringBuffer = new StringBuffer();
        int i5 = i4 + 1;
        int i6 = bArr[i4];
        for (int i7 = i5; i7 < i5 + i6; i7++) {
            int i8 = bArr[i7] & 255;
            if (i8 <= 32 || i8 >= 127) {
                stringBuffer.append('\\');
                stringBuffer.append(byteFormat.format(i8));
            } else if (i8 == 34 || i8 == 40 || i8 == 41 || i8 == 46 || i8 == 59 || i8 == 92 || i8 == 64 || i8 == 36) {
                stringBuffer.append('\\');
                stringBuffer.append((char) i8);
            } else {
                stringBuffer.append((char) i8);
            }
        }
        return stringBuffer.toString();
    }

    public static Name concatenate(Name name, Name name2) {
        if (name.isAbsolute()) {
            return name;
        }
        Name name3 = new Name();
        copy(name, name3);
        name3.append(name2.name, name2.offset(0), name2.getlabels());
        return name3;
    }

    private static final void copy(Name name, Name name2) {
        if (name.offset(0) == 0) {
            name2.name = name.name;
            name2.offsets = name.offsets;
            return;
        }
        int iOffset = name.offset(0);
        int length = name.name.length - iOffset;
        int iLabels = name.labels();
        byte[] bArr = new byte[length];
        name2.name = bArr;
        System.arraycopy(name.name, iOffset, bArr, 0, length);
        for (int i4 = 0; i4 < iLabels && i4 < 7; i4++) {
            name2.setoffset(i4, name.offset(i4) - iOffset);
        }
        name2.setlabels(iLabels);
    }

    private final boolean equals(byte[] bArr, int i4) {
        int iLabels = labels();
        int iOffset = offset(0);
        int i5 = 0;
        while (i5 < iLabels) {
            byte[] bArr2 = this.name;
            if (bArr2[iOffset] != bArr[i4]) {
                return false;
            }
            int i6 = iOffset + 1;
            byte b4 = bArr2[iOffset];
            i4++;
            if (b4 > 63) {
                throw new IllegalStateException("invalid label");
            }
            int i7 = 0;
            while (i7 < b4) {
                byte[] bArr3 = lowercase;
                int i8 = i6 + 1;
                int i9 = i4 + 1;
                if (bArr3[this.name[i6] & 255] != bArr3[bArr[i4] & 255]) {
                    return false;
                }
                i7++;
                i4 = i9;
                i6 = i8;
            }
            i5++;
            iOffset = i6;
        }
        return true;
    }

    public static Name fromConstantString(String str) {
        try {
            return fromString(str, null);
        } catch (TextParseException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid name '");
            stringBuffer.append(str);
            stringBuffer.append("'");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public static Name fromString(String str, Name name) {
        return (!str.equals("@") || name == null) ? str.equals(".") ? root : new Name(str, name) : name;
    }

    private final int getlabels() {
        return (int) (this.offsets & 255);
    }

    private final int offset(int i4) {
        if (i4 == 0 && getlabels() == 0) {
            return 0;
        }
        if (i4 < 0 || i4 >= getlabels()) {
            throw new IllegalArgumentException("label out of range");
        }
        if (i4 < 7) {
            return ((int) (this.offsets >>> ((7 - i4) * 8))) & 255;
        }
        int iOffset = offset(6);
        for (int i5 = 6; i5 < i4; i5++) {
            iOffset += this.name[iOffset] + 1;
        }
        return iOffset;
    }

    private static TextParseException parseException(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("'");
        stringBuffer.append(str);
        stringBuffer.append("': ");
        stringBuffer.append(str2);
        return new TextParseException(stringBuffer.toString());
    }

    private final void setlabels(int i4) {
        long j4 = this.offsets & (-256);
        this.offsets = j4;
        this.offsets = j4 | ((long) i4);
    }

    private final void setoffset(int i4, int i5) {
        if (i4 >= 7) {
            return;
        }
        int i6 = (7 - i4) * 8;
        long j4 = this.offsets & ((255 << i6) ^ (-1));
        this.offsets = j4;
        this.offsets = (((long) i5) << i6) | j4;
    }

    public Name canonicalize() {
        boolean z3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            byte[] bArr = this.name;
            if (i5 >= bArr.length) {
                z3 = true;
                break;
            }
            if (lowercase[bArr[i5] & 255] != bArr[i5]) {
                z3 = false;
                break;
            }
            i5++;
        }
        if (z3) {
            return this;
        }
        Name name = new Name();
        name.appendSafe(this.name, offset(0), getlabels());
        while (true) {
            byte[] bArr2 = name.name;
            if (i4 >= bArr2.length) {
                return name;
            }
            bArr2[i4] = lowercase[bArr2[i4] & 255];
            i4++;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Name name = (Name) obj;
        if (this == name) {
            return 0;
        }
        int iLabels = labels();
        int iLabels2 = name.labels();
        int i4 = iLabels > iLabels2 ? iLabels2 : iLabels;
        for (int i5 = 1; i5 <= i4; i5++) {
            int iOffset = offset(iLabels - i5);
            int iOffset2 = name.offset(iLabels2 - i5);
            byte b4 = this.name[iOffset];
            byte b5 = name.name[iOffset2];
            for (int i6 = 0; i6 < b4 && i6 < b5; i6++) {
                byte[] bArr = lowercase;
                int i7 = bArr[this.name[(i6 + iOffset) + 1] & 255] - bArr[name.name[(i6 + iOffset2) + 1] & 255];
                if (i7 != 0) {
                    return i7;
                }
            }
            if (b4 != b5) {
                return b4 - b5;
            }
        }
        return iLabels - iLabels2;
    }

    public Name fromDNAME(DNAMERecord dNAMERecord) throws NameTooLongException {
        Name name = dNAMERecord.getName();
        Name target = dNAMERecord.getTarget();
        if (!subdomain(name)) {
            return null;
        }
        int iLabels = labels() - name.labels();
        int length = length() - name.length();
        int iOffset = offset(0);
        int iLabels2 = target.labels();
        short length2 = target.length();
        int i4 = length + length2;
        if (i4 > 255) {
            throw new NameTooLongException();
        }
        Name name2 = new Name();
        int i5 = iLabels + iLabels2;
        name2.setlabels(i5);
        byte[] bArr = new byte[i4];
        name2.name = bArr;
        System.arraycopy(this.name, iOffset, bArr, 0, length);
        System.arraycopy(target.name, 0, name2.name, length, length2);
        int i6 = 0;
        for (int i7 = 0; i7 < 7 && i7 < i5; i7++) {
            name2.setoffset(i7, i6);
            i6 += name2.name[i6] + 1;
        }
        return name2;
    }

    public byte[] getLabel(int i4) {
        int iOffset = offset(i4);
        byte[] bArr = this.name;
        int i5 = (byte) (bArr[iOffset] + 1);
        byte[] bArr2 = new byte[i5];
        System.arraycopy(bArr, iOffset, bArr2, 0, i5);
        return bArr2;
    }

    public String getLabelString(int i4) {
        return byteString(this.name, offset(i4));
    }

    public int hashCode() {
        int i4 = this.hashcode;
        if (i4 != 0) {
            return i4;
        }
        int i5 = 0;
        int iOffset = offset(0);
        while (true) {
            byte[] bArr = this.name;
            if (iOffset >= bArr.length) {
                this.hashcode = i5;
                return i5;
            }
            i5 += (i5 << 3) + lowercase[bArr[iOffset] & 255];
            iOffset++;
        }
    }

    public boolean isAbsolute() {
        int iLabels = labels();
        return iLabels != 0 && this.name[offset(iLabels - 1)] == 0;
    }

    public boolean isWild() {
        if (labels() == 0) {
            return false;
        }
        byte[] bArr = this.name;
        return bArr[0] == 1 && bArr[1] == 42;
    }

    public int labels() {
        return getlabels();
    }

    public short length() {
        if (getlabels() == 0) {
            return (short) 0;
        }
        return (short) (this.name.length - offset(0));
    }

    public Name relativize(Name name) {
        if (name == null || !subdomain(name)) {
            return this;
        }
        Name name2 = new Name();
        copy(this, name2);
        int length = length() - name.length();
        name2.setlabels(name2.labels() - name.labels());
        name2.name = new byte[length];
        System.arraycopy(this.name, offset(0), name2.name, 0, length);
        return name2;
    }

    public boolean subdomain(Name name) {
        int iLabels = labels();
        int iLabels2 = name.labels();
        if (iLabels2 > iLabels) {
            return false;
        }
        return iLabels2 == iLabels ? equals(name) : name.equals(this.name, offset(iLabels - iLabels2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        return r2.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString(boolean r7) {
        /*
            r6 = this;
            int r0 = r6.labels()
            if (r0 != 0) goto L9
            java.lang.String r7 = "@"
            return r7
        L9:
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L1a
            byte[] r2 = r6.name
            int r3 = r6.offset(r1)
            r2 = r2[r3]
            if (r2 != 0) goto L1a
            java.lang.String r7 = "."
            return r7
        L1a:
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            int r3 = r6.offset(r1)
        L23:
            if (r1 >= r0) goto L53
            byte[] r4 = r6.name
            r4 = r4[r3]
            r5 = 63
            if (r4 > r5) goto L4b
            r5 = 46
            if (r4 != 0) goto L37
            if (r7 != 0) goto L53
            r2.append(r5)
            goto L53
        L37:
            if (r1 <= 0) goto L3c
            r2.append(r5)
        L3c:
            byte[] r5 = r6.name
            java.lang.String r5 = r6.byteString(r5, r3)
            r2.append(r5)
            int r4 = r4 + 1
            int r3 = r3 + r4
            int r1 = r1 + 1
            goto L23
        L4b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "invalid label"
            r7.<init>(r0)
            throw r7
        L53:
            java.lang.String r7 = r2.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.Name.toString(boolean):java.lang.String");
    }

    public void toWire(DNSOutput dNSOutput, Compression compression) {
        if (!isAbsolute()) {
            throw new IllegalArgumentException("toWire() called on non-absolute name");
        }
        int iLabels = labels();
        int i4 = 0;
        while (i4 < iLabels - 1) {
            Name name = i4 == 0 ? this : new Name(this, i4);
            int i5 = compression != null ? compression.get(name) : -1;
            if (i5 >= 0) {
                dNSOutput.writeU16(49152 | i5);
                return;
            }
            if (compression != null) {
                compression.add(dNSOutput.current(), name);
            }
            int iOffset = offset(i4);
            byte[] bArr = this.name;
            dNSOutput.writeByteArray(bArr, iOffset, bArr[iOffset] + 1);
            i4++;
        }
        dNSOutput.writeU8(0);
    }

    public void toWireCanonical(DNSOutput dNSOutput) {
        dNSOutput.writeByteArray(toWireCanonical());
    }

    public Name wild(int i4) {
        if (i4 < 1) {
            throw new IllegalArgumentException("must replace 1 or more labels");
        }
        try {
            Name name = new Name();
            copy(wild, name);
            name.append(this.name, offset(i4), getlabels() - i4);
            return name;
        } catch (NameTooLongException unused) {
            throw new IllegalStateException("Name.wild: concatenate failed");
        }
    }

    public Name(String str, Name name) throws TextParseException {
        int i4;
        boolean z3;
        int i5;
        if (str.equals("")) {
            throw parseException(str, "empty name");
        }
        if (str.equals("@")) {
            if (name == null) {
                copy(empty, this);
                return;
            } else {
                copy(name, this);
                return;
            }
        }
        if (str.equals(".")) {
            copy(root, this);
            return;
        }
        byte[] bArr = new byte[64];
        int i6 = 0;
        boolean z4 = false;
        int i7 = -1;
        int i8 = 1;
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            byte bCharAt = (byte) str.charAt(i10);
            if (z4) {
                if (bCharAt >= 48 && bCharAt <= 57 && i6 < 3) {
                    i6++;
                    i9 = (i9 * 10) + (bCharAt - 48);
                    if (i9 > 255) {
                        throw parseException(str, "bad escape");
                    }
                    if (i6 < 3) {
                        continue;
                    } else {
                        bCharAt = (byte) i9;
                    }
                } else if (i6 > 0 && i6 < 3) {
                    throw parseException(str, "bad escape");
                }
                if (i8 > 63) {
                    throw parseException(str, "label too long");
                }
                i5 = i8 + 1;
                bArr[i8] = bCharAt;
                i7 = i8;
                z4 = false;
                i8 = i5;
            } else if (bCharAt == 92) {
                i6 = 0;
                z4 = true;
                i9 = 0;
            } else if (bCharAt != 46) {
                i7 = i7 == -1 ? i10 : i7;
                if (i8 > 63) {
                    throw parseException(str, "label too long");
                }
                i5 = i8 + 1;
                bArr[i8] = bCharAt;
                i8 = i5;
            } else {
                if (i7 == -1) {
                    throw parseException(str, "invalid empty label");
                }
                bArr[0] = (byte) (i8 - 1);
                appendFromString(str, bArr, 0, 1);
                i7 = -1;
                i8 = 1;
            }
        }
        if (i6 > 0 && i6 < 3) {
            throw parseException(str, "bad escape");
        }
        if (z4) {
            throw parseException(str, "bad escape");
        }
        if (i7 == -1) {
            z3 = true;
            i4 = 0;
            appendFromString(str, emptyLabel, 0, 1);
        } else {
            i4 = 0;
            bArr[0] = (byte) (i8 - 1);
            appendFromString(str, bArr, 0, 1);
            z3 = false;
        }
        if (name == null || z3) {
            return;
        }
        appendFromString(str, name.name, name.offset(i4), name.getlabels());
    }

    public byte[] toWireCanonical() {
        int iLabels = labels();
        if (iLabels == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[this.name.length - offset(0)];
        int iOffset = offset(0);
        int i4 = 0;
        for (int i5 = 0; i5 < iLabels; i5++) {
            byte[] bArr2 = this.name;
            byte b4 = bArr2[iOffset];
            if (b4 <= 63) {
                bArr[i4] = bArr2[iOffset];
                i4++;
                iOffset++;
                int i6 = 0;
                while (i6 < b4) {
                    bArr[i4] = lowercase[this.name[iOffset] & 255];
                    i6++;
                    i4++;
                    iOffset++;
                }
            } else {
                throw new IllegalStateException("invalid label");
            }
        }
        return bArr;
    }

    public static Name fromString(String str) {
        return fromString(str, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Name)) {
            return false;
        }
        Name name = (Name) obj;
        if (name.hashcode == 0) {
            name.hashCode();
        }
        if (this.hashcode == 0) {
            hashCode();
        }
        if (name.hashcode == this.hashcode && name.labels() == labels()) {
            return equals(name.name, name.offset(0));
        }
        return false;
    }

    public String toString() {
        return toString(false);
    }

    public byte[] toWire() {
        DNSOutput dNSOutput = new DNSOutput();
        toWire(dNSOutput, null);
        return dNSOutput.toByteArray();
    }

    public void toWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        if (z3) {
            toWireCanonical(dNSOutput);
        } else {
            toWire(dNSOutput, compression);
        }
    }

    public Name(String str) {
        this(str, (Name) null);
    }

    public Name(DNSInput dNSInput) throws WireParseException {
        byte[] bArr = new byte[64];
        boolean z3 = false;
        boolean z4 = false;
        while (!z3) {
            int u8 = dNSInput.readU8();
            int i4 = u8 & 192;
            if (i4 != 0) {
                if (i4 == 192) {
                    int u82 = dNSInput.readU8() + ((u8 & (-193)) << 8);
                    if (Options.check("verbosecompression")) {
                        PrintStream printStream = System.err;
                        StringBuffer stringBufferA = e.a("currently ");
                        stringBufferA.append(dNSInput.current());
                        stringBufferA.append(", pointer to ");
                        stringBufferA.append(u82);
                        printStream.println(stringBufferA.toString());
                    }
                    if (u82 < dNSInput.current() - 2) {
                        if (!z4) {
                            dNSInput.save();
                            z4 = true;
                        }
                        dNSInput.jump(u82);
                        if (Options.check("verbosecompression")) {
                            PrintStream printStream2 = System.err;
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("current name '");
                            stringBuffer.append(this);
                            stringBuffer.append("', seeking to ");
                            stringBuffer.append(u82);
                            printStream2.println(stringBuffer.toString());
                        }
                    } else {
                        throw new WireParseException("bad compression");
                    }
                } else {
                    throw new WireParseException("bad label type");
                }
            } else {
                if (getlabels() >= 128) {
                    throw new WireParseException("too many labels");
                }
                if (u8 == 0) {
                    append(emptyLabel, 0, 1);
                    z3 = true;
                } else {
                    bArr[0] = (byte) u8;
                    dNSInput.readByteArray(bArr, 1, u8);
                    append(bArr, 0, 1);
                }
            }
        }
        if (z4) {
            dNSInput.restore();
        }
    }

    public Name(byte[] bArr) {
        this(new DNSInput(bArr));
    }

    public Name(Name name, int i4) {
        int iLabels = name.labels();
        if (i4 <= iLabels) {
            this.name = name.name;
            int i5 = iLabels - i4;
            setlabels(i5);
            for (int i6 = 0; i6 < 7 && i6 < i5; i6++) {
                setoffset(i6, name.offset(i6 + i4));
            }
            return;
        }
        throw new IllegalArgumentException("attempted to remove too many labels");
    }
}
