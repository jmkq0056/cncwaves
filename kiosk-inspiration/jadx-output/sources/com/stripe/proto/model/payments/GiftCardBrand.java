package com.stripe.proto.model.payments;

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
/* JADX INFO: compiled from: GiftCardBrand.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/payments/GiftCardBrand;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEFAULT_GIFT", "BLACKHAWK", "INCOMM", "STORED_VALUE_SYSTEMS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GiftCardBrand implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GiftCardBrand[] $VALUES;
    public static final ProtoAdapter<GiftCardBrand> ADAPTER;
    public static final GiftCardBrand BLACKHAWK;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final GiftCardBrand DEFAULT_GIFT;
    public static final GiftCardBrand INCOMM;
    public static final GiftCardBrand STORED_VALUE_SYSTEMS;
    private final int value;

    private static final /* synthetic */ GiftCardBrand[] $values() {
        return new GiftCardBrand[]{DEFAULT_GIFT, BLACKHAWK, INCOMM, STORED_VALUE_SYSTEMS};
    }

    @JvmStatic
    public static final GiftCardBrand fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<GiftCardBrand> getEntries() {
        return $ENTRIES;
    }

    public static GiftCardBrand valueOf(String str) {
        return (GiftCardBrand) Enum.valueOf(GiftCardBrand.class, str);
    }

    public static GiftCardBrand[] values() {
        return (GiftCardBrand[]) $VALUES.clone();
    }

    private GiftCardBrand(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final GiftCardBrand giftCardBrand = new GiftCardBrand("DEFAULT_GIFT", 0, 0);
        DEFAULT_GIFT = giftCardBrand;
        BLACKHAWK = new GiftCardBrand("BLACKHAWK", 1, 1);
        INCOMM = new GiftCardBrand("INCOMM", 2, 2);
        STORED_VALUE_SYSTEMS = new GiftCardBrand("STORED_VALUE_SYSTEMS", 3, 3);
        GiftCardBrand[] giftCardBrandArr$values = $values();
        $VALUES = giftCardBrandArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(giftCardBrandArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GiftCardBrand.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<GiftCardBrand>(orCreateKotlinClass, syntax, giftCardBrand) { // from class: com.stripe.proto.model.payments.GiftCardBrand$Companion$ADAPTER$1
            {
                GiftCardBrand giftCardBrand2 = giftCardBrand;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public GiftCardBrand fromValue(int value) {
                return GiftCardBrand.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: GiftCardBrand.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/GiftCardBrand$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/GiftCardBrand;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final GiftCardBrand fromValue(int value) {
            if (value == 0) {
                return GiftCardBrand.DEFAULT_GIFT;
            }
            if (value == 1) {
                return GiftCardBrand.BLACKHAWK;
            }
            if (value == 2) {
                return GiftCardBrand.INCOMM;
            }
            if (value != 3) {
                return null;
            }
            return GiftCardBrand.STORED_VALUE_SYSTEMS;
        }
    }
}
