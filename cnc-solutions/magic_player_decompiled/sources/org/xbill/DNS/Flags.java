package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public final class Flags {
    public static final byte AA = 5;
    public static final byte AD = 10;
    public static final byte CD = 11;
    public static final int DO = 32768;
    public static final byte QR = 0;
    public static final byte RA = 8;
    public static final byte RD = 7;
    public static final byte TC = 6;
    private static Mnemonic flags;

    static {
        Mnemonic mnemonic = new Mnemonic("DNS Header Flag", 3);
        flags = mnemonic;
        mnemonic.setMaximum(15);
        flags.setPrefix("FLAG");
        flags.setNumericAllowed(true);
        flags.add(0, "qr");
        flags.add(5, "aa");
        flags.add(6, "tc");
        flags.add(7, "rd");
        flags.add(8, "ra");
        flags.add(10, "ad");
        flags.add(11, "cd");
    }

    private Flags() {
    }

    public static boolean isFlag(int i4) {
        flags.check(i4);
        return (i4 < 1 || i4 > 4) && i4 < 12;
    }

    public static String string(int i4) {
        return flags.getText(i4);
    }

    public static int value(String str) {
        return flags.getValue(str);
    }
}
