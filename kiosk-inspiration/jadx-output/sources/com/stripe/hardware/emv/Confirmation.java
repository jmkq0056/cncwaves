package com.stripe.hardware.emv;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Confirmation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation;", "", "()V", "AccountSelection", "ApplicationSelection", "LanguageSelection", "Pin", "Lcom/stripe/hardware/emv/Confirmation$AccountSelection;", "Lcom/stripe/hardware/emv/Confirmation$ApplicationSelection;", "Lcom/stripe/hardware/emv/Confirmation$LanguageSelection;", "Lcom/stripe/hardware/emv/Confirmation$Pin;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Confirmation {
    public /* synthetic */ Confirmation(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private Confirmation() {
    }

    /* JADX INFO: compiled from: Confirmation.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u001f\u0010\n\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0005HÖ\u0001R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$ApplicationSelection;", "Lcom/stripe/hardware/emv/Confirmation;", "applications", "", "", "", "(Ljava/util/Map;)V", "getApplications", "()Ljava/util/Map;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ApplicationSelection extends Confirmation {
        private final Map<Integer, String> applications;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ApplicationSelection copy$default(ApplicationSelection applicationSelection, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                map = applicationSelection.applications;
            }
            return applicationSelection.copy(map);
        }

        public final Map<Integer, String> component1() {
            return this.applications;
        }

        public final ApplicationSelection copy(Map<Integer, String> applications) {
            Intrinsics.checkNotNullParameter(applications, "applications");
            return new ApplicationSelection(applications);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ApplicationSelection) && Intrinsics.areEqual(this.applications, ((ApplicationSelection) other).applications);
        }

        public int hashCode() {
            return this.applications.hashCode();
        }

        public String toString() {
            return "ApplicationSelection(applications=" + this.applications + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApplicationSelection(Map<Integer, String> applications) {
            super(null);
            Intrinsics.checkNotNullParameter(applications, "applications");
            this.applications = applications;
        }

        public final Map<Integer, String> getApplications() {
            return this.applications;
        }
    }

    /* JADX INFO: compiled from: Confirmation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$AccountSelection;", "Lcom/stripe/hardware/emv/Confirmation;", "accounts", "", "Lcom/stripe/hardware/emv/AccountType;", "(Ljava/util/List;)V", "getAccounts", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class AccountSelection extends Confirmation {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final AccountSelection INTERAC_ACCOUNT_SELECTION = new AccountSelection(CollectionsKt.listOf((Object[]) new AccountType[]{AccountType.CHECKING, AccountType.SAVINGS}));
        private final List<AccountType> accounts;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ AccountSelection copy$default(AccountSelection accountSelection, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = accountSelection.accounts;
            }
            return accountSelection.copy(list);
        }

        public final List<AccountType> component1() {
            return this.accounts;
        }

        public final AccountSelection copy(List<? extends AccountType> accounts) {
            Intrinsics.checkNotNullParameter(accounts, "accounts");
            return new AccountSelection(accounts);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AccountSelection) && Intrinsics.areEqual(this.accounts, ((AccountSelection) other).accounts);
        }

        public int hashCode() {
            return this.accounts.hashCode();
        }

        public String toString() {
            return "AccountSelection(accounts=" + this.accounts + ')';
        }

        /* JADX INFO: compiled from: Confirmation.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;", "", "()V", "INTERAC_ACCOUNT_SELECTION", "Lcom/stripe/hardware/emv/Confirmation$AccountSelection;", "getINTERAC_ACCOUNT_SELECTION", "()Lcom/stripe/hardware/emv/Confirmation$AccountSelection;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final AccountSelection getINTERAC_ACCOUNT_SELECTION() {
                return AccountSelection.INTERAC_ACCOUNT_SELECTION;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AccountSelection(List<? extends AccountType> accounts) {
            super(null);
            Intrinsics.checkNotNullParameter(accounts, "accounts");
            this.accounts = accounts;
        }

        public final List<AccountType> getAccounts() {
            return this.accounts;
        }
    }

    /* JADX INFO: compiled from: Confirmation.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$LanguageSelection;", "Lcom/stripe/hardware/emv/Confirmation;", "languagePreferences", "", "", "(Ljava/util/List;)V", "getLanguagePreferences", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class LanguageSelection extends Confirmation {
        private final List<String> languagePreferences;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ LanguageSelection copy$default(LanguageSelection languageSelection, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = languageSelection.languagePreferences;
            }
            return languageSelection.copy(list);
        }

        public final List<String> component1() {
            return this.languagePreferences;
        }

        public final LanguageSelection copy(List<String> languagePreferences) {
            Intrinsics.checkNotNullParameter(languagePreferences, "languagePreferences");
            return new LanguageSelection(languagePreferences);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof LanguageSelection) && Intrinsics.areEqual(this.languagePreferences, ((LanguageSelection) other).languagePreferences);
        }

        public int hashCode() {
            return this.languagePreferences.hashCode();
        }

        public String toString() {
            return "LanguageSelection(languagePreferences=" + this.languagePreferences + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LanguageSelection(List<String> languagePreferences) {
            super(null);
            Intrinsics.checkNotNullParameter(languagePreferences, "languagePreferences");
            this.languagePreferences = languagePreferences;
        }

        public final List<String> getLanguagePreferences() {
            return this.languagePreferences;
        }
    }

    /* JADX INFO: compiled from: Confirmation.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$Pin;", "Lcom/stripe/hardware/emv/Confirmation;", "error", "Lcom/stripe/hardware/emv/Confirmation$Pin$Error;", "(Lcom/stripe/hardware/emv/Confirmation$Pin$Error;)V", "getError", "()Lcom/stripe/hardware/emv/Confirmation$Pin$Error;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Error", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Pin extends Confirmation {
        private final Error error;

        public static /* synthetic */ Pin copy$default(Pin pin, Error error, int i, Object obj) {
            if ((i & 1) != 0) {
                error = pin.error;
            }
            return pin.copy(error);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Error getError() {
            return this.error;
        }

        public final Pin copy(Error error) {
            return new Pin(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Pin) && this.error == ((Pin) other).error;
        }

        public int hashCode() {
            Error error = this.error;
            if (error == null) {
                return 0;
            }
            return error.hashCode();
        }

        public String toString() {
            return "Pin(error=" + this.error + ')';
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: Confirmation.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/hardware/emv/Confirmation$Pin$Error;", "", "(Ljava/lang/String;I)V", "WRONG_LENGTH", "INCORRECT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Error {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Error[] $VALUES;
            public static final Error WRONG_LENGTH = new Error("WRONG_LENGTH", 0);
            public static final Error INCORRECT = new Error("INCORRECT", 1);

            private static final /* synthetic */ Error[] $values() {
                return new Error[]{WRONG_LENGTH, INCORRECT};
            }

            public static EnumEntries<Error> getEntries() {
                return $ENTRIES;
            }

            public static Error valueOf(String str) {
                return (Error) Enum.valueOf(Error.class, str);
            }

            public static Error[] values() {
                return (Error[]) $VALUES.clone();
            }

            static {
                Error[] errorArr$values = $values();
                $VALUES = errorArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(errorArr$values);
            }

            private Error(String str, int i) {
            }
        }

        public Pin(Error error) {
            super(null);
            this.error = error;
        }

        public final Error getError() {
            return this.error;
        }
    }
}
