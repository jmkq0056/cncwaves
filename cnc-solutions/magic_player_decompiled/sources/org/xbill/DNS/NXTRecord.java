package org.xbill.DNS;

import java.util.BitSet;
import org.xbill.DNS.Tokenizer;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class NXTRecord extends Record {
    private static final long serialVersionUID = -8851454400765507520L;
    private BitSet bitmap;
    private Name next;

    public NXTRecord() {
    }

    public BitSet getBitmap() {
        return this.bitmap;
    }

    public Name getNext() {
        return this.next;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new NXTRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        Tokenizer.Token token;
        this.next = tokenizer.getName(name);
        this.bitmap = new BitSet();
        while (true) {
            token = tokenizer.get();
            if (!token.isString()) {
                tokenizer.unget();
                return;
            }
            int iValue = Type.value(token.value, true);
            if (iValue <= 0 || iValue > 128) {
                break;
            } else {
                this.bitmap.set(iValue);
            }
        }
        StringBuffer stringBufferA = e.a("Invalid type: ");
        stringBufferA.append(token.value);
        throw tokenizer.exception(stringBufferA.toString());
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        this.next = new Name(dNSInput);
        this.bitmap = new BitSet();
        int iRemaining = dNSInput.remaining();
        for (int i4 = 0; i4 < iRemaining; i4++) {
            int u8 = dNSInput.readU8();
            for (int i5 = 0; i5 < 8; i5++) {
                if (((1 << (7 - i5)) & u8) != 0) {
                    this.bitmap.set((i4 * 8) + i5);
                }
            }
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.next);
        int length = this.bitmap.length();
        for (short s3 = 0; s3 < length; s3 = (short) (s3 + 1)) {
            if (this.bitmap.get(s3)) {
                stringBuffer.append(" ");
                stringBuffer.append(Type.string(s3));
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.next.toWire(dNSOutput, null, z3);
        int length = this.bitmap.length();
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            i4 |= this.bitmap.get(i5) ? 1 << (7 - (i5 % 8)) : 0;
            if (i5 % 8 == 7 || i5 == length - 1) {
                dNSOutput.writeU8(i4);
                i4 = 0;
            }
        }
    }

    public NXTRecord(Name name, int i4, long j4, Name name2, BitSet bitSet) {
        super(name, 30, i4, j4);
        this.next = Record.checkName("next", name2);
        this.bitmap = bitSet;
    }
}
