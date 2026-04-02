package com.stripe.stripeterminal.external.models;

import com.google.firebase.ktx.BuildConfig;
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
/* JADX INFO: compiled from: AllowRedisplay.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ALWAYS", "LIMITED", "UNSPECIFIED", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class AllowRedisplay {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AllowRedisplay[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final String value;

    @SerialName("always")
    public static final AllowRedisplay ALWAYS = new AllowRedisplay("ALWAYS", 0, "always");

    @SerialName("limited")
    public static final AllowRedisplay LIMITED = new AllowRedisplay("LIMITED", 1, "limited");

    @SerialName(BuildConfig.VERSION_NAME)
    public static final AllowRedisplay UNSPECIFIED = new AllowRedisplay("UNSPECIFIED", 2, BuildConfig.VERSION_NAME);

    private static final /* synthetic */ AllowRedisplay[] $values() {
        return new AllowRedisplay[]{ALWAYS, LIMITED, UNSPECIFIED};
    }

    public static EnumEntries<AllowRedisplay> getEntries() {
        return $ENTRIES;
    }

    public static AllowRedisplay valueOf(String str) {
        return (AllowRedisplay) Enum.valueOf(AllowRedisplay.class, str);
    }

    public static AllowRedisplay[] values() {
        return (AllowRedisplay[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: AllowRedisplay.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/AllowRedisplay$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) AllowRedisplay.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<AllowRedisplay> serializer() {
            return get$cachedSerializer();
        }
    }

    private AllowRedisplay(String str, int i, String str2) {
        this.value = str2;
    }

    public final String getValue() {
        return this.value;
    }

    static {
        AllowRedisplay[] allowRedisplayArr$values = $values();
        $VALUES = allowRedisplayArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(allowRedisplayArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.AllowRedisplay.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.AllowRedisplay", AllowRedisplay.values(), new String[]{"always", "limited", BuildConfig.VERSION_NAME}, new Annotation[][]{null, null, null}, null);
            }
        });
    }
}
