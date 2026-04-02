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
/* JADX INFO: compiled from: RoutingPriority.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "DOMESTIC", "INTERNATIONAL", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class RoutingPriority implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RoutingPriority[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("domestic")
    public static final RoutingPriority DOMESTIC = new RoutingPriority("DOMESTIC", 0);

    @SerialName("international")
    public static final RoutingPriority INTERNATIONAL = new RoutingPriority("INTERNATIONAL", 1);

    private static final /* synthetic */ RoutingPriority[] $values() {
        return new RoutingPriority[]{DOMESTIC, INTERNATIONAL};
    }

    public static EnumEntries<RoutingPriority> getEntries() {
        return $ENTRIES;
    }

    public static RoutingPriority valueOf(String str) {
        return (RoutingPriority) Enum.valueOf(RoutingPriority.class, str);
    }

    public static RoutingPriority[] values() {
        return (RoutingPriority[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: RoutingPriority.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RoutingPriority$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) RoutingPriority.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<RoutingPriority> serializer() {
            return get$cachedSerializer();
        }
    }

    private RoutingPriority(String str, int i) {
    }

    static {
        RoutingPriority[] routingPriorityArr$values = $values();
        $VALUES = routingPriorityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(routingPriorityArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.RoutingPriority.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.RoutingPriority", RoutingPriority.values(), new String[]{"domestic", "international"}, new Annotation[][]{null, null}, null);
            }
        });
    }
}
