package com.stripe.hardware.paymentcollection;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApplicationSelectionModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001f B-\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\nHÆ\u0003J9\u0010\u0018\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel;", "", "applications", "", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "enableCustomerCancellation", "", "applicationSelectionRetryReason", "Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;", "(Ljava/util/List;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getApplicationSelectionRetryReason", "()Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;", "getApplications", "()Ljava/util/List;", "getEnableCustomerCancellation", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "Application", "ApplicationSelectionRetryReason", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ApplicationSelectionModel {
    private final Amount amount;
    private final ApplicationSelectionRetryReason applicationSelectionRetryReason;
    private final List<Application> applications;
    private final boolean enableCustomerCancellation;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ApplicationSelectionModel copy$default(ApplicationSelectionModel applicationSelectionModel, List list, Amount amount, boolean z, ApplicationSelectionRetryReason applicationSelectionRetryReason, int i, Object obj) {
        if ((i & 1) != 0) {
            list = applicationSelectionModel.applications;
        }
        if ((i & 2) != 0) {
            amount = applicationSelectionModel.amount;
        }
        if ((i & 4) != 0) {
            z = applicationSelectionModel.enableCustomerCancellation;
        }
        if ((i & 8) != 0) {
            applicationSelectionRetryReason = applicationSelectionModel.applicationSelectionRetryReason;
        }
        return applicationSelectionModel.copy(list, amount, z, applicationSelectionRetryReason);
    }

    public final List<Application> component1() {
        return this.applications;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ApplicationSelectionRetryReason getApplicationSelectionRetryReason() {
        return this.applicationSelectionRetryReason;
    }

    public final ApplicationSelectionModel copy(List<Application> applications, Amount amount, boolean enableCustomerCancellation, ApplicationSelectionRetryReason applicationSelectionRetryReason) {
        Intrinsics.checkNotNullParameter(applications, "applications");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new ApplicationSelectionModel(applications, amount, enableCustomerCancellation, applicationSelectionRetryReason);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ApplicationSelectionModel)) {
            return false;
        }
        ApplicationSelectionModel applicationSelectionModel = (ApplicationSelectionModel) other;
        return Intrinsics.areEqual(this.applications, applicationSelectionModel.applications) && Intrinsics.areEqual(this.amount, applicationSelectionModel.amount) && this.enableCustomerCancellation == applicationSelectionModel.enableCustomerCancellation && this.applicationSelectionRetryReason == applicationSelectionModel.applicationSelectionRetryReason;
    }

    public int hashCode() {
        int iHashCode = ((((this.applications.hashCode() * 31) + this.amount.hashCode()) * 31) + Boolean.hashCode(this.enableCustomerCancellation)) * 31;
        ApplicationSelectionRetryReason applicationSelectionRetryReason = this.applicationSelectionRetryReason;
        return iHashCode + (applicationSelectionRetryReason == null ? 0 : applicationSelectionRetryReason.hashCode());
    }

    public String toString() {
        return "ApplicationSelectionModel(applications=" + this.applications + ", amount=" + this.amount + ", enableCustomerCancellation=" + this.enableCustomerCancellation + ", applicationSelectionRetryReason=" + this.applicationSelectionRetryReason + ')';
    }

    public ApplicationSelectionModel(List<Application> applications, Amount amount, boolean z, ApplicationSelectionRetryReason applicationSelectionRetryReason) {
        Intrinsics.checkNotNullParameter(applications, "applications");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.applications = applications;
        this.amount = amount;
        this.enableCustomerCancellation = z;
        this.applicationSelectionRetryReason = applicationSelectionRetryReason;
    }

    public final List<Application> getApplications() {
        return this.applications;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    public final ApplicationSelectionRetryReason getApplicationSelectionRetryReason() {
        return this.applicationSelectionRetryReason;
    }

    /* JADX INFO: compiled from: ApplicationSelectionModel.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$Application;", "", "preferredName", "", OfflineStorageConstantsKt.ID, "tlvBlob", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getPreferredName", "getTlvBlob", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Application {
        private final String id;
        private final String preferredName;
        private final String tlvBlob;

        public static /* synthetic */ Application copy$default(Application application, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = application.preferredName;
            }
            if ((i & 2) != 0) {
                str2 = application.id;
            }
            if ((i & 4) != 0) {
                str3 = application.tlvBlob;
            }
            return application.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPreferredName() {
            return this.preferredName;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getTlvBlob() {
            return this.tlvBlob;
        }

        public final Application copy(String preferredName, String id, String tlvBlob) {
            Intrinsics.checkNotNullParameter(preferredName, "preferredName");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
            return new Application(preferredName, id, tlvBlob);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Application)) {
                return false;
            }
            Application application = (Application) other;
            return Intrinsics.areEqual(this.preferredName, application.preferredName) && Intrinsics.areEqual(this.id, application.id) && Intrinsics.areEqual(this.tlvBlob, application.tlvBlob);
        }

        public int hashCode() {
            return (((this.preferredName.hashCode() * 31) + this.id.hashCode()) * 31) + this.tlvBlob.hashCode();
        }

        public String toString() {
            return "Application(preferredName=" + this.preferredName + ", id=" + this.id + ", tlvBlob=" + this.tlvBlob + ')';
        }

        public Application(String preferredName, String id, String tlvBlob) {
            Intrinsics.checkNotNullParameter(preferredName, "preferredName");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
            this.preferredName = preferredName;
            this.id = id;
            this.tlvBlob = tlvBlob;
        }

        public final String getPreferredName() {
            return this.preferredName;
        }

        public final String getId() {
            return this.id;
        }

        public final String getTlvBlob() {
            return this.tlvBlob;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ApplicationSelectionModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;", "", "(Ljava/lang/String;I)V", "NOT_ACCEPTED", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ApplicationSelectionRetryReason {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ApplicationSelectionRetryReason[] $VALUES;
        public static final ApplicationSelectionRetryReason NOT_ACCEPTED = new ApplicationSelectionRetryReason("NOT_ACCEPTED", 0);

        private static final /* synthetic */ ApplicationSelectionRetryReason[] $values() {
            return new ApplicationSelectionRetryReason[]{NOT_ACCEPTED};
        }

        public static EnumEntries<ApplicationSelectionRetryReason> getEntries() {
            return $ENTRIES;
        }

        public static ApplicationSelectionRetryReason valueOf(String str) {
            return (ApplicationSelectionRetryReason) Enum.valueOf(ApplicationSelectionRetryReason.class, str);
        }

        public static ApplicationSelectionRetryReason[] values() {
            return (ApplicationSelectionRetryReason[]) $VALUES.clone();
        }

        private ApplicationSelectionRetryReason(String str, int i) {
        }

        static {
            ApplicationSelectionRetryReason[] applicationSelectionRetryReasonArr$values = $values();
            $VALUES = applicationSelectionRetryReasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(applicationSelectionRetryReasonArr$values);
        }
    }
}
