package com.stripe.kmpcore.jackrabbitclient.models;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001Bm\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010R\u0016\u0010\n\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\t\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0016\u0010\f\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\r\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d\u0082\u0001\u0006\u001e\u001f !\"#¨\u0006$"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/CollectInputsSingleResult;", "", "skipped", "", "toggles", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;", "numericString", "", "phone", "email", "selection", "signatureSvg", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "formType", "Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;", "(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;)V", "getEmail", "()Ljava/lang/String;", "getFormType", "()Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;", "getNumericString", "getPhone", "getSelection", "getSignatureSvg", "getSkipped", "()Z", "getText", "getToggles", "()Ljava/util/List;", "Lcom/stripe/kmpcore/jackrabbitclient/models/EmailResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/NumericResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/PhoneResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/SignatureResult;", "Lcom/stripe/kmpcore/jackrabbitclient/models/TextResult;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class CollectInputsSingleResult {
    private final String email;
    private final FormType formType;
    private final String numericString;
    private final String phone;
    private final String selection;
    private final String signatureSvg;
    private final boolean skipped;
    private final String text;
    private final List<ToggleResult> toggles;

    public /* synthetic */ CollectInputsSingleResult(boolean z, List list, String str, String str2, String str3, String str4, String str5, String str6, FormType formType, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, list, str, str2, str3, str4, str5, str6, formType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private CollectInputsSingleResult(boolean z, List<? extends ToggleResult> list, String str, String str2, String str3, String str4, String str5, String str6, FormType formType) {
        this.skipped = z;
        this.toggles = list;
        this.numericString = str;
        this.phone = str2;
        this.email = str3;
        this.selection = str4;
        this.signatureSvg = str5;
        this.text = str6;
        this.formType = formType;
    }

    public /* synthetic */ CollectInputsSingleResult(boolean z, List list, String str, String str2, String str3, String str4, String str5, String str6, FormType formType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, list, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, formType, null);
    }

    public boolean getSkipped() {
        return this.skipped;
    }

    public List<ToggleResult> getToggles() {
        return this.toggles;
    }

    public String getNumericString() {
        return this.numericString;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getEmail() {
        return this.email;
    }

    public String getSelection() {
        return this.selection;
    }

    public String getSignatureSvg() {
        return this.signatureSvg;
    }

    public String getText() {
        return this.text;
    }

    public final FormType getFormType() {
        return this.formType;
    }
}
