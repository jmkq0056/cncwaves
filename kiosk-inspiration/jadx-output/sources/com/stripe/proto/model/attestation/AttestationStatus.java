package com.stripe.proto.model.attestation;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: AttestationStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ATTESTED", "attested", "ATTESTATION_REQUIRED", "attestation_required", "BIND_REQUIRED", "bind_required", "FAILED_ATTESTATION", "failed_attestation", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationStatus implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AttestationStatus[] $VALUES;
    public static final ProtoAdapter<AttestationStatus> ADAPTER;
    public static final AttestationStatus ATTESTATION_REQUIRED;
    public static final AttestationStatus ATTESTED;
    public static final AttestationStatus BIND_REQUIRED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AttestationStatus FAILED_ATTESTATION;
    public static final AttestationStatus attestation_required;
    public static final AttestationStatus attested;
    public static final AttestationStatus bind_required;
    public static final AttestationStatus failed_attestation;
    private final int value;

    private static final /* synthetic */ AttestationStatus[] $values() {
        return new AttestationStatus[]{ATTESTED, attested, ATTESTATION_REQUIRED, attestation_required, BIND_REQUIRED, bind_required, FAILED_ATTESTATION, failed_attestation};
    }

    @JvmStatic
    public static final AttestationStatus fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<AttestationStatus> getEntries() {
        return $ENTRIES;
    }

    public static AttestationStatus valueOf(String str) {
        return (AttestationStatus) Enum.valueOf(AttestationStatus.class, str);
    }

    public static AttestationStatus[] values() {
        return (AttestationStatus[]) $VALUES.clone();
    }

    private AttestationStatus(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final AttestationStatus attestationStatus = new AttestationStatus("ATTESTED", 0, 0);
        ATTESTED = attestationStatus;
        attested = new AttestationStatus("attested", 1, 0);
        ATTESTATION_REQUIRED = new AttestationStatus("ATTESTATION_REQUIRED", 2, 1);
        attestation_required = new AttestationStatus("attestation_required", 3, 1);
        BIND_REQUIRED = new AttestationStatus("BIND_REQUIRED", 4, 2);
        bind_required = new AttestationStatus("bind_required", 5, 2);
        FAILED_ATTESTATION = new AttestationStatus("FAILED_ATTESTATION", 6, 3);
        failed_attestation = new AttestationStatus("failed_attestation", 7, 3);
        AttestationStatus[] attestationStatusArr$values = $values();
        $VALUES = attestationStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(attestationStatusArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AttestationStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<AttestationStatus>(orCreateKotlinClass, syntax, attestationStatus) { // from class: com.stripe.proto.model.attestation.AttestationStatus$Companion$ADAPTER$1
            {
                AttestationStatus attestationStatus2 = attestationStatus;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public AttestationStatus fromValue(int value) {
                return AttestationStatus.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: AttestationStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/AttestationStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AttestationStatus fromValue(int value) {
            if (value == 0) {
                return AttestationStatus.ATTESTED;
            }
            if (value == 1) {
                return AttestationStatus.ATTESTATION_REQUIRED;
            }
            if (value == 2) {
                return AttestationStatus.BIND_REQUIRED;
            }
            if (value != 3) {
                return null;
            }
            return AttestationStatus.FAILED_ATTESTATION;
        }
    }
}
