package org.xbill.DNS;

import java.util.Random;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Header implements Cloneable {
    public static final int LENGTH = 12;
    private static Random random = new Random();
    private int[] counts;
    private int flags;
    private int id;

    public Header(int i4) {
        init();
        setID(i4);
    }

    private static void checkFlag(int i4) {
        if (!validFlag(i4)) {
            throw new IllegalArgumentException(v2.a.a("invalid flag bit ", i4));
        }
    }

    private void init() {
        this.counts = new int[4];
        this.flags = 0;
        this.id = -1;
    }

    public static int setFlag(int i4, int i5, boolean z3) {
        checkFlag(i5);
        return z3 ? i4 | (1 << (15 - i5)) : i4 & ((1 << (15 - i5)) ^ (-1));
    }

    private static boolean validFlag(int i4) {
        return i4 >= 0 && i4 <= 15 && Flags.isFlag(i4);
    }

    public Object clone() {
        Header header = new Header();
        header.id = this.id;
        header.flags = this.flags;
        int[] iArr = this.counts;
        System.arraycopy(iArr, 0, header.counts, 0, iArr.length);
        return header;
    }

    public void decCount(int i4) {
        int[] iArr = this.counts;
        if (iArr[i4] == 0) {
            throw new IllegalStateException("DNS section count cannot be decremented");
        }
        iArr[i4] = iArr[i4] - 1;
    }

    public int getCount(int i4) {
        return this.counts[i4];
    }

    public boolean getFlag(int i4) {
        checkFlag(i4);
        return ((1 << (15 - i4)) & this.flags) != 0;
    }

    public boolean[] getFlags() {
        boolean[] zArr = new boolean[16];
        for (int i4 = 0; i4 < 16; i4++) {
            if (validFlag(i4)) {
                zArr[i4] = getFlag(i4);
            }
        }
        return zArr;
    }

    public int getFlagsByte() {
        return this.flags;
    }

    public int getID() {
        int i4;
        int i5 = this.id;
        if (i5 >= 0) {
            return i5;
        }
        synchronized (this) {
            if (this.id < 0) {
                this.id = random.nextInt(65535);
            }
            i4 = this.id;
        }
        return i4;
    }

    public int getOpcode() {
        return (this.flags >> 11) & 15;
    }

    public int getRcode() {
        return this.flags & 15;
    }

    public void incCount(int i4) {
        int[] iArr = this.counts;
        if (iArr[i4] == 65535) {
            throw new IllegalStateException("DNS section count cannot be incremented");
        }
        iArr[i4] = iArr[i4] + 1;
    }

    public String printFlags() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < 16; i4++) {
            if (validFlag(i4) && getFlag(i4)) {
                stringBuffer.append(Flags.string(i4));
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    public void setCount(int i4, int i5) {
        if (i5 >= 0 && i5 <= 65535) {
            this.counts[i4] = i5;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DNS section count ");
        stringBuffer.append(i5);
        stringBuffer.append(" is out of range");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public void setID(int i4) {
        if (i4 >= 0 && i4 <= 65535) {
            this.id = i4;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DNS message ID ");
        stringBuffer.append(i4);
        stringBuffer.append(" is out of range");
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public void setOpcode(int i4) {
        if (i4 >= 0 && i4 <= 15) {
            int i5 = this.flags & 34815;
            this.flags = i5;
            this.flags = (i4 << 11) | i5;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("DNS Opcode ");
            stringBuffer.append(i4);
            stringBuffer.append("is out of range");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public void setRcode(int i4) {
        if (i4 >= 0 && i4 <= 15) {
            int i5 = this.flags & (-16);
            this.flags = i5;
            this.flags = i4 | i5;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("DNS Rcode ");
            stringBuffer.append(i4);
            stringBuffer.append(" is out of range");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public String toString() {
        return toStringWithRcode(getRcode());
    }

    public String toStringWithRcode(int i4) {
        StringBuffer stringBufferA = e.a(";; ->>HEADER<<- ");
        StringBuffer stringBufferA2 = e.a("opcode: ");
        stringBufferA2.append(Opcode.string(getOpcode()));
        stringBufferA.append(stringBufferA2.toString());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(", status: ");
        stringBuffer.append(Rcode.string(i4));
        stringBufferA.append(stringBuffer.toString());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(", id: ");
        stringBuffer2.append(getID());
        stringBufferA.append(stringBuffer2.toString());
        stringBufferA.append("\n");
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(";; flags: ");
        stringBuffer3.append(printFlags());
        stringBufferA.append(stringBuffer3.toString());
        stringBufferA.append("; ");
        for (int i5 = 0; i5 < 4; i5++) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(Section.string(i5));
            stringBuffer4.append(": ");
            stringBuffer4.append(getCount(i5));
            stringBuffer4.append(" ");
            stringBufferA.append(stringBuffer4.toString());
        }
        return stringBufferA.toString();
    }

    public void toWire(DNSOutput dNSOutput) {
        dNSOutput.writeU16(getID());
        dNSOutput.writeU16(this.flags);
        int i4 = 0;
        while (true) {
            int[] iArr = this.counts;
            if (i4 >= iArr.length) {
                return;
            }
            dNSOutput.writeU16(iArr[i4]);
            i4++;
        }
    }

    public void unsetFlag(int i4) {
        checkFlag(i4);
        this.flags = setFlag(this.flags, i4, false);
    }

    public void setFlag(int i4) {
        checkFlag(i4);
        this.flags = setFlag(this.flags, i4, true);
    }

    public Header() {
        init();
    }

    public byte[] toWire() {
        DNSOutput dNSOutput = new DNSOutput();
        toWire(dNSOutput);
        return dNSOutput.toByteArray();
    }

    public Header(DNSInput dNSInput) {
        this(dNSInput.readU16());
        this.flags = dNSInput.readU16();
        int i4 = 0;
        while (true) {
            int[] iArr = this.counts;
            if (i4 >= iArr.length) {
                return;
            }
            iArr[i4] = dNSInput.readU16();
            i4++;
        }
    }

    public Header(byte[] bArr) {
        this(new DNSInput(bArr));
    }
}
