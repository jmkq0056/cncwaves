package com.stripe.kmpcore.jackrabbitclient.models;

import com.sun.jna.platform.win32.WinError;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J/\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;", "skipped", "", "signatureSvg", "", "toggles", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;", "(ZLjava/lang/String;Ljava/util/List;)V", "getSignatureSvg$annotations", "()V", "getSignatureSvg", "()Ljava/lang/String;", "getSkipped", "()Z", "getToggles", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SignatureResult extends CollectInputsSingleResult {
    private final String signatureSvg;
    private final boolean skipped;
    private final List<ToggleResult> toggles;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SignatureResult copy$default(SignatureResult signatureResult, boolean z, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = signatureResult.skipped;
        }
        if ((i & 2) != 0) {
            str = signatureResult.signatureSvg;
        }
        if ((i & 4) != 0) {
            list = signatureResult.toggles;
        }
        return signatureResult.copy(z, str, list);
    }

    public static /* synthetic */ void getSignatureSvg$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSkipped() {
        return this.skipped;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSignatureSvg() {
        return this.signatureSvg;
    }

    public final List<ToggleResult> component3() {
        return this.toggles;
    }

    public final SignatureResult copy(boolean skipped, String signatureSvg, List<? extends ToggleResult> toggles) {
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        return new SignatureResult(skipped, signatureSvg, toggles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SignatureResult)) {
            return false;
        }
        SignatureResult signatureResult = (SignatureResult) other;
        return this.skipped == signatureResult.skipped && Intrinsics.areEqual(this.signatureSvg, signatureResult.signatureSvg) && Intrinsics.areEqual(this.toggles, signatureResult.toggles);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.skipped) * 31;
        String str = this.signatureSvg;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.toggles.hashCode();
    }

    public String toString() {
        return "SignatureResult(skipped=" + this.skipped + ", signatureSvg=██, toggles=" + this.toggles + ')';
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.CollectInputsSingleResult
    public boolean getSkipped() {
        return this.skipped;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.CollectInputsSingleResult
    public String getSignatureSvg() {
        return this.signatureSvg;
    }

    public /* synthetic */ SignatureResult(boolean z, String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, str, (i & 4) != 0 ? CollectionsKt.emptyList() : list);
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.CollectInputsSingleResult
    public List<ToggleResult> getToggles() {
        return this.toggles;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SignatureResult(boolean z, String str, List<? extends ToggleResult> toggles) {
        super(z, toggles, null, null, null, null, str, null, FormType.SIGNATURE, WinError.ERROR_INVALID_STARTING_CODESEG, null);
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        this.skipped = z;
        this.signatureSvg = str;
        this.toggles = toggles;
    }
}
