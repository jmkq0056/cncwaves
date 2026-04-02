package com.stripe.stripeterminal.external.models;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SetupIntentCancellationReason.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "DUPLICATE", "REQUESTED_BY_CUSTOMER", "ABANDONED", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class SetupIntentCancellationReason implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SetupIntentCancellationReason[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("duplicate")
    public static final SetupIntentCancellationReason DUPLICATE = new SetupIntentCancellationReason("DUPLICATE", 0);

    @SerialName("requested_by_customer")
    public static final SetupIntentCancellationReason REQUESTED_BY_CUSTOMER = new SetupIntentCancellationReason("REQUESTED_BY_CUSTOMER", 1);

    @SerialName("abandoned")
    public static final SetupIntentCancellationReason ABANDONED = new SetupIntentCancellationReason("ABANDONED", 2);

    private static final /* synthetic */ SetupIntentCancellationReason[] $values() {
        return new SetupIntentCancellationReason[]{DUPLICATE, REQUESTED_BY_CUSTOMER, ABANDONED};
    }

    public static EnumEntries<SetupIntentCancellationReason> getEntries() {
        return $ENTRIES;
    }

    public static SetupIntentCancellationReason valueOf(String str) {
        return (SetupIntentCancellationReason) Enum.valueOf(SetupIntentCancellationReason.class, str);
    }

    public static SetupIntentCancellationReason[] values() {
        return (SetupIntentCancellationReason[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: SetupIntentCancellationReason.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) SetupIntentCancellationReason.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<SetupIntentCancellationReason> serializer() {
            return get$cachedSerializer();
        }
    }

    private SetupIntentCancellationReason(String str, int i) {
    }

    static {
        SetupIntentCancellationReason[] setupIntentCancellationReasonArr$values = $values();
        $VALUES = setupIntentCancellationReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(setupIntentCancellationReasonArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.SetupIntentCancellationReason.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.SetupIntentCancellationReason", SetupIntentCancellationReason.values(), new String[]{"duplicate", "requested_by_customer", "abandoned"}, new Annotation[][]{null, null, null}, null);
            }
        });
    }
}
