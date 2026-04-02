package com.stripe.kmpcore.jackrabbitclient.models;

import io.ktor.http.LinkHeader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003JQ\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;", "required", "", LinkHeader.Parameters.Title, "", "description", "skipButtonText", "submitButtonText", "toggles", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDescription", "()Ljava/lang/String;", "getRequired", "()Z", "getSkipButtonText", "getSubmitButtonText", "getTitle", "getToggles", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EmailInput extends Input {
    private final String description;
    private final boolean required;
    private final String skipButtonText;
    private final String submitButtonText;
    private final String title;
    private final List<Toggle> toggles;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EmailInput copy$default(EmailInput emailInput, boolean z, String str, String str2, String str3, String str4, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = emailInput.required;
        }
        if ((i & 2) != 0) {
            str = emailInput.title;
        }
        if ((i & 4) != 0) {
            str2 = emailInput.description;
        }
        if ((i & 8) != 0) {
            str3 = emailInput.skipButtonText;
        }
        if ((i & 16) != 0) {
            str4 = emailInput.submitButtonText;
        }
        if ((i & 32) != 0) {
            list = emailInput.toggles;
        }
        String str5 = str4;
        List list2 = list;
        return emailInput.copy(z, str, str2, str3, str5, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getRequired() {
        return this.required;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSkipButtonText() {
        return this.skipButtonText;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public final List<Toggle> component6() {
        return this.toggles;
    }

    public final EmailInput copy(boolean required, String title, String description, String skipButtonText, String submitButtonText, List<Toggle> toggles) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        return new EmailInput(required, title, description, skipButtonText, submitButtonText, toggles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EmailInput)) {
            return false;
        }
        EmailInput emailInput = (EmailInput) other;
        return this.required == emailInput.required && Intrinsics.areEqual(this.title, emailInput.title) && Intrinsics.areEqual(this.description, emailInput.description) && Intrinsics.areEqual(this.skipButtonText, emailInput.skipButtonText) && Intrinsics.areEqual(this.submitButtonText, emailInput.submitButtonText) && Intrinsics.areEqual(this.toggles, emailInput.toggles);
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.required) * 31) + this.title.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.skipButtonText;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.submitButtonText;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.toggles.hashCode();
    }

    public String toString() {
        return "EmailInput(required=" + this.required + ", title=" + this.title + ", description=" + this.description + ", skipButtonText=" + this.skipButtonText + ", submitButtonText=" + this.submitButtonText + ", toggles=" + this.toggles + ')';
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public boolean getRequired() {
        return this.required;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public String getTitle() {
        return this.title;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public String getDescription() {
        return this.description;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public String getSkipButtonText() {
        return this.skipButtonText;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public /* synthetic */ EmailInput(boolean z, String str, String str2, String str3, String str4, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? CollectionsKt.emptyList() : list);
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public List<Toggle> getToggles() {
        return this.toggles;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailInput(boolean z, String title, String str, String str2, String str3, List<Toggle> toggles) {
        super(z, title, str, str2, toggles, null, null, FormType.EMAIL, 96, null);
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        this.required = z;
        this.title = title;
        this.description = str;
        this.skipButtonText = str2;
        this.submitButtonText = str3;
        this.toggles = toggles;
    }
}
