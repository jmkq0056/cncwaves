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
/* JADX INFO: compiled from: CardEntryMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/sdk/CardEntryMethod;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID_ENTRY_METHOD", "CHIP_READ", "CONTACTLESS", "FSWIPE", "KEYED", "SWIPED", "BARCODE_READ", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardEntryMethod implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardEntryMethod[] $VALUES;
    public static final ProtoAdapter<CardEntryMethod> ADAPTER;
    public static final CardEntryMethod BARCODE_READ;
    public static final CardEntryMethod CHIP_READ;
    public static final CardEntryMethod CONTACTLESS;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CardEntryMethod FSWIPE;
    public static final CardEntryMethod INVALID_ENTRY_METHOD;
    public static final CardEntryMethod KEYED;
    public static final CardEntryMethod SWIPED;
    private final int value;

    private static final /* synthetic */ CardEntryMethod[] $values() {
        return new CardEntryMethod[]{INVALID_ENTRY_METHOD, CHIP_READ, CONTACTLESS, FSWIPE, KEYED, SWIPED, BARCODE_READ};
    }

    @JvmStatic
    public static final CardEntryMethod fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<CardEntryMethod> getEntries() {
        return $ENTRIES;
    }

    public static CardEntryMethod valueOf(String str) {
        return (CardEntryMethod) Enum.valueOf(CardEntryMethod.class, str);
    }

    public static CardEntryMethod[] values() {
        return (CardEntryMethod[]) $VALUES.clone();
    }

    private CardEntryMethod(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final CardEntryMethod cardEntryMethod = new CardEntryMethod("INVALID_ENTRY_METHOD", 0, 0);
        INVALID_ENTRY_METHOD = cardEntryMethod;
        CHIP_READ = new CardEntryMethod("CHIP_READ", 1, 1);
        CONTACTLESS = new CardEntryMethod("CONTACTLESS", 2, 2);
        FSWIPE = new CardEntryMethod("FSWIPE", 3, 3);
        KEYED = new CardEntryMethod("KEYED", 4, 4);
        SWIPED = new CardEntryMethod("SWIPED", 5, 5);
        BARCODE_READ = new CardEntryMethod("BARCODE_READ", 6, 6);
        CardEntryMethod[] cardEntryMethodArr$values = $values();
        $VALUES = cardEntryMethodArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cardEntryMethodArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardEntryMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<CardEntryMethod>(orCreateKotlinClass, syntax, cardEntryMethod) { // from class: com.stripe.proto.model.sdk.CardEntryMethod$Companion$ADAPTER$1
            {
                CardEntryMethod cardEntryMethod2 = cardEntryMethod;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public CardEntryMethod fromValue(int value) {
                return CardEntryMethod.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: CardEntryMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/CardEntryMethod;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CardEntryMethod fromValue(int value) {
            switch (value) {
                case 0:
                    return CardEntryMethod.INVALID_ENTRY_METHOD;
                case 1:
                    return CardEntryMethod.CHIP_READ;
                case 2:
                    return CardEntryMethod.CONTACTLESS;
                case 3:
                    return CardEntryMethod.FSWIPE;
                case 4:
                    return CardEntryMethod.KEYED;
                case 5:
                    return CardEntryMethod.SWIPED;
                case 6:
                    return CardEntryMethod.BARCODE_READ;
                default:
                    return null;
            }
        }
    }
}
