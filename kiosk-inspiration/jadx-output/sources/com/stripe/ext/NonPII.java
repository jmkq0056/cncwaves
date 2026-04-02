package com.stripe.ext;

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
/* JADX INFO: compiled from: NonPII.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/ext/NonPII;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SECURITY_TOKEN", "NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS", "STRIPE_CONTROLLED_ACCOUNT_NUMBER", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NonPII implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NonPII[] $VALUES;
    public static final ProtoAdapter<NonPII> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int value;
    public static final NonPII SECURITY_TOKEN = new NonPII("SECURITY_TOKEN", 0, 1);
    public static final NonPII NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS = new NonPII("NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS", 1, 2);
    public static final NonPII STRIPE_CONTROLLED_ACCOUNT_NUMBER = new NonPII("STRIPE_CONTROLLED_ACCOUNT_NUMBER", 2, 3);

    private static final /* synthetic */ NonPII[] $values() {
        return new NonPII[]{SECURITY_TOKEN, NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS, STRIPE_CONTROLLED_ACCOUNT_NUMBER};
    }

    @JvmStatic
    public static final NonPII fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<NonPII> getEntries() {
        return $ENTRIES;
    }

    public static NonPII valueOf(String str) {
        return (NonPII) Enum.valueOf(NonPII.class, str);
    }

    public static NonPII[] values() {
        return (NonPII[]) $VALUES.clone();
    }

    private NonPII(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        NonPII[] nonPIIArr$values = $values();
        $VALUES = nonPIIArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(nonPIIArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NonPII.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<NonPII>(orCreateKotlinClass, syntax) { // from class: com.stripe.ext.NonPII$Companion$ADAPTER$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public NonPII fromValue(int value) {
                return NonPII.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: NonPII.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/NonPII$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/NonPII;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final NonPII fromValue(int value) {
            if (value == 1) {
                return NonPII.SECURITY_TOKEN;
            }
            if (value == 2) {
                return NonPII.NOT_SENSITIVE_BUT_HIDDEN_FROM_USERS;
            }
            if (value != 3) {
                return null;
            }
            return NonPII.STRIPE_CONTROLLED_ACCOUNT_NUMBER;
        }
    }
}
