package org.xbill.DNS;

import java.io.Serializable;
import java.util.Iterator;
import java.util.TreeSet;
import org.xbill.DNS.Tokenizer;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
final class TypeBitmap implements Serializable {
    private static final long serialVersionUID = -125354057735389003L;
    private TreeSet types;

    private TypeBitmap() {
        this.types = new TreeSet();
    }

    private static void mapToWire(DNSOutput dNSOutput, TreeSet treeSet, int i4) {
        int iIntValue = ((((Integer) treeSet.last()).intValue() & 255) / 8) + 1;
        int[] iArr = new int[iIntValue];
        dNSOutput.writeU8(i4);
        dNSOutput.writeU8(iIntValue);
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            int iIntValue2 = ((Integer) it.next()).intValue();
            int i5 = (iIntValue2 & 255) / 8;
            iArr[i5] = (1 << (7 - (iIntValue2 % 8))) | iArr[i5];
        }
        for (int i6 = 0; i6 < iIntValue; i6++) {
            dNSOutput.writeU8(iArr[i6]);
        }
    }

    public boolean contains(int i4) {
        return this.types.contains(Mnemonic.toInteger(i4));
    }

    public boolean empty() {
        return this.types.isEmpty();
    }

    public int[] toArray() {
        int[] iArr = new int[this.types.size()];
        Iterator it = this.types.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            iArr[i4] = ((Integer) it.next()).intValue();
            i4++;
        }
        return iArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.types.iterator();
        while (it.hasNext()) {
            stringBuffer.append(Type.string(((Integer) it.next()).intValue()));
            if (it.hasNext()) {
                stringBuffer.append(' ');
            }
        }
        return stringBuffer.toString();
    }

    public void toWire(DNSOutput dNSOutput) {
        if (this.types.size() == 0) {
            return;
        }
        int i4 = -1;
        TreeSet treeSet = new TreeSet();
        Iterator it = this.types.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            int i5 = iIntValue >> 8;
            if (i5 != i4) {
                if (treeSet.size() > 0) {
                    mapToWire(dNSOutput, treeSet, i4);
                    treeSet.clear();
                }
                i4 = i5;
            }
            treeSet.add(new Integer(iIntValue));
        }
        mapToWire(dNSOutput, treeSet, i4);
    }

    public TypeBitmap(int[] iArr) {
        this();
        for (int i4 = 0; i4 < iArr.length; i4++) {
            Type.check(iArr[i4]);
            this.types.add(new Integer(iArr[i4]));
        }
    }

    public TypeBitmap(DNSInput dNSInput) throws WireParseException {
        this();
        while (dNSInput.remaining() > 0) {
            if (dNSInput.remaining() >= 2) {
                int u8 = dNSInput.readU8();
                if (u8 >= -1) {
                    int u82 = dNSInput.readU8();
                    if (u82 > dNSInput.remaining()) {
                        throw new WireParseException("invalid bitmap");
                    }
                    for (int i4 = 0; i4 < u82; i4++) {
                        int u83 = dNSInput.readU8();
                        if (u83 != 0) {
                            for (int i5 = 0; i5 < 8; i5++) {
                                if (((1 << (7 - i5)) & u83) != 0) {
                                    this.types.add(Mnemonic.toInteger((i4 * 8) + (u8 * 256) + i5));
                                }
                            }
                        }
                    }
                } else {
                    throw new WireParseException("invalid ordering");
                }
            } else {
                throw new WireParseException("invalid bitmap descriptor");
            }
        }
    }

    public TypeBitmap(Tokenizer tokenizer) throws TextParseException {
        this();
        while (true) {
            Tokenizer.Token token = tokenizer.get();
            if (!token.isString()) {
                tokenizer.unget();
                return;
            }
            int iValue = Type.value(token.value);
            if (iValue >= 0) {
                this.types.add(Mnemonic.toInteger(iValue));
            } else {
                StringBuffer stringBufferA = e.a("Invalid type: ");
                stringBufferA.append(token.value);
                throw tokenizer.exception(stringBufferA.toString());
            }
        }
    }
}
