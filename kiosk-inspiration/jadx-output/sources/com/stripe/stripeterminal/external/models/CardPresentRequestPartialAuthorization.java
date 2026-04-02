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
/* JADX INFO: compiled from: CardPresentRequestPartialAuthorization.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "typeName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTypeName", "()Ljava/lang/String;", "IF_AVAILABLE", "NEVER", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class CardPresentRequestPartialAuthorization implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CardPresentRequestPartialAuthorization[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("if_available")
    public static final CardPresentRequestPartialAuthorization IF_AVAILABLE = new CardPresentRequestPartialAuthorization("IF_AVAILABLE", 0, "if_available");

    @SerialName("never")
    public static final CardPresentRequestPartialAuthorization NEVER = new CardPresentRequestPartialAuthorization("NEVER", 1, "never");
    private final String typeName;

    private static final /* synthetic */ CardPresentRequestPartialAuthorization[] $values() {
        return new CardPresentRequestPartialAuthorization[]{IF_AVAILABLE, NEVER};
    }

    public static EnumEntries<CardPresentRequestPartialAuthorization> getEntries() {
        return $ENTRIES;
    }

    public static CardPresentRequestPartialAuthorization valueOf(String str) {
        return (CardPresentRequestPartialAuthorization) Enum.valueOf(CardPresentRequestPartialAuthorization.class, str);
    }

    public static CardPresentRequestPartialAuthorization[] values() {
        return (CardPresentRequestPartialAuthorization[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: CardPresentRequestPartialAuthorization.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) CardPresentRequestPartialAuthorization.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<CardPresentRequestPartialAuthorization> serializer() {
            return get$cachedSerializer();
        }
    }

    private CardPresentRequestPartialAuthorization(String str, int i, String str2) {
        this.typeName = str2;
    }

    public final String getTypeName() {
        return this.typeName;
    }

    static {
        CardPresentRequestPartialAuthorization[] cardPresentRequestPartialAuthorizationArr$values = $values();
        $VALUES = cardPresentRequestPartialAuthorizationArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(cardPresentRequestPartialAuthorizationArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.CardPresentRequestPartialAuthorization.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.CardPresentRequestPartialAuthorization", CardPresentRequestPartialAuthorization.values(), new String[]{"if_available", "never"}, new Annotation[][]{null, null}, null);
            }
        });
    }
}
