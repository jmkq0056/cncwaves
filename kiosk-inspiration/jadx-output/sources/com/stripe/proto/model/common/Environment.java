package com.stripe.proto.model.common;

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
/* JADX INFO: compiled from: Environment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/Environment;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PROD", "QA", "DEVBOX", "TEST", "PREPROD", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Environment implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Environment[] $VALUES;
    public static final ProtoAdapter<Environment> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final Environment DEVBOX;
    public static final Environment PREPROD;
    public static final Environment PROD;
    public static final Environment QA;
    public static final Environment TEST;
    private final int value;

    private static final /* synthetic */ Environment[] $values() {
        return new Environment[]{PROD, QA, DEVBOX, TEST, PREPROD};
    }

    @JvmStatic
    public static final Environment fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Environment> getEntries() {
        return $ENTRIES;
    }

    public static Environment valueOf(String str) {
        return (Environment) Enum.valueOf(Environment.class, str);
    }

    public static Environment[] values() {
        return (Environment[]) $VALUES.clone();
    }

    private Environment(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Environment environment = new Environment("PROD", 0, 0);
        PROD = environment;
        QA = new Environment("QA", 1, 1);
        DEVBOX = new Environment("DEVBOX", 2, 2);
        TEST = new Environment("TEST", 3, 3);
        PREPROD = new Environment("PREPROD", 4, 4);
        Environment[] environmentArr$values = $values();
        $VALUES = environmentArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(environmentArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Environment.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Environment>(orCreateKotlinClass, syntax, environment) { // from class: com.stripe.proto.model.common.Environment$Companion$ADAPTER$1
            {
                Environment environment2 = environment;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Environment fromValue(int value) {
                return Environment.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Environment.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/Environment$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/Environment;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Environment fromValue(int value) {
            if (value == 0) {
                return Environment.PROD;
            }
            if (value == 1) {
                return Environment.QA;
            }
            if (value == 2) {
                return Environment.DEVBOX;
            }
            if (value == 3) {
                return Environment.TEST;
            }
            if (value != 4) {
                return null;
            }
            return Environment.PREPROD;
        }
    }
}
