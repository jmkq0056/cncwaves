package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.AccountType;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccountTypeSelectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0019\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u0018\u001a\u00020\u000bHÆ\u0003JC\u0010\u0019\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\tHÖ\u0001R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;", "", "accountTypes", "Ljava/util/LinkedHashSet;", "Lcom/stripe/hardware/emv/AccountType;", "Lkotlin/collections/LinkedHashSet;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "language", "", "enableCustomerCancellation", "", "(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V", "getAccountTypes", "()Ljava/util/LinkedHashSet;", "getAmount", "()Lcom/stripe/currency/Amount;", "getEnableCustomerCancellation", "()Z", "getLanguage", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AccountTypeSelectionModel {
    private final LinkedHashSet<AccountType> accountTypes;
    private final Amount amount;
    private final boolean enableCustomerCancellation;
    private final String language;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AccountTypeSelectionModel copy$default(AccountTypeSelectionModel accountTypeSelectionModel, LinkedHashSet linkedHashSet, Amount amount, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            linkedHashSet = accountTypeSelectionModel.accountTypes;
        }
        if ((i & 2) != 0) {
            amount = accountTypeSelectionModel.amount;
        }
        if ((i & 4) != 0) {
            str = accountTypeSelectionModel.language;
        }
        if ((i & 8) != 0) {
            z = accountTypeSelectionModel.enableCustomerCancellation;
        }
        return accountTypeSelectionModel.copy(linkedHashSet, amount, str, z);
    }

    public final LinkedHashSet<AccountType> component1() {
        return this.accountTypes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final AccountTypeSelectionModel copy(LinkedHashSet<AccountType> accountTypes, Amount amount, String language, boolean enableCustomerCancellation) {
        Intrinsics.checkNotNullParameter(accountTypes, "accountTypes");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new AccountTypeSelectionModel(accountTypes, amount, language, enableCustomerCancellation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccountTypeSelectionModel)) {
            return false;
        }
        AccountTypeSelectionModel accountTypeSelectionModel = (AccountTypeSelectionModel) other;
        return Intrinsics.areEqual(this.accountTypes, accountTypeSelectionModel.accountTypes) && Intrinsics.areEqual(this.amount, accountTypeSelectionModel.amount) && Intrinsics.areEqual(this.language, accountTypeSelectionModel.language) && this.enableCustomerCancellation == accountTypeSelectionModel.enableCustomerCancellation;
    }

    public int hashCode() {
        int iHashCode = ((this.accountTypes.hashCode() * 31) + this.amount.hashCode()) * 31;
        String str = this.language;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.enableCustomerCancellation);
    }

    public String toString() {
        return "AccountTypeSelectionModel(accountTypes=" + this.accountTypes + ", amount=" + this.amount + ", language=" + this.language + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ')';
    }

    public AccountTypeSelectionModel(LinkedHashSet<AccountType> accountTypes, Amount amount, String str, boolean z) {
        Intrinsics.checkNotNullParameter(accountTypes, "accountTypes");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.accountTypes = accountTypes;
        this.amount = amount;
        this.language = str;
        this.enableCustomerCancellation = z;
    }

    public final LinkedHashSet<AccountType> getAccountTypes() {
        return this.accountTypes;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }
}
