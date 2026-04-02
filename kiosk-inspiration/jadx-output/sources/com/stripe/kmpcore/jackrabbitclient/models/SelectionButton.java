package com.stripe.kmpcore.jackrabbitclient.models;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;", "", "style", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "", "(Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;Ljava/lang/String;)V", "getStyle", "()Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;", "getText", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SelectionButton {
    private final SelectionButtonStyle style;
    private final String text;

    public static /* synthetic */ SelectionButton copy$default(SelectionButton selectionButton, SelectionButtonStyle selectionButtonStyle, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            selectionButtonStyle = selectionButton.style;
        }
        if ((i & 2) != 0) {
            str = selectionButton.text;
        }
        return selectionButton.copy(selectionButtonStyle, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final SelectionButtonStyle getStyle() {
        return this.style;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getText() {
        return this.text;
    }

    public final SelectionButton copy(SelectionButtonStyle style, String text) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        return new SelectionButton(style, text);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SelectionButton)) {
            return false;
        }
        SelectionButton selectionButton = (SelectionButton) other;
        return this.style == selectionButton.style && Intrinsics.areEqual(this.text, selectionButton.text);
    }

    public int hashCode() {
        return (this.style.hashCode() * 31) + this.text.hashCode();
    }

    public String toString() {
        return "SelectionButton(style=" + this.style + ", text=" + this.text + ')';
    }

    public SelectionButton(SelectionButtonStyle style, String text) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        this.style = style;
        this.text = text;
    }

    public final SelectionButtonStyle getStyle() {
        return this.style;
    }

    public final String getText() {
        return this.text;
    }
}
