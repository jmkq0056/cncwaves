package com.stripe.bbota01z;

/* JADX INFO: loaded from: classes3.dex */
public class e {
    public int a;
    public int b;
    public f c;
    public byte[] d;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(" @");
        sb.append(String.format("0x%04X", Integer.valueOf(this.b)));
        sb.append(" [");
        for (byte b : this.d) {
            sb.append(String.format("0x%02X", Byte.valueOf(b)));
            sb.append(" ");
        }
        sb.setLength(sb.length() - 1);
        sb.append("]");
        return sb.toString();
    }
}
