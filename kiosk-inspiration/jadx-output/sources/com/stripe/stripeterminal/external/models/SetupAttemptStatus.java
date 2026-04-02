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
/* JADX INFO: compiled from: SetupAttemptStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "(Ljava/lang/String;I)V", "REQUIRES_CONFIRMATION", "REQUIRES_ACTION", "PROCESSING", "SUCCEEDED", "FAILED", "ABANDONED", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class SetupAttemptStatus implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SetupAttemptStatus[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName("requires_confirmation")
    public static final SetupAttemptStatus REQUIRES_CONFIRMATION = new SetupAttemptStatus("REQUIRES_CONFIRMATION", 0);

    @SerialName("requires_action")
    public static final SetupAttemptStatus REQUIRES_ACTION = new SetupAttemptStatus("REQUIRES_ACTION", 1);

    @SerialName("processing")
    public static final SetupAttemptStatus PROCESSING = new SetupAttemptStatus("PROCESSING", 2);

    @SerialName("succeeded")
    public static final SetupAttemptStatus SUCCEEDED = new SetupAttemptStatus("SUCCEEDED", 3);

    @SerialName("failed")
    public static final SetupAttemptStatus FAILED = new SetupAttemptStatus("FAILED", 4);

    @SerialName("abandoned")
    public static final SetupAttemptStatus ABANDONED = new SetupAttemptStatus("ABANDONED", 5);

    private static final /* synthetic */ SetupAttemptStatus[] $values() {
        return new SetupAttemptStatus[]{REQUIRES_CONFIRMATION, REQUIRES_ACTION, PROCESSING, SUCCEEDED, FAILED, ABANDONED};
    }

    public static EnumEntries<SetupAttemptStatus> getEntries() {
        return $ENTRIES;
    }

    public static SetupAttemptStatus valueOf(String str) {
        return (SetupAttemptStatus) Enum.valueOf(SetupAttemptStatus.class, str);
    }

    public static SetupAttemptStatus[] values() {
        return (SetupAttemptStatus[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: SetupAttemptStatus.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) SetupAttemptStatus.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<SetupAttemptStatus> serializer() {
            return get$cachedSerializer();
        }
    }

    private SetupAttemptStatus(String str, int i) {
    }

    static {
        SetupAttemptStatus[] setupAttemptStatusArr$values = $values();
        $VALUES = setupAttemptStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(setupAttemptStatusArr$values);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.SetupAttemptStatus.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return EnumsKt.createAnnotatedEnumSerializer("com.stripe.stripeterminal.external.models.SetupAttemptStatus", SetupAttemptStatus.values(), new String[]{"requires_confirmation", "requires_action", "processing", "succeeded", "failed", "abandoned"}, new Annotation[][]{null, null, null, null, null, null}, null);
            }
        });
    }
}
