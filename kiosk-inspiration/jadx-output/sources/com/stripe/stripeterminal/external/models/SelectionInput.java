package com.stripe.stripeterminal.external.models;

import io.ktor.http.LinkHeader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SelectionInput.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001$BK\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u0005HÆ\u0003JU\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\bHÖ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013¨\u0006%"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SelectionInput;", "Lcom/stripe/stripeterminal/external/models/Input;", "required", "", "selectionButtons", "", "Lcom/stripe/stripeterminal/external/models/SelectionButton;", LinkHeader.Parameters.Title, "", "description", "skipButtonText", "toggles", "Lcom/stripe/stripeterminal/external/models/Toggle;", "(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDescription", "()Ljava/lang/String;", "getRequired", "()Z", "getSelectionButtons", "()Ljava/util/List;", "getSkipButtonText", "getTitle", "getToggles", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SelectionInput implements Input {
    private final String description;
    private final boolean required;
    private final List<SelectionButton> selectionButtons;
    private final String skipButtonText;
    private final String title;
    private final List<Toggle> toggles;

    public /* synthetic */ SelectionInput(boolean z, List list, String str, String str2, String str3, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, list, str, str2, str3, list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SelectionInput copy$default(SelectionInput selectionInput, boolean z, List list, String str, String str2, String str3, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = selectionInput.required;
        }
        if ((i & 2) != 0) {
            list = selectionInput.selectionButtons;
        }
        if ((i & 4) != 0) {
            str = selectionInput.title;
        }
        if ((i & 8) != 0) {
            str2 = selectionInput.description;
        }
        if ((i & 16) != 0) {
            str3 = selectionInput.skipButtonText;
        }
        if ((i & 32) != 0) {
            list2 = selectionInput.toggles;
        }
        String str4 = str3;
        List list3 = list2;
        return selectionInput.copy(z, list, str, str2, str4, list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getRequired() {
        return this.required;
    }

    public final List<SelectionButton> component2() {
        return this.selectionButtons;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSkipButtonText() {
        return this.skipButtonText;
    }

    public final List<Toggle> component6() {
        return this.toggles;
    }

    public final SelectionInput copy(boolean required, List<SelectionButton> selectionButtons, String title, String description, String skipButtonText, List<Toggle> toggles) {
        Intrinsics.checkNotNullParameter(selectionButtons, "selectionButtons");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        return new SelectionInput(required, selectionButtons, title, description, skipButtonText, toggles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SelectionInput)) {
            return false;
        }
        SelectionInput selectionInput = (SelectionInput) other;
        return this.required == selectionInput.required && Intrinsics.areEqual(this.selectionButtons, selectionInput.selectionButtons) && Intrinsics.areEqual(this.title, selectionInput.title) && Intrinsics.areEqual(this.description, selectionInput.description) && Intrinsics.areEqual(this.skipButtonText, selectionInput.skipButtonText) && Intrinsics.areEqual(this.toggles, selectionInput.toggles);
    }

    public int hashCode() {
        int iHashCode = ((((Boolean.hashCode(this.required) * 31) + this.selectionButtons.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.skipButtonText;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.toggles.hashCode();
    }

    public String toString() {
        return "SelectionInput(required=" + this.required + ", selectionButtons=" + this.selectionButtons + ", title=" + this.title + ", description=" + this.description + ", skipButtonText=" + this.skipButtonText + ", toggles=" + this.toggles + ')';
    }

    private SelectionInput(boolean z, List<SelectionButton> list, String str, String str2, String str3, List<Toggle> list2) {
        this.required = z;
        this.selectionButtons = list;
        this.title = str;
        this.description = str2;
        this.skipButtonText = str3;
        this.toggles = list2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* synthetic */ SelectionInput(boolean z, List list, String str, String str2, String str3, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        List list3;
        String str4;
        str2 = (i & 8) != 0 ? null : str2;
        if ((i & 16) != 0) {
            list3 = list2;
            str4 = null;
        } else {
            list3 = list2;
            str4 = str3;
        }
        this(z, list, str, str2, str4, list3);
    }

    @Override // com.stripe.stripeterminal.external.models.Input
    public boolean getRequired() {
        return this.required;
    }

    public final List<SelectionButton> getSelectionButtons() {
        return this.selectionButtons;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getSkipButtonText() {
        return this.skipButtonText;
    }

    public final List<Toggle> getToggles() {
        return this.toggles;
    }

    /* JADX INFO: compiled from: SelectionInput.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0014\u0010\u001c\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003J\u0014\u0010\u001e\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\rR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR*\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000e0\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\bR*\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00150\r@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SelectionInput$Builder;", "", LinkHeader.Parameters.Title, "", "(Ljava/lang/String;)V", "<set-?>", "description", "getDescription", "()Ljava/lang/String;", "", "required", "getRequired", "()Z", "", "Lcom/stripe/stripeterminal/external/models/SelectionButton;", "selectionButtons", "getSelectionButtons", "()Ljava/util/List;", "skipButtonText", "getSkipButtonText", "getTitle", "Lcom/stripe/stripeterminal/external/models/Toggle;", "toggles", "getToggles", "build", "Lcom/stripe/stripeterminal/external/models/SelectionInput;", "setDescription", "setRequired", "setSelectionButtons", "setSkipButtonText", "setToggles", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String description;
        private boolean required;
        private List<SelectionButton> selectionButtons;
        private String skipButtonText;
        private final String title;
        private List<Toggle> toggles;

        public Builder(String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.title = title;
            this.selectionButtons = CollectionsKt.emptyList();
            this.toggles = CollectionsKt.emptyList();
        }

        public final String getTitle() {
            return this.title;
        }

        public final boolean getRequired() {
            return this.required;
        }

        public final List<SelectionButton> getSelectionButtons() {
            return this.selectionButtons;
        }

        public final String getDescription() {
            return this.description;
        }

        public final String getSkipButtonText() {
            return this.skipButtonText;
        }

        public final List<Toggle> getToggles() {
            return this.toggles;
        }

        public final Builder setRequired(boolean required) {
            this.required = required;
            return this;
        }

        public final Builder setSelectionButtons(List<SelectionButton> selectionButtons) {
            Intrinsics.checkNotNullParameter(selectionButtons, "selectionButtons");
            this.selectionButtons = selectionButtons;
            return this;
        }

        public final Builder setDescription(String description) {
            this.description = description;
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

        public final SelectionInput build() {
            return new SelectionInput(this.required, this.selectionButtons, this.title, this.description, this.skipButtonText, this.toggles, null);
        }
    }
}
