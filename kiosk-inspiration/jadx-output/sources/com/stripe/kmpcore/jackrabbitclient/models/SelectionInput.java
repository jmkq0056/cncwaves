package com.stripe.kmpcore.jackrabbitclient.models;

import io.ktor.http.LinkHeader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\u0002\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u0005HÆ\u0003JU\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\bHÖ\u0001R\u0016\u0010\t\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\n\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013¨\u0006$"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;", "required", "", "selectionButtons", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;", LinkHeader.Parameters.Title, "", "description", "skipButtonText", "toggles", "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDescription", "()Ljava/lang/String;", "getRequired", "()Z", "getSelectionButtons", "()Ljava/util/List;", "getSkipButtonText", "getTitle", "getToggles", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SelectionInput extends Input {
    private final String description;
    private final boolean required;
    private final List<SelectionButton> selectionButtons;
    private final String skipButtonText;
    private final String title;
    private final List<Toggle> toggles;

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

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public boolean getRequired() {
        return this.required;
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public List<SelectionButton> getSelectionButtons() {
        return this.selectionButtons;
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

    public /* synthetic */ SelectionInput(boolean z, List list, String str, String str2, String str3, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, list, str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? CollectionsKt.emptyList() : list2);
    }

    @Override // com.stripe.kmpcore.jackrabbitclient.models.Input
    public List<Toggle> getToggles() {
        return this.toggles;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionInput(boolean z, List<SelectionButton> selectionButtons, String title, String str, String str2, List<Toggle> toggles) {
        super(z, title, str, str2, toggles, null, selectionButtons, FormType.SELECTION, 32, null);
        Intrinsics.checkNotNullParameter(selectionButtons, "selectionButtons");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        this.required = z;
        this.selectionButtons = selectionButtons;
        this.title = title;
        this.description = str;
        this.skipButtonText = str2;
        this.toggles = toggles;
    }
}
