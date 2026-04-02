package com.stripe.bbpos.sdk;

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
/* JADX INFO: compiled from: CheckCardMode.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0013"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardMode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHECK_CARD_MODE_UNKNOWN", "SWIPE", "INSERT", "TAP", "SWIPE_OR_INSERT", "SWIPE_OR_TAP", "SWIPE_OR_INSERT_OR_TAP", "INSERT_OR_TAP", "MANUAL_PAN_ENTRY", "QR_CODE", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckCardMode implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CheckCardMode[] $VALUES;
    public static final ProtoAdapter<CheckCardMode> ADAPTER;
    public static final CheckCardMode CHECK_CARD_MODE_UNKNOWN;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CheckCardMode INSERT;
    public static final CheckCardMode INSERT_OR_TAP;
    public static final CheckCardMode MANUAL_PAN_ENTRY;
    public static final CheckCardMode QR_CODE;
    public static final CheckCardMode SWIPE;
    public static final CheckCardMode SWIPE_OR_INSERT;
    public static final CheckCardMode SWIPE_OR_INSERT_OR_TAP;
    public static final CheckCardMode SWIPE_OR_TAP;
    public static final CheckCardMode TAP;
    private final int value;

    private static final /* synthetic */ CheckCardMode[] $values() {
        return new CheckCardMode[]{CHECK_CARD_MODE_UNKNOWN, SWIPE, INSERT, TAP, SWIPE_OR_INSERT, SWIPE_OR_TAP, SWIPE_OR_INSERT_OR_TAP, INSERT_OR_TAP, MANUAL_PAN_ENTRY, QR_CODE};
    }

    @JvmStatic
    public static final CheckCardMode fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<CheckCardMode> getEntries() {
        return $ENTRIES;
    }

    public static CheckCardMode valueOf(String str) {
        return (CheckCardMode) Enum.valueOf(CheckCardMode.class, str);
    }

    public static CheckCardMode[] values() {
        return (CheckCardMode[]) $VALUES.clone();
    }

    private CheckCardMode(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final CheckCardMode checkCardMode = new CheckCardMode("CHECK_CARD_MODE_UNKNOWN", 0, 0);
        CHECK_CARD_MODE_UNKNOWN = checkCardMode;
        SWIPE = new CheckCardMode("SWIPE", 1, 1);
        INSERT = new CheckCardMode("INSERT", 2, 2);
        TAP = new CheckCardMode("TAP", 3, 3);
        SWIPE_OR_INSERT = new CheckCardMode("SWIPE_OR_INSERT", 4, 4);
        SWIPE_OR_TAP = new CheckCardMode("SWIPE_OR_TAP", 5, 5);
        SWIPE_OR_INSERT_OR_TAP = new CheckCardMode("SWIPE_OR_INSERT_OR_TAP", 6, 6);
        INSERT_OR_TAP = new CheckCardMode("INSERT_OR_TAP", 7, 7);
        MANUAL_PAN_ENTRY = new CheckCardMode("MANUAL_PAN_ENTRY", 8, 8);
        QR_CODE = new CheckCardMode("QR_CODE", 9, 9);
        CheckCardMode[] checkCardModeArr$values = $values();
        $VALUES = checkCardModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(checkCardModeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckCardMode.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<CheckCardMode>(orCreateKotlinClass, syntax, checkCardMode) { // from class: com.stripe.bbpos.sdk.CheckCardMode$Companion$ADAPTER$1
            {
                CheckCardMode checkCardMode2 = checkCardMode;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public CheckCardMode fromValue(int value) {
                return CheckCardMode.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: CheckCardMode.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardMode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CheckCardMode fromValue(int value) {
            switch (value) {
                case 0:
                    return CheckCardMode.CHECK_CARD_MODE_UNKNOWN;
                case 1:
                    return CheckCardMode.SWIPE;
                case 2:
                    return CheckCardMode.INSERT;
                case 3:
                    return CheckCardMode.TAP;
                case 4:
                    return CheckCardMode.SWIPE_OR_INSERT;
                case 5:
                    return CheckCardMode.SWIPE_OR_TAP;
                case 6:
                    return CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
                case 7:
                    return CheckCardMode.INSERT_OR_TAP;
                case 8:
                    return CheckCardMode.MANUAL_PAN_ENTRY;
                case 9:
                    return CheckCardMode.QR_CODE;
                default:
                    return null;
            }
        }
    }
}
