package com.stripe.proto.model.config;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FontBundle.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/config/FontBundle;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "AVENIR", "FRUTIGER", "FUTURA_STD", "GOTHAM", "HELVETICA_COOPER", "KIEVIT", "PROBA_PRO", "UBUNTU", "LATO", "HELVETICA_TRADE_GOTHIC", "HELVETICA", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FontBundle implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FontBundle[] $VALUES;
    public static final ProtoAdapter<FontBundle> ADAPTER;
    public static final FontBundle AVENIR;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final FontBundle FRUTIGER;
    public static final FontBundle FUTURA_STD;
    public static final FontBundle GOTHAM;
    public static final FontBundle HELVETICA;
    public static final FontBundle HELVETICA_COOPER;
    public static final FontBundle HELVETICA_TRADE_GOTHIC;
    public static final FontBundle KIEVIT;
    public static final FontBundle LATO;
    public static final FontBundle PROBA_PRO;
    public static final FontBundle UBUNTU;
    public static final FontBundle UNKNOWN;
    private final int value;

    private static final /* synthetic */ FontBundle[] $values() {
        return new FontBundle[]{UNKNOWN, AVENIR, FRUTIGER, FUTURA_STD, GOTHAM, HELVETICA_COOPER, KIEVIT, PROBA_PRO, UBUNTU, LATO, HELVETICA_TRADE_GOTHIC, HELVETICA};
    }

    @JvmStatic
    public static final FontBundle fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<FontBundle> getEntries() {
        return $ENTRIES;
    }

    public static FontBundle valueOf(String str) {
        return (FontBundle) Enum.valueOf(FontBundle.class, str);
    }

    public static FontBundle[] values() {
        return (FontBundle[]) $VALUES.clone();
    }

    private FontBundle(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final FontBundle fontBundle = new FontBundle("UNKNOWN", 0, 0);
        UNKNOWN = fontBundle;
        AVENIR = new FontBundle("AVENIR", 1, 1);
        FRUTIGER = new FontBundle("FRUTIGER", 2, 2);
        FUTURA_STD = new FontBundle("FUTURA_STD", 3, 3);
        GOTHAM = new FontBundle("GOTHAM", 4, 4);
        HELVETICA_COOPER = new FontBundle("HELVETICA_COOPER", 5, 5);
        KIEVIT = new FontBundle("KIEVIT", 6, 6);
        PROBA_PRO = new FontBundle("PROBA_PRO", 7, 7);
        UBUNTU = new FontBundle("UBUNTU", 8, 8);
        LATO = new FontBundle("LATO", 9, 9);
        HELVETICA_TRADE_GOTHIC = new FontBundle("HELVETICA_TRADE_GOTHIC", 10, 10);
        HELVETICA = new FontBundle("HELVETICA", 11, 11);
        FontBundle[] fontBundleArr$values = $values();
        $VALUES = fontBundleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(fontBundleArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FontBundle.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<FontBundle>(orCreateKotlinClass, syntax, fontBundle) { // from class: com.stripe.proto.model.config.FontBundle$Companion$ADAPTER$1
            {
                FontBundle fontBundle2 = fontBundle;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public FontBundle fromValue(int value) {
                return FontBundle.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: FontBundle.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/FontBundle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/FontBundle;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final FontBundle fromValue(int value) {
            switch (value) {
                case 0:
                    return FontBundle.UNKNOWN;
                case 1:
                    return FontBundle.AVENIR;
                case 2:
                    return FontBundle.FRUTIGER;
                case 3:
                    return FontBundle.FUTURA_STD;
                case 4:
                    return FontBundle.GOTHAM;
                case 5:
                    return FontBundle.HELVETICA_COOPER;
                case 6:
                    return FontBundle.KIEVIT;
                case 7:
                    return FontBundle.PROBA_PRO;
                case 8:
                    return FontBundle.UBUNTU;
                case 9:
                    return FontBundle.LATO;
                case 10:
                    return FontBundle.HELVETICA_TRADE_GOTHIC;
                case 11:
                    return FontBundle.HELVETICA;
                default:
                    return null;
            }
        }
    }
}
