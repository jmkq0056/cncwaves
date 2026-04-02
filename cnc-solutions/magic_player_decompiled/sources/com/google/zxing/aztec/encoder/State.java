package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
final class State {
    public static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final Token token;

    private State(Token token, int i4, int i5, int i6) {
        this.token = token;
        this.mode = i4;
        this.binaryShiftByteCount = i5;
        this.bitCount = i6;
    }

    private static int calculateBinaryShiftCost(State state) {
        int i4 = state.binaryShiftByteCount;
        if (i4 > 62) {
            return 21;
        }
        if (i4 > 31) {
            return 20;
        }
        return i4 > 0 ? 10 : 0;
    }

    public State addBinaryShiftChar(int i4) {
        Token tokenAdd = this.token;
        int i5 = this.mode;
        int i6 = this.bitCount;
        if (i5 == 4 || i5 == 2) {
            int i7 = HighLevelEncoder.LATCH_TABLE[i5][0];
            int i8 = 65535 & i7;
            int i9 = i7 >> 16;
            tokenAdd = tokenAdd.add(i8, i9);
            i6 += i9;
            i5 = 0;
        }
        int i10 = this.binaryShiftByteCount;
        State state = new State(tokenAdd, i5, i10 + 1, i6 + ((i10 == 0 || i10 == 31) ? 18 : i10 == 62 ? 9 : 8));
        return state.binaryShiftByteCount == 2078 ? state.endBinaryShift(i4 + 1) : state;
    }

    public State endBinaryShift(int i4) {
        int i5 = this.binaryShiftByteCount;
        return i5 == 0 ? this : new State(this.token.addBinaryShift(i4 - i5, i5), this.mode, 0, this.bitCount);
    }

    public int getBinaryShiftByteCount() {
        return this.binaryShiftByteCount;
    }

    public int getBitCount() {
        return this.bitCount;
    }

    public int getMode() {
        return this.mode;
    }

    public Token getToken() {
        return this.token;
    }

    public boolean isBetterThanOrEqualTo(State state) {
        int iCalculateBinaryShiftCost = this.bitCount + (HighLevelEncoder.LATCH_TABLE[this.mode][state.mode] >> 16);
        int i4 = this.binaryShiftByteCount;
        int i5 = state.binaryShiftByteCount;
        if (i4 < i5) {
            iCalculateBinaryShiftCost += calculateBinaryShiftCost(state) - calculateBinaryShiftCost(this);
        } else if (i4 > i5 && i5 > 0) {
            iCalculateBinaryShiftCost += 10;
        }
        return iCalculateBinaryShiftCost <= state.bitCount;
    }

    public State latchAndAppend(int i4, int i5) {
        int i6 = this.bitCount;
        Token tokenAdd = this.token;
        int i7 = this.mode;
        if (i4 != i7) {
            int i8 = HighLevelEncoder.LATCH_TABLE[i7][i4];
            int i9 = 65535 & i8;
            int i10 = i8 >> 16;
            tokenAdd = tokenAdd.add(i9, i10);
            i6 += i10;
        }
        int i11 = i4 == 2 ? 4 : 5;
        return new State(tokenAdd.add(i5, i11), i4, 0, i6 + i11);
    }

    public State shiftAndAppend(int i4, int i5) {
        Token token = this.token;
        int i6 = this.mode;
        int i7 = i6 == 2 ? 4 : 5;
        return new State(token.add(HighLevelEncoder.SHIFT_TABLE[i6][i4], i7).add(i5, 5), this.mode, 0, this.bitCount + i7 + 5);
    }

    public BitArray toBitArray(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (Token previous = endBinaryShift(bArr.length).token; previous != null; previous = previous.getPrevious()) {
            linkedList.addFirst(previous);
        }
        BitArray bitArray = new BitArray();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Token) it.next()).appendTo(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
