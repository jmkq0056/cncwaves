package com.stripe.cots.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.cots.aidlservice.CotsUxConfig;
import com.stripe.currency.Amount;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsCollectionParameters.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000eJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J;\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\t\u0010#\u001a\u00020\tHÖ\u0001J\u0019\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006)"}, d2 = {"Lcom/stripe/cots/common/CotsCollectionParameters;", "Landroid/os/Parcelable;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "(Lcom/stripe/currency/Amount;)V", "config", "Lcom/stripe/cots/aidlservice/CotsUxConfig;", "(Lcom/stripe/currency/Amount;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V", "readerProfile", "", "tlvEntries", "", "Lcom/stripe/cots/common/CotsTlvEntry;", "uxConfig", "(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V", "getAmount", "()Lcom/stripe/currency/Amount;", "getReaderProfile", "()Ljava/lang/String;", "getTlvEntries", "()Ljava/util/List;", "getUxConfig", "()Lcom/stripe/cots/aidlservice/CotsUxConfig;", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CotsCollectionParameters implements Parcelable {
    public static final Parcelable.Creator<CotsCollectionParameters> CREATOR = new Creator();
    private final Amount amount;
    private final String readerProfile;
    private final List<CotsTlvEntry> tlvEntries;
    private final CotsUxConfig uxConfig;

    /* JADX INFO: compiled from: CotsCollectionParameters.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CotsCollectionParameters> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsCollectionParameters createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            Amount amount = (Amount) parcel.readSerializable();
            String string = parcel.readString();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(CotsTlvEntry.CREATOR.createFromParcel(parcel));
            }
            return new CotsCollectionParameters(amount, string, arrayList, (CotsUxConfig) parcel.readSerializable());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsCollectionParameters[] newArray(int i) {
            return new CotsCollectionParameters[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CotsCollectionParameters copy$default(CotsCollectionParameters cotsCollectionParameters, Amount amount, String str, List list, CotsUxConfig cotsUxConfig, int i, Object obj) {
        if ((i & 1) != 0) {
            amount = cotsCollectionParameters.amount;
        }
        if ((i & 2) != 0) {
            str = cotsCollectionParameters.readerProfile;
        }
        if ((i & 4) != 0) {
            list = cotsCollectionParameters.tlvEntries;
        }
        if ((i & 8) != 0) {
            cotsUxConfig = cotsCollectionParameters.uxConfig;
        }
        return cotsCollectionParameters.copy(amount, str, list, cotsUxConfig);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Amount getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getReaderProfile() {
        return this.readerProfile;
    }

    public final List<CotsTlvEntry> component3() {
        return this.tlvEntries;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final CotsUxConfig getUxConfig() {
        return this.uxConfig;
    }

    public final CotsCollectionParameters copy(Amount amount, String readerProfile, List<CotsTlvEntry> tlvEntries, CotsUxConfig uxConfig) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tlvEntries, "tlvEntries");
        return new CotsCollectionParameters(amount, readerProfile, tlvEntries, uxConfig);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CotsCollectionParameters)) {
            return false;
        }
        CotsCollectionParameters cotsCollectionParameters = (CotsCollectionParameters) other;
        return Intrinsics.areEqual(this.amount, cotsCollectionParameters.amount) && Intrinsics.areEqual(this.readerProfile, cotsCollectionParameters.readerProfile) && Intrinsics.areEqual(this.tlvEntries, cotsCollectionParameters.tlvEntries) && Intrinsics.areEqual(this.uxConfig, cotsCollectionParameters.uxConfig);
    }

    public int hashCode() {
        int iHashCode = this.amount.hashCode() * 31;
        String str = this.readerProfile;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.tlvEntries.hashCode()) * 31;
        CotsUxConfig cotsUxConfig = this.uxConfig;
        return iHashCode2 + (cotsUxConfig != null ? cotsUxConfig.hashCode() : 0);
    }

    public String toString() {
        return "CotsCollectionParameters(amount=" + this.amount + ", readerProfile=" + this.readerProfile + ", tlvEntries=" + this.tlvEntries + ", uxConfig=" + this.uxConfig + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeSerializable(this.amount);
        parcel.writeString(this.readerProfile);
        List<CotsTlvEntry> list = this.tlvEntries;
        parcel.writeInt(list.size());
        Iterator<CotsTlvEntry> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, flags);
        }
        parcel.writeSerializable(this.uxConfig);
    }

    public CotsCollectionParameters(Amount amount, String str, List<CotsTlvEntry> tlvEntries, CotsUxConfig cotsUxConfig) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tlvEntries, "tlvEntries");
        this.amount = amount;
        this.readerProfile = str;
        this.tlvEntries = tlvEntries;
        this.uxConfig = cotsUxConfig;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final String getReaderProfile() {
        return this.readerProfile;
    }

    public final List<CotsTlvEntry> getTlvEntries() {
        return this.tlvEntries;
    }

    public final CotsUxConfig getUxConfig() {
        return this.uxConfig;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CotsCollectionParameters(Amount amount) {
        this(amount, null, CollectionsKt.emptyList(), null);
        Intrinsics.checkNotNullParameter(amount, "amount");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CotsCollectionParameters(Amount amount, CotsUxConfig config) {
        this(amount, null, CollectionsKt.emptyList(), config);
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(config, "config");
    }
}
