package com.stripe.core.aidlrpc.registration;

import com.stripe.core.aidlrpc.AidlMethods;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: RegistrationMethods.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/aidlrpc/registration/RegistrationMethods;", "", "Lcom/stripe/core/aidlrpc/AidlMethods;", "(Ljava/lang/String;I)V", "GENERATE_REGISTRATION_CODE", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RegistrationMethods implements AidlMethods {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RegistrationMethods[] $VALUES;
    public static final RegistrationMethods GENERATE_REGISTRATION_CODE = new RegistrationMethods("GENERATE_REGISTRATION_CODE", 0);

    private static final /* synthetic */ RegistrationMethods[] $values() {
        return new RegistrationMethods[]{GENERATE_REGISTRATION_CODE};
    }

    public static EnumEntries<RegistrationMethods> getEntries() {
        return $ENTRIES;
    }

    public static RegistrationMethods valueOf(String str) {
        return (RegistrationMethods) Enum.valueOf(RegistrationMethods.class, str);
    }

    public static RegistrationMethods[] values() {
        return (RegistrationMethods[]) $VALUES.clone();
    }

    private RegistrationMethods(String str, int i) {
    }

    static {
        RegistrationMethods[] registrationMethodsArr$values = $values();
        $VALUES = registrationMethodsArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(registrationMethodsArr$values);
    }
}
