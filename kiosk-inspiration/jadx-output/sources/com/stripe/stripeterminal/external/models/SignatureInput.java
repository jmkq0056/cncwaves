package com.stripe.stripeterminal.external.models;

import io.ktor.http.LinkHeader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SignatureInput.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001#BI\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003JQ\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SignatureInput;", "Lcom/stripe/stripeterminal/external/models/Input;", "required", "", LinkHeader.Parameters.Title, "", "description", "submitButtonText", "skipButtonText", "toggles", "", "Lcom/stripe/stripeterminal/external/models/Toggle;", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDescription", "()Ljava/lang/String;", "getRequired", "()Z", "getSkipButtonText", "getSubmitButtonText", "getTitle", "getToggles", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SignatureInput implements Input {
    private final String description;
    private final boolean required;
    private final String skipButtonText;
    private final String submitButtonText;
    private final String title;
    private final List<Toggle> toggles;

    public /* synthetic */ SignatureInput(boolean z, String str, String str2, String str3, String str4, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, str, str2, str3, str4, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SignatureInput copy$default(SignatureInput signatureInput, boolean z, String str, String str2, String str3, String str4, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = signatureInput.required;
        }
        if ((i & 2) != 0) {
            str = signatureInput.title;
        }
        if ((i & 4) != 0) {
            str2 = signatureInput.description;
        }
        if ((i & 8) != 0) {
            str3 = signatureInput.submitButtonText;
        }
        if ((i & 16) != 0) {
            str4 = signatureInput.skipButtonText;
        }
        if ((i & 32) != 0) {
            list = signatureInput.toggles;
        }
        String str5 = str4;
        List list2 = list;
        return signatureInput.copy(z, str, str2, str3, str5, list2);
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
    public final String getSubmitButtonText() {
        return this.submitButtonText;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSkipButtonText() {
        return this.skipButtonText;
    }

    public final List<Toggle> component6() {
        return this.toggles;
    }

    public final SignatureInput copy(boolean required, String title, String description, String submitButtonText, String skipButtonText, List<Toggle> toggles) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        return new SignatureInput(required, title, description, submitButtonText, skipButtonText, toggles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SignatureInput)) {
            return false;
        }
        SignatureInput signatureInput = (SignatureInput) other;
        return this.required == signatureInput.required && Intrinsics.areEqual(this.title, signatureInput.title) && Intrinsics.areEqual(this.description, signatureInput.description) && Intrinsics.areEqual(this.submitButtonText, signatureInput.submitButtonText) && Intrinsics.areEqual(this.skipButtonText, signatureInput.skipButtonText) && Intrinsics.areEqual(this.toggles, signatureInput.toggles);
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.required) * 31) + this.title.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.submitButtonText;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.skipButtonText;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.toggles.hashCode();
    }

    public String toString() {
        return "SignatureInput(required=" + this.required + ", title=" + this.title + ", description=" + this.description + ", submitButtonText=" + this.submitButtonText + ", skipButtonText=" + this.skipButtonText + ", toggles=" + this.toggles + ')';
    }

    private SignatureInput(boolean z, String str, String str2, String str3, String str4, List<Toggle> list) {
        this.required = z;
        this.title = str;
        this.description = str2;
        this.submitButtonText = str3;
        this.skipButtonText = str4;
        this.toggles = list;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* synthetic */ SignatureInput(boolean z, String str, String str2, String str3, String str4, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        List list2;
        String str5;
        str2 = (i & 4) != 0 ? null : str2;
        str3 = (i & 8) != 0 ? null : str3;
        if ((i & 16) != 0) {
            list2 = list;
            str5 = null;
        } else {
            list2 = list;
            str5 = str4;
        }
        this(z, str, str2, str3, str5, list2);
    }

    @Override // com.stripe.stripeterminal.external.models.Input
    public boolean getRequired() {
        return this.required;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public final String getSkipButtonText() {
        return this.skipButtonText;
    }

    public final List<Toggle> getToggles() {
        return this.toggles;
    }

    /* JADX INFO: compiled from: SignatureInput.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\u001d\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\"\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\bR*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SignatureInput$Builder;", "", LinkHeader.Parameters.Title, "", "(Ljava/lang/String;)V", "<set-?>", "description", "getDescription", "()Ljava/lang/String;", "", "required", "getRequired", "()Z", "skipButtonText", "getSkipButtonText", "submitButtonText", "getSubmitButtonText", "getTitle", "", "Lcom/stripe/stripeterminal/external/models/Toggle;", "toggles", "getToggles", "()Ljava/util/List;", "build", "Lcom/stripe/stripeterminal/external/models/SignatureInput;", "setDescription", "setRequired", "setSkipButtonText", "setSubmitButtonText", "setToggles", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String description;
        private boolean required;
        private String skipButtonText;
        private String submitButtonText;
        private final String title;
        private List<Toggle> toggles;

        public Builder(String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.title = title;
            this.toggles = CollectionsKt.emptyList();
        }

        public final String getTitle() {
            return this.title;
        }

        public final boolean getRequired() {
            return this.required;
        }

        public final String getDescription() {
            return this.description;
        }

        public final String getSkipButtonText() {
            return this.skipButtonText;
        }

        public final String getSubmitButtonText() {
            return this.submitButtonText;
        }

        public final List<Toggle> getToggles() {
            return this.toggles;
        }

        public final Builder setRequired(boolean required) {
            this.required = required;
            return this;
        }

        public final Builder setDescription(String description) {
            this.description = description;
            return this;
        }

        public final Builder setSubmitButtonText(String submitButtonText) {
            this.submitButtonText = submitButtonText;
            return this;
        }

        public final Builder setSkipButtonText(String skipButtonText) {
            this.skipButtonText = skipButtonText;
            return this;
        }

        public final Builder setToggles(List<Toggle> toggles) {
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            this.toggles = toggles;
            return this;
        }

        public final SignatureInput build() {
            return new SignatureInput(this.required, this.title, this.description, this.submitButtonText, this.skipButtonText, this.toggles, null);
        }
    }
}
