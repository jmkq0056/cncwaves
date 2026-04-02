package com.stripe.proto.model.sdk;

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
/* JADX INFO: compiled from: CreditCardBrand.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/sdk/CreditCardBrand;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID_CREDIT_CARD_BRAND", "UNKNOWN_CREDIT", "AMERICAN_EXPRESS", "DINERS", "DISCOVER", "JCB", "MASTERCARD", "VISA", "CUP", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreditCardBrand implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CreditCardBrand[] $VALUES;
    public static final ProtoAdapter<CreditCardBrand> ADAPTER;
    public static final CreditCardBrand AMERICAN_EXPRESS;
    public static final CreditCardBrand CUP;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CreditCardBrand DINERS;
    public static final CreditCardBrand DISCOVER;
    public static final CreditCardBrand INVALID_CREDIT_CARD_BRAND;
    public static final CreditCardBrand JCB;
    public static final CreditCardBrand MASTERCARD;
    public static final CreditCardBrand UNKNOWN_CREDIT;
    public static final CreditCardBrand VISA;
    private final int value;

    private static final /* synthetic */ CreditCardBrand[] $values() {
        return new CreditCardBrand[]{INVALID_CREDIT_CARD_BRAND, UNKNOWN_CREDIT, AMERICAN_EXPRESS, DINERS, DISCOVER, JCB, MASTERCARD, VISA, CUP};
    }

    @JvmStatic
    public static final CreditCardBrand fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<CreditCardBrand> getEntries() {
        return $ENTRIES;
    }

    public static CreditCardBrand valueOf(String str) {
        return (CreditCardBrand) Enum.valueOf(CreditCardBrand.class, str);
    }

    public static CreditCardBrand[] values() {
        return (CreditCardBrand[]) $VALUES.clone();
    }

    private CreditCardBrand(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final CreditCardBrand creditCardBrand = new CreditCardBrand("INVALID_CREDIT_CARD_BRAND", 0, 0);
        INVALID_CREDIT_CARD_BRAND = creditCardBrand;
        UNKNOWN_CREDIT = new CreditCardBrand("UNKNOWN_CREDIT", 1, 1);
        AMERICAN_EXPRESS = new CreditCardBrand("AMERICAN_EXPRESS", 2, 2);
        DINERS = new CreditCardBrand("DINERS", 3, 3);
        DISCOVER = new CreditCardBrand("DISCOVER", 4, 4);
        JCB = new CreditCardBrand("JCB", 5, 5);
        MASTERCARD = new CreditCardBrand("MASTERCARD", 6, 6);
        VISA = new CreditCardBrand("VISA", 7, 7);
        CUP = new CreditCardBrand("CUP", 8, 8);
        CreditCardBrand[] creditCardBrandArr$values = $values();
        $VALUES = creditCardBrandArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(creditCardBrandArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreditCardBrand.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<CreditCardBrand>(orCreateKotlinClass, syntax, creditCardBrand) { // from class: com.stripe.proto.model.sdk.CreditCardBrand$Companion$ADAPTER$1
            {
                CreditCardBrand creditCardBrand2 = creditCardBrand;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public CreditCardBrand fromValue(int value) {
                return CreditCardBrand.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: CreditCardBrand.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/CreditCardBrand$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/CreditCardBrand;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CreditCardBrand fromValue(int value) {
            switch (value) {
                case 0:
                    return CreditCardBrand.INVALID_CREDIT_CARD_BRAND;
                case 1:
                    return CreditCardBrand.UNKNOWN_CREDIT;
                case 2:
                    return CreditCardBrand.AMERICAN_EXPRESS;
                case 3:
                    return CreditCardBrand.DINERS;
                case 4:
                    return CreditCardBrand.DISCOVER;
                case 5:
                    return CreditCardBrand.JCB;
                case 6:
                    return CreditCardBrand.MASTERCARD;
                case 7:
                    return CreditCardBrand.VISA;
                case 8:
                    return CreditCardBrand.CUP;
                default:
                    return null;
            }
        }
    }
}
