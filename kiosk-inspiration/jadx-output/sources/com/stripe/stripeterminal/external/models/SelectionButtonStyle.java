package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SelectionButtonStyle.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;", "", "(Ljava/lang/String;I)V", "PRIMARY", "SECONDARY", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SelectionButtonStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionButtonStyle[] $VALUES;
    public static final SelectionButtonStyle PRIMARY = new SelectionButtonStyle("PRIMARY", 0);
    public static final SelectionButtonStyle SECONDARY = new SelectionButtonStyle("SECONDARY", 1);

    private static final /* synthetic */ SelectionButtonStyle[] $values() {
        return new SelectionButtonStyle[]{PRIMARY, SECONDARY};
    }

    public static EnumEntries<SelectionButtonStyle> getEntries() {
        return $ENTRIES;
    }

    public static SelectionButtonStyle valueOf(String str) {
        return (SelectionButtonStyle) Enum.valueOf(SelectionButtonStyle.class, str);
    }

    public static SelectionButtonStyle[] values() {
        return (SelectionButtonStyle[]) $VALUES.clone();
    }

    private SelectionButtonStyle(String str, int i) {
    }

    static {
        SelectionButtonStyle[] selectionButtonStyleArr$values = $values();
        $VALUES = selectionButtonStyleArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(selectionButtonStyleArr$values);
    }
}
