package com.stripe.stripeterminal.external.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NumericResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J/\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/stripe/stripeterminal/external/models/NumericResult;", "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;", "skipped", "", "numericString", "", "toggles", "", "Lcom/stripe/stripeterminal/external/models/ToggleResult;", "(ZLjava/lang/String;Ljava/util/List;)V", "getNumericString$annotations", "()V", "getNumericString", "()Ljava/lang/String;", "getSkipped", "()Z", "getToggles$annotations", "getToggles", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NumericResult implements CollectInputsResult {
    private final String numericString;
    private final boolean skipped;
    private final List<ToggleResult> toggles;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NumericResult copy$default(NumericResult numericResult, boolean z, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = numericResult.skipped;
        }
        if ((i & 2) != 0) {
            str = numericResult.numericString;
        }
        if ((i & 4) != 0) {
            list = numericResult.toggles;
        }
        return numericResult.copy(z, str, list);
    }

    public static /* synthetic */ void getNumericString$annotations() {
    }

    public static /* synthetic */ void getToggles$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSkipped() {
        return this.skipped;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getNumericString() {
        return this.numericString;
    }

    public final List<ToggleResult> component3() {
        return this.toggles;
    }

    public final NumericResult copy(boolean skipped, String numericString, List<? extends ToggleResult> toggles) {
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        return new NumericResult(skipped, numericString, toggles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NumericResult)) {
            return false;
        }
        NumericResult numericResult = (NumericResult) other;
        return this.skipped == numericResult.skipped && Intrinsics.areEqual(this.numericString, numericResult.numericString) && Intrinsics.areEqual(this.toggles, numericResult.toggles);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.skipped) * 31;
        String str = this.numericString;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.toggles.hashCode();
    }

    public String toString() {
        return "NumericResult(skipped=" + this.skipped + ", numericString=" + this.numericString + ", toggles=" + this.toggles + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NumericResult(boolean z, String str, List<? extends ToggleResult> toggles) {
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        this.skipped = z;
        this.numericString = str;
        this.toggles = toggles;
    }

    @Override // com.stripe.stripeterminal.external.models.CollectInputsResult
    public boolean getSkipped() {
        return this.skipped;
    }

    public final String getNumericString() {
        return this.numericString;
    }

    public final List<ToggleResult> getToggles() {
        return this.toggles;
    }
}
