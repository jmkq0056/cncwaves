package com.stripe.stripeterminal.internal.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.emv.TlvMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerialName;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ReadMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/ReadMethod;", "", "entryMode", "", FirebaseAnalytics.Param.METHOD, "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "CONTACT_EMV", "CONTACTLESS_EMV", "MAGNETIC_STRIPE_FALLBACK", "MAGNETIC_STRIPE_TRACK_2", "CONTACTLESS_MAGSTRIPE_MODE", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadMethod {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReadMethod[] $VALUES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final String entryMode;
    private final String method;

    @SerialName("contact_emv")
    public static final ReadMethod CONTACT_EMV = new ReadMethod("CONTACT_EMV", 0, TlvMap.ENTRY_MODE_CONTACT, "contact_emv");

    @SerialName("contactless_emv")
    public static final ReadMethod CONTACTLESS_EMV = new ReadMethod("CONTACTLESS_EMV", 1, TlvMap.ENTRY_MODE_CONTACTLESS, "contactless_emv");

    @SerialName("magnetic_stripe_fallback")
    public static final ReadMethod MAGNETIC_STRIPE_FALLBACK = new ReadMethod("MAGNETIC_STRIPE_FALLBACK", 2, "80", "magnetic_stripe_fallback");

    @SerialName("magnetic_stripe_track2")
    public static final ReadMethod MAGNETIC_STRIPE_TRACK_2 = new ReadMethod("MAGNETIC_STRIPE_TRACK_2", 3, "90", "magnetic_stripe_track2");

    @SerialName("contactless_magstripe_mode")
    public static final ReadMethod CONTACTLESS_MAGSTRIPE_MODE = new ReadMethod("CONTACTLESS_MAGSTRIPE_MODE", 4, "91", "contactless_magstripe_mode");

    private static final /* synthetic */ ReadMethod[] $values() {
        return new ReadMethod[]{CONTACT_EMV, CONTACTLESS_EMV, MAGNETIC_STRIPE_FALLBACK, MAGNETIC_STRIPE_TRACK_2, CONTACTLESS_MAGSTRIPE_MODE};
    }

    public static EnumEntries<ReadMethod> getEntries() {
        return $ENTRIES;
    }

    public static ReadMethod valueOf(String str) {
        return (ReadMethod) Enum.valueOf(ReadMethod.class, str);
    }

    public static ReadMethod[] values() {
        return (ReadMethod[]) $VALUES.clone();
    }

    private ReadMethod(String str, int i, String str2, String str3) {
        this.entryMode = str2;
        this.method = str3;
    }

    public final String getMethod() {
        return this.method;
    }

    static {
        ReadMethod[] readMethodArr$values = $values();
        $VALUES = readMethodArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(readMethodArr$values);
        INSTANCE = new Companion(null);
    }

    /* JADX INFO: compiled from: ReadMethod.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;", "", "()V", "fromPosEntryMode", "Lcom/stripe/stripeterminal/internal/models/ReadMethod;", "entryMode", "", "fromPosEntryMode$public_release", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReadMethod fromPosEntryMode$public_release(String entryMode) {
            ReadMethod next;
            Intrinsics.checkNotNullParameter(entryMode, "entryMode");
            Iterator<ReadMethod> it = ReadMethod.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (StringsKt.equals(next.entryMode, entryMode, true)) {
                    break;
                }
            }
            return next;
        }
    }
}
