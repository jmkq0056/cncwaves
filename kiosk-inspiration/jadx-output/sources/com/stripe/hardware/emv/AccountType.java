package com.stripe.hardware.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AccountType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/emv/AccountType;", "", "emvValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getEmvValue", "()Ljava/lang/String;", "toTlvBlob", "DEFAULT", "SAVINGS", "CHECKING", "CREDIT", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccountType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AccountType[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final String emvValue;
    public static final AccountType DEFAULT = new AccountType("DEFAULT", 0, TlvMap.SET_BUZZER_ENABLED_VALUE);
    public static final AccountType SAVINGS = new AccountType("SAVINGS", 1, "10");
    public static final AccountType CHECKING = new AccountType("CHECKING", 2, "20");
    public static final AccountType CREDIT = new AccountType("CREDIT", 3, "30");

    private static final /* synthetic */ AccountType[] $values() {
        return new AccountType[]{DEFAULT, SAVINGS, CHECKING, CREDIT};
    }

    public static EnumEntries<AccountType> getEntries() {
        return $ENTRIES;
    }

    public static AccountType valueOf(String str) {
        return (AccountType) Enum.valueOf(AccountType.class, str);
    }

    public static AccountType[] values() {
        return (AccountType[]) $VALUES.clone();
    }

    private AccountType(String str, int i, String str2) {
        this.emvValue = str2;
    }

    public final String getEmvValue() {
        return this.emvValue;
    }

    static {
        AccountType[] accountTypeArr$values = $values();
        $VALUES = accountTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(accountTypeArr$values);
        INSTANCE = new Companion(null);
    }

    public final String toTlvBlob() {
        return "5F5701" + this.emvValue;
    }

    /* JADX INFO: compiled from: AccountType.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/emv/AccountType$Companion;", "", "()V", "fromEmvValue", "Lcom/stripe/hardware/emv/AccountType;", "value", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AccountType fromEmvValue(String value) {
            AccountType accountType;
            Intrinsics.checkNotNullParameter(value, "value");
            AccountType[] accountTypeArrValues = AccountType.values();
            int length = accountTypeArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    accountType = null;
                    break;
                }
                accountType = accountTypeArrValues[i];
                if (Intrinsics.areEqual(accountType.getEmvValue(), value)) {
                    break;
                }
                i++;
            }
            if (accountType != null) {
                return accountType;
            }
            throw new IllegalArgumentException("Unknown account type: " + value);
        }
    }
}
