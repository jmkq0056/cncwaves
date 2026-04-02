package com.stripe.hardware.magstripe;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: MagStripePaymentCollectionAuthority.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;", "", "(Ljava/lang/String;I)V", "NON_ICC", "TECHNICAL_FALLBACK", "EMPTY_CANDIDATE_LIST_FALLBACK", "PASSTHROUGH", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MagStripePaymentCollectionAuthority {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MagStripePaymentCollectionAuthority[] $VALUES;
    public static final MagStripePaymentCollectionAuthority NON_ICC = new MagStripePaymentCollectionAuthority("NON_ICC", 0);
    public static final MagStripePaymentCollectionAuthority TECHNICAL_FALLBACK = new MagStripePaymentCollectionAuthority("TECHNICAL_FALLBACK", 1);
    public static final MagStripePaymentCollectionAuthority EMPTY_CANDIDATE_LIST_FALLBACK = new MagStripePaymentCollectionAuthority("EMPTY_CANDIDATE_LIST_FALLBACK", 2);
    public static final MagStripePaymentCollectionAuthority PASSTHROUGH = new MagStripePaymentCollectionAuthority("PASSTHROUGH", 3);

    private static final /* synthetic */ MagStripePaymentCollectionAuthority[] $values() {
        return new MagStripePaymentCollectionAuthority[]{NON_ICC, TECHNICAL_FALLBACK, EMPTY_CANDIDATE_LIST_FALLBACK, PASSTHROUGH};
    }

    public static EnumEntries<MagStripePaymentCollectionAuthority> getEntries() {
        return $ENTRIES;
    }

    public static MagStripePaymentCollectionAuthority valueOf(String str) {
        return (MagStripePaymentCollectionAuthority) Enum.valueOf(MagStripePaymentCollectionAuthority.class, str);
    }

    public static MagStripePaymentCollectionAuthority[] values() {
        return (MagStripePaymentCollectionAuthority[]) $VALUES.clone();
    }

    private MagStripePaymentCollectionAuthority(String str, int i) {
    }

    static {
        MagStripePaymentCollectionAuthority[] magStripePaymentCollectionAuthorityArr$values = $values();
        $VALUES = magStripePaymentCollectionAuthorityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(magStripePaymentCollectionAuthorityArr$values);
    }
}
