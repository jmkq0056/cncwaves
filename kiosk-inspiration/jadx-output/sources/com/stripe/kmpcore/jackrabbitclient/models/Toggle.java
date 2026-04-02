package com.stripe.kmpcore.jackrabbitclient.models;

import io.ktor.http.LinkHeader;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J+\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "", LinkHeader.Parameters.Title, "", "description", "defaultValue", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;)V", "getDefaultValue", "()Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;", "getDescription", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Toggle {
    private final ToggleValue defaultValue;
    private final String description;
    private final String title;

    public static /* synthetic */ Toggle copy$default(Toggle toggle, String str, String str2, ToggleValue toggleValue, int i, Object obj) {
        if ((i & 1) != 0) {
            str = toggle.title;
        }
        if ((i & 2) != 0) {
            str2 = toggle.description;
        }
        if ((i & 4) != 0) {
            toggleValue = toggle.defaultValue;
        }
        return toggle.copy(str, str2, toggleValue);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ToggleValue getDefaultValue() {
        return this.defaultValue;
    }

    public final Toggle copy(String title, String description, ToggleValue defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return new Toggle(title, description, defaultValue);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Toggle)) {
            return false;
        }
        Toggle toggle = (Toggle) other;
        return Intrinsics.areEqual(this.title, toggle.title) && Intrinsics.areEqual(this.description, toggle.description) && this.defaultValue == toggle.defaultValue;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.defaultValue.hashCode();
    }

    public String toString() {
        return "Toggle(title=" + this.title + ", description=" + this.description + ", defaultValue=" + this.defaultValue + ')';
    }

    public Toggle(String str, String str2, ToggleValue defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.title = str;
        this.description = str2;
        this.defaultValue = defaultValue;
    }

    public /* synthetic */ Toggle(String str, String str2, ToggleValue toggleValue, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, toggleValue);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ToggleValue getDefaultValue() {
        return this.defaultValue;
    }
}
