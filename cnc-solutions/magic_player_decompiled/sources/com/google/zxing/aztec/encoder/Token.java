package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes2.dex */
abstract class Token {
    public static final Token EMPTY = new SimpleToken(null, 0, 0);
    private final Token previous;

    public Token(Token token) {
        this.previous = token;
    }

    public final Token add(int i4, int i5) {
        return new SimpleToken(this, i4, i5);
    }

    public final Token addBinaryShift(int i4, int i5) {
        return new BinaryShiftToken(this, i4, i5);
    }

    public abstract void appendTo(BitArray bitArray, byte[] bArr);

    public final Token getPrevious() {
        return this.previous;
    }
}
