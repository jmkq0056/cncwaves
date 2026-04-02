package org.xbill.DNS;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Arrays;
import org.xbill.DNS.Tokenizer;
import org.xbill.DNS.utils.base16;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Record implements Cloneable, Comparable, Serializable {
    private static final DecimalFormat byteFormat;
    private static final long serialVersionUID = 2694906050116005466L;
    public int dclass;
    public Name name;
    public long ttl;
    public int type;

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        byteFormat = decimalFormat;
        decimalFormat.setMinimumIntegerDigits(3);
    }

    public Record() {
    }

    public static byte[] byteArrayFromString(String str) throws TextParseException {
        boolean z3;
        byte[] bytes = str.getBytes();
        int i4 = 0;
        while (true) {
            if (i4 >= bytes.length) {
                z3 = false;
                break;
            }
            if (bytes[i4] == 92) {
                z3 = true;
                break;
            }
            i4++;
        }
        if (!z3) {
            if (bytes.length <= 255) {
                return bytes;
            }
            throw new TextParseException("text string too long");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i5 = 0;
        boolean z4 = false;
        int i6 = 0;
        for (int i7 = 0; i7 < bytes.length; i7++) {
            byte b4 = bytes[i7];
            if (z4) {
                if (b4 >= 48 && b4 <= 57 && i5 < 3) {
                    i5++;
                    i6 = (i6 * 10) + (b4 - 48);
                    if (i6 > 255) {
                        throw new TextParseException("bad escape");
                    }
                    if (i5 >= 3) {
                        b4 = (byte) i6;
                    }
                } else if (i5 > 0 && i5 < 3) {
                    throw new TextParseException("bad escape");
                }
                byteArrayOutputStream.write(b4);
                z4 = false;
            } else if (bytes[i7] == 92) {
                i5 = 0;
                z4 = true;
                i6 = 0;
            } else {
                byteArrayOutputStream.write(bytes[i7]);
            }
        }
        if (i5 > 0 && i5 < 3) {
            throw new TextParseException("bad escape");
        }
        if (byteArrayOutputStream.toByteArray().length <= 255) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new TextParseException("text string too long");
    }

    public static String byteArrayToString(byte[] bArr, boolean z3) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z3) {
            stringBuffer.append('\"');
        }
        for (byte b4 : bArr) {
            int i4 = b4 & 255;
            if (i4 < 32 || i4 >= 127) {
                stringBuffer.append('\\');
                stringBuffer.append(byteFormat.format(i4));
            } else if (i4 == 34 || i4 == 92) {
                stringBuffer.append('\\');
                stringBuffer.append((char) i4);
            } else {
                stringBuffer.append((char) i4);
            }
        }
        if (z3) {
            stringBuffer.append('\"');
        }
        return stringBuffer.toString();
    }

    public static byte[] checkByteArrayLength(String str, byte[] bArr, int i4) {
        if (bArr.length <= 65535) {
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\"");
        stringBuffer.append(str);
        stringBuffer.append("\" array must have no more than ");
        stringBuffer.append(i4);
        stringBuffer.append(" elements");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static Name checkName(String str, Name name) {
        if (name.isAbsolute()) {
            return name;
        }
        throw new RelativeNameException(name);
    }

    public static int checkU16(String str, int i4) {
        if (i4 >= 0 && i4 <= 65535) {
            return i4;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\"");
        stringBuffer.append(str);
        stringBuffer.append("\" ");
        stringBuffer.append(i4);
        stringBuffer.append(" must be an unsigned 16 bit value");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static long checkU32(String str, long j4) {
        if (j4 >= 0 && j4 <= 4294967295L) {
            return j4;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\"");
        stringBuffer.append(str);
        stringBuffer.append("\" ");
        stringBuffer.append(j4);
        stringBuffer.append(" must be an unsigned 32 bit value");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static int checkU8(String str, int i4) {
        if (i4 >= 0 && i4 <= 255) {
            return i4;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\"");
        stringBuffer.append(str);
        stringBuffer.append("\" ");
        stringBuffer.append(i4);
        stringBuffer.append(" must be an unsigned 8 bit value");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static Record fromString(Name name, int i4, int i5, long j4, Tokenizer tokenizer, Name name2) throws TextParseException {
        if (!name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        Type.check(i4);
        DClass.check(i5);
        TTL.check(j4);
        Tokenizer.Token token = tokenizer.get();
        if (token.type == 3 && token.value.equals("\\#")) {
            int uInt16 = tokenizer.getUInt16();
            byte[] hex = tokenizer.getHex();
            if (hex == null) {
                hex = new byte[0];
            }
            if (uInt16 == hex.length) {
                return newRecord(name, i4, i5, j4, uInt16, new DNSInput(hex));
            }
            throw tokenizer.exception("invalid unknown RR encoding: length mismatch");
        }
        tokenizer.unget();
        Record emptyRecord = getEmptyRecord(name, i4, i5, j4, true);
        emptyRecord.rdataFromString(tokenizer, name2);
        int i6 = tokenizer.get().type;
        if (i6 == 1 || i6 == 0) {
            return emptyRecord;
        }
        throw tokenizer.exception("unexpected tokens at end of record");
    }

    public static Record fromWire(DNSInput dNSInput, int i4, boolean z3) throws WireParseException {
        Name name = new Name(dNSInput);
        int u16 = dNSInput.readU16();
        int u162 = dNSInput.readU16();
        if (i4 == 0) {
            return newRecord(name, u16, u162);
        }
        long u32 = dNSInput.readU32();
        int u163 = dNSInput.readU16();
        return (u163 == 0 && z3 && (i4 == 1 || i4 == 2)) ? newRecord(name, u16, u162, u32) : newRecord(name, u16, u162, u32, u163, dNSInput);
    }

    private static final Record getEmptyRecord(Name name, int i4, int i5, long j4, boolean z3) {
        Record emptyRecord;
        if (z3) {
            Record proto = Type.getProto(i4);
            emptyRecord = proto != null ? proto.getObject() : new UNKRecord();
        } else {
            emptyRecord = new EmptyRecord();
        }
        emptyRecord.name = name;
        emptyRecord.type = i4;
        emptyRecord.dclass = i5;
        emptyRecord.ttl = j4;
        return emptyRecord;
    }

    private static Record newRecord(Name name, int i4, int i5, long j4, int i6, DNSInput dNSInput) throws WireParseException {
        Record emptyRecord = getEmptyRecord(name, i4, i5, j4, dNSInput != null);
        if (dNSInput != null) {
            if (dNSInput.remaining() < i6) {
                throw new WireParseException("truncated record");
            }
            dNSInput.setActive(i6);
            emptyRecord.rrFromWire(dNSInput);
            if (dNSInput.remaining() > 0) {
                throw new WireParseException("invalid record length");
            }
            dNSInput.clearActive();
        }
        return emptyRecord;
    }

    private void toWireCanonical(DNSOutput dNSOutput, boolean z3) {
        this.name.toWireCanonical(dNSOutput);
        dNSOutput.writeU16(this.type);
        dNSOutput.writeU16(this.dclass);
        if (z3) {
            dNSOutput.writeU32(0L);
        } else {
            dNSOutput.writeU32(this.ttl);
        }
        int iCurrent = dNSOutput.current();
        dNSOutput.writeU16(0);
        rrToWire(dNSOutput, null, true);
        dNSOutput.writeU16At((dNSOutput.current() - iCurrent) - 2, iCurrent);
    }

    public static String unknownToString(byte[] bArr) {
        StringBuffer stringBufferA = e.a("\\# ");
        stringBufferA.append(bArr.length);
        stringBufferA.append(" ");
        stringBufferA.append(base16.toString(bArr));
        return stringBufferA.toString();
    }

    public Record cloneRecord() {
        try {
            return (Record) clone();
        } catch (CloneNotSupportedException unused) {
            throw new IllegalStateException();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Record record = (Record) obj;
        if (this == record) {
            return 0;
        }
        int iCompareTo = this.name.compareTo(record.name);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int i4 = this.dclass - record.dclass;
        if (i4 != 0) {
            return i4;
        }
        int i5 = this.type - record.type;
        if (i5 != 0) {
            return i5;
        }
        byte[] bArrRdataToWireCanonical = rdataToWireCanonical();
        byte[] bArrRdataToWireCanonical2 = record.rdataToWireCanonical();
        for (int i6 = 0; i6 < bArrRdataToWireCanonical.length && i6 < bArrRdataToWireCanonical2.length; i6++) {
            int i7 = (bArrRdataToWireCanonical[i6] & 255) - (bArrRdataToWireCanonical2[i6] & 255);
            if (i7 != 0) {
                return i7;
            }
        }
        return bArrRdataToWireCanonical.length - bArrRdataToWireCanonical2.length;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Record)) {
            Record record = (Record) obj;
            if (this.type == record.type && this.dclass == record.dclass && this.name.equals(record.name)) {
                return Arrays.equals(rdataToWireCanonical(), record.rdataToWireCanonical());
            }
        }
        return false;
    }

    public Name getAdditionalName() {
        return null;
    }

    public int getDClass() {
        return this.dclass;
    }

    public Name getName() {
        return this.name;
    }

    public abstract Record getObject();

    public int getRRsetType() {
        return this.type;
    }

    public long getTTL() {
        return this.ttl;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        int i4 = 0;
        for (byte b4 : toWireCanonical(true)) {
            i4 += (i4 << 3) + (b4 & 255);
        }
        return i4;
    }

    public abstract void rdataFromString(Tokenizer tokenizer, Name name);

    public String rdataToString() {
        return rrToString();
    }

    public byte[] rdataToWireCanonical() {
        DNSOutput dNSOutput = new DNSOutput();
        rrToWire(dNSOutput, null, true);
        return dNSOutput.toByteArray();
    }

    public abstract void rrFromWire(DNSInput dNSInput);

    public abstract String rrToString();

    public abstract void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3);

    public boolean sameRRset(Record record) {
        return getRRsetType() == record.getRRsetType() && this.dclass == record.dclass && this.name.equals(record.name);
    }

    public void setTTL(long j4) {
        this.ttl = j4;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.name);
        if (stringBuffer.length() < 8) {
            stringBuffer.append("\t");
        }
        if (stringBuffer.length() < 16) {
            stringBuffer.append("\t");
        }
        stringBuffer.append("\t");
        if (Options.check("BINDTTL")) {
            stringBuffer.append(TTL.format(this.ttl));
        } else {
            stringBuffer.append(this.ttl);
        }
        stringBuffer.append("\t");
        if (this.dclass != 1 || !Options.check("noPrintIN")) {
            stringBuffer.append(DClass.string(this.dclass));
            stringBuffer.append("\t");
        }
        stringBuffer.append(Type.string(this.type));
        String strRrToString = rrToString();
        if (!strRrToString.equals("")) {
            stringBuffer.append("\t");
            stringBuffer.append(strRrToString);
        }
        return stringBuffer.toString();
    }

    public void toWire(DNSOutput dNSOutput, int i4, Compression compression) {
        this.name.toWire(dNSOutput, compression);
        dNSOutput.writeU16(this.type);
        dNSOutput.writeU16(this.dclass);
        if (i4 == 0) {
            return;
        }
        dNSOutput.writeU32(this.ttl);
        int iCurrent = dNSOutput.current();
        dNSOutput.writeU16(0);
        rrToWire(dNSOutput, compression, false);
        dNSOutput.writeU16At((dNSOutput.current() - iCurrent) - 2, iCurrent);
    }

    public Record withDClass(int i4, long j4) {
        Record recordCloneRecord = cloneRecord();
        recordCloneRecord.dclass = i4;
        recordCloneRecord.ttl = j4;
        return recordCloneRecord;
    }

    public Record withName(Name name) {
        if (!name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        Record recordCloneRecord = cloneRecord();
        recordCloneRecord.name = name;
        return recordCloneRecord;
    }

    public Record(Name name, int i4, int i5, long j4) {
        if (!name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        Type.check(i4);
        DClass.check(i5);
        TTL.check(j4);
        this.name = name;
        this.type = i4;
        this.dclass = i5;
        this.ttl = j4;
    }

    public static Record fromWire(DNSInput dNSInput, int i4) {
        return fromWire(dNSInput, i4, false);
    }

    public static Record newRecord(Name name, int i4, int i5, long j4, int i6, byte[] bArr) {
        if (name.isAbsolute()) {
            Type.check(i4);
            DClass.check(i5);
            TTL.check(j4);
            try {
                return newRecord(name, i4, i5, j4, i6, bArr != null ? new DNSInput(bArr) : null);
            } catch (IOException unused) {
                return null;
            }
        }
        throw new RelativeNameException(name);
    }

    public static Record fromWire(byte[] bArr, int i4) {
        return fromWire(new DNSInput(bArr), i4, false);
    }

    public byte[] toWire(int i4) {
        DNSOutput dNSOutput = new DNSOutput();
        toWire(dNSOutput, i4, null);
        return dNSOutput.toByteArray();
    }

    private byte[] toWireCanonical(boolean z3) {
        DNSOutput dNSOutput = new DNSOutput();
        toWireCanonical(dNSOutput, z3);
        return dNSOutput.toByteArray();
    }

    public byte[] toWireCanonical() {
        return toWireCanonical(false);
    }

    public static Record newRecord(Name name, int i4, int i5, long j4, byte[] bArr) {
        return newRecord(name, i4, i5, j4, bArr.length, bArr);
    }

    public static Record newRecord(Name name, int i4, int i5, long j4) {
        if (name.isAbsolute()) {
            Type.check(i4);
            DClass.check(i5);
            TTL.check(j4);
            return getEmptyRecord(name, i4, i5, j4, false);
        }
        throw new RelativeNameException(name);
    }

    public static Record fromString(Name name, int i4, int i5, long j4, String str, Name name2) {
        return fromString(name, i4, i5, j4, new Tokenizer(str), name2);
    }

    public static Record newRecord(Name name, int i4, int i5) {
        return newRecord(name, i4, i5, 0L);
    }
}
