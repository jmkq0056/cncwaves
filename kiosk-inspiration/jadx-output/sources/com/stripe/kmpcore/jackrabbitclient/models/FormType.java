package com.stripe.kmpcore.jackrabbitclient.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: KmpCollectInputsModels.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/models/FormType;", "", "(Ljava/lang/String;I)V", "SIGNATURE", "SELECTION", "PHONE", "EMAIL", "TEXT", "NUMERIC", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FormType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FormType[] $VALUES;
    public static final FormType SIGNATURE = new FormType("SIGNATURE", 0);
    public static final FormType SELECTION = new FormType("SELECTION", 1);
    public static final FormType PHONE = new FormType("PHONE", 2);
    public static final FormType EMAIL = new FormType("EMAIL", 3);
    public static final FormType TEXT = new FormType("TEXT", 4);
    public static final FormType NUMERIC = new FormType("NUMERIC", 5);

    private static final /* synthetic */ FormType[] $values() {
        return new FormType[]{SIGNATURE, SELECTION, PHONE, EMAIL, TEXT, NUMERIC};
    }

    public static EnumEntries<FormType> getEntries() {
        return $ENTRIES;
    }

    public static FormType valueOf(String str) {
        return (FormType) Enum.valueOf(FormType.class, str);
    }

    public static FormType[] values() {
        return (FormType[]) $VALUES.clone();
    }

    private FormType(String str, int i) {
    }

    static {
        FormType[] formTypeArr$values = $values();
        $VALUES = formTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(formTypeArr$values);
    }
}
