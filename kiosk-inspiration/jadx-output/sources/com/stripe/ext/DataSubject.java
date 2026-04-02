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
/* JADX INFO: compiled from: DataSubject.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/DataSubject;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EMPLOYEE", "END_CUSTOMER", "END_CUSTOMER_CHECKOUT", "MERCHANT", "OTHER_PEP", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DataSubject implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DataSubject[] $VALUES;
    public static final ProtoAdapter<DataSubject> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DataSubject EMPLOYEE = new DataSubject("EMPLOYEE", 0, 1);
    public static final DataSubject END_CUSTOMER = new DataSubject("END_CUSTOMER", 1, 2);
    public static final DataSubject END_CUSTOMER_CHECKOUT = new DataSubject("END_CUSTOMER_CHECKOUT", 2, 3);
    public static final DataSubject MERCHANT = new DataSubject("MERCHANT", 3, 4);
    public static final DataSubject OTHER_PEP = new DataSubject("OTHER_PEP", 4, 5);
    private final int value;

    private static final /* synthetic */ DataSubject[] $values() {
        return new DataSubject[]{EMPLOYEE, END_CUSTOMER, END_CUSTOMER_CHECKOUT, MERCHANT, OTHER_PEP};
    }

    @JvmStatic
    public static final DataSubject fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<DataSubject> getEntries() {
        return $ENTRIES;
    }

    public static DataSubject valueOf(String str) {
        return (DataSubject) Enum.valueOf(DataSubject.class, str);
    }

    public static DataSubject[] values() {
        return (DataSubject[]) $VALUES.clone();
    }

    private DataSubject(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        DataSubject[] dataSubjectArr$values = $values();
        $VALUES = dataSubjectArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(dataSubjectArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DataSubject.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<DataSubject>(orCreateKotlinClass, syntax) { // from class: com.stripe.ext.DataSubject$Companion$ADAPTER$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public DataSubject fromValue(int value) {
                return DataSubject.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: DataSubject.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/DataSubject$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/DataSubject;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DataSubject fromValue(int value) {
            if (value == 1) {
                return DataSubject.EMPLOYEE;
            }
            if (value == 2) {
                return DataSubject.END_CUSTOMER;
            }
            if (value == 3) {
                return DataSubject.END_CUSTOMER_CHECKOUT;
            }
            if (value == 4) {
                return DataSubject.MERCHANT;
            }
            if (value != 5) {
                return null;
            }
            return DataSubject.OTHER_PEP;
        }
    }
}
