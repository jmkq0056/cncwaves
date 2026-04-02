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
/* JADX INFO: compiled from: Request3dSecureType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Request3dSecureType;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "AUTOMATIC", "ANY", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class Request3dSecureType implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Request3dSecureType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("automatic")
    public static final Request3dSecureType AUTOMATIC = new Request3dSecureType("AUTOMATIC", 0);

    @SerialName("any")
    public static final Request3dSecureType ANY = new Request3dSecureType("ANY", 1);

    private static final /* synthetic */ Request3dSecureType[] $values() {
        return new Request3dSecureType[]{AUTOMATIC, ANY};
    }

    public static EnumEntries<Request3dSecureType> getEntries() {
        return $ENTRIES;
    }

    public static Request3dSecureType valueOf(String str) {
        return (Request3dSecureType) Enum.valueOf(Request3dSecureType.class, str);
    }

    public static Request3dSecureType[] values() {
        return (Request3dSecureType[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: Request3dSecureType.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Request3dSecureType$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Request3dSecureType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) Request3dSecureType.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Request3dSecureType> serializer() {
            return get$cachedSerializer();
        }
    }

    private Request3dSecureType(String str, int i) {
    }

    static {
        Request3dSecureType[] request3dSecureTypeArr$values = $values();
        $VALUES = request3dSecureTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(request3dSecureTypeArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.Request3dSecureType.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.Request3dSecureType", Request3dSecureType.values(), new String[]{"automatic", "any"}, new Annotation[][]{null, null}, null);
            }
        });
    }
}
