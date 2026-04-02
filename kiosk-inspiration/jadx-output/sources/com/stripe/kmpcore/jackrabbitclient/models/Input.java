package com.stripe.kmpcore.jackrabbitclient.models;

import io.ktor.http.LinkHeader;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001B]\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\t\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018\u0082\u0001\u0006\u001d\u001e\u001f !\"¨\u0006#"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/Input;", "", "required", "", LinkHeader.Parameters.Title, "", "description", "skipButtonText", "toggles", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "submitButtonText", "selectionButtons", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;", "formType", "Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;)V", "getDescription", "()Ljava/lang/String;", "getFormType", "()Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;", "getRequired", "()Z", "getSelectionButtons", "()Ljava/util/List;", "getSkipButtonText", "getSubmitButtonText", "getTitle", "getToggles", "Lcom/stripe/kmpcore/jackrabbitclient/models/EmailInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/NumericInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureInput;", "Lcom/stripe/kmpcore/jackrabbitclient/models/TextInput;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Input {
    private final String description;
    private final FormType formType;
    private final boolean required;
    private final List<SelectionButton> selectionButtons;
    private final String skipButtonText;
    private final String submitButtonText;
    private final String title;
    private final List<Toggle> toggles;

    public /* synthetic */ Input(boolean z, String str, String str2, String str3, List list, String str4, List list2, FormType formType, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, str, str2, str3, list, str4, list2, formType);
    }

    private Input(boolean z, String str, String str2, String str3, List<Toggle> list, String str4, List<SelectionButton> list2, FormType formType) {
        this.required = z;
        this.title = str;
        this.description = str2;
        this.skipButtonText = str3;
        this.toggles = list;
        this.submitButtonText = str4;
        this.selectionButtons = list2;
        this.formType = formType;
    }

    public boolean getRequired() {
        return this.required;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public String getSkipButtonText() {
        return this.skipButtonText;
    }

    public List<Toggle> getToggles() {
        return this.toggles;
    }

    public String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public /* synthetic */ Input(boolean z, String str, String str2, String str3, List list, String str4, List list2, FormType formType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, str, str2, str3, list, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? CollectionsKt.emptyList() : list2, formType, null);
    }

    public List<SelectionButton> getSelectionButtons() {
        return this.selectionButtons;
    }

    public final FormType getFormType() {
        return this.formType;
    }
}
