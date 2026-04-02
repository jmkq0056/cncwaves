package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BbposErrorMode.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/status/BbposErrorMode;", "", "(Ljava/lang/String;I)V", "Key", "Config", "Firmware", "UnrecoverableTamper", "Unknown", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposErrorMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BbposErrorMode[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final BbposErrorMode Key = new BbposErrorMode("Key", 0);
    public static final BbposErrorMode Config = new BbposErrorMode("Config", 1);
    public static final BbposErrorMode Firmware = new BbposErrorMode("Firmware", 2);
    public static final BbposErrorMode UnrecoverableTamper = new BbposErrorMode("UnrecoverableTamper", 3);
    public static final BbposErrorMode Unknown = new BbposErrorMode("Unknown", 4);

    private static final /* synthetic */ BbposErrorMode[] $values() {
        return new BbposErrorMode[]{Key, Config, Firmware, UnrecoverableTamper, Unknown};
    }

    public static EnumEntries<BbposErrorMode> getEntries() {
        return $ENTRIES;
    }

    public static BbposErrorMode valueOf(String str) {
        return (BbposErrorMode) Enum.valueOf(BbposErrorMode.class, str);
    }

    public static BbposErrorMode[] values() {
        return (BbposErrorMode[]) $VALUES.clone();
    }

    private BbposErrorMode(String str, int i) {
    }

    static {
        BbposErrorMode[] bbposErrorModeArr$values = $values();
        $VALUES = bbposErrorModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bbposErrorModeArr$values);
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: compiled from: BbposErrorMode.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/status/BbposErrorMode$Companion;", "", "()V", "getErrorMode", "Lcom/stripe/hardware/status/BbposErrorMode;", "mode", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        
            if (r3.equals(com.stripe.hardware.emv.TlvMap.ENTRY_MODE_CONTACT) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
        
            if (r3.equals("03") == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004e, code lost:
        
            if (r3.equals(com.stripe.hardware.emv.TlvMap.ENTRY_MODE_CONTACTLESS) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0053, code lost:
        
            return com.stripe.hardware.status.BbposErrorMode.Config;
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.stripe.hardware.status.BbposErrorMode getErrorMode(java.lang.String r3) {
            /*
                r2 = this;
                if (r3 == 0) goto L54
                int r0 = r3.hashCode()
                r1 = 1543(0x607, float:2.162E-42)
                if (r0 == r1) goto L48
                r1 = 1784(0x6f8, float:2.5E-42)
                if (r0 == r1) goto L3c
                switch(r0) {
                    case 1538: goto L30;
                    case 1539: goto L27;
                    case 1540: goto L1b;
                    case 1541: goto L12;
                    default: goto L11;
                }
            L11:
                goto L54
            L12:
                java.lang.String r0 = "05"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L51
                goto L54
            L1b:
                java.lang.String r0 = "04"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L24
                goto L54
            L24:
                com.stripe.hardware.status.BbposErrorMode r3 = com.stripe.hardware.status.BbposErrorMode.Firmware
                return r3
            L27:
                java.lang.String r0 = "03"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L51
                goto L54
            L30:
                java.lang.String r0 = "02"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L39
                goto L54
            L39:
                com.stripe.hardware.status.BbposErrorMode r3 = com.stripe.hardware.status.BbposErrorMode.Key
                return r3
            L3c:
                java.lang.String r0 = "80"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L45
                goto L54
            L45:
                com.stripe.hardware.status.BbposErrorMode r3 = com.stripe.hardware.status.BbposErrorMode.UnrecoverableTamper
                return r3
            L48:
                java.lang.String r0 = "07"
                boolean r3 = r3.equals(r0)
                if (r3 != 0) goto L51
                goto L54
            L51:
                com.stripe.hardware.status.BbposErrorMode r3 = com.stripe.hardware.status.BbposErrorMode.Config
                return r3
            L54:
                com.stripe.hardware.status.BbposErrorMode r3 = com.stripe.hardware.status.BbposErrorMode.Unknown
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.hardware.status.BbposErrorMode.Companion.getErrorMode(java.lang.String):com.stripe.hardware.status.BbposErrorMode");
        }
    }
}
