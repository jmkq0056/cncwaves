package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes2.dex */
final class DecodedChar extends DecodedObject {
    public static final char FNC1 = '$';
    private final char value;

    public DecodedChar(int i4, char c4) {
        super(i4);
        this.value = c4;
    }

    public char getValue() {
        return this.value;
    }

    public boolean isFNC1() {
        return this.value == '$';
    }
}
