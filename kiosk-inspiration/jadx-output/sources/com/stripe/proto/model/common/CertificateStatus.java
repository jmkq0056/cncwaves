package com.stripe.proto.model.common;

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
/* JADX INFO: compiled from: CertificateStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/CertificateStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VALID", "NEEDS_RENEWAL", "NEEDS_KEY_ROLLOVER", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CertificateStatus implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CertificateStatus[] $VALUES;
    public static final ProtoAdapter<CertificateStatus> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CertificateStatus NEEDS_KEY_ROLLOVER;
    public static final CertificateStatus NEEDS_RENEWAL;
    public static final CertificateStatus VALID;
    private final int value;

    private static final /* synthetic */ CertificateStatus[] $values() {
        return new CertificateStatus[]{VALID, NEEDS_RENEWAL, NEEDS_KEY_ROLLOVER};
    }

    @JvmStatic
    public static final CertificateStatus fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<CertificateStatus> getEntries() {
        return $ENTRIES;
    }

    public static CertificateStatus valueOf(String str) {
        return (CertificateStatus) Enum.valueOf(CertificateStatus.class, str);
    }

    public static CertificateStatus[] values() {
        return (CertificateStatus[]) $VALUES.clone();
    }

    private CertificateStatus(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final CertificateStatus certificateStatus = new CertificateStatus("VALID", 0, 0);
        VALID = certificateStatus;
        NEEDS_RENEWAL = new CertificateStatus("NEEDS_RENEWAL", 1, 1);
        NEEDS_KEY_ROLLOVER = new CertificateStatus("NEEDS_KEY_ROLLOVER", 2, 2);
        CertificateStatus[] certificateStatusArr$values = $values();
        $VALUES = certificateStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(certificateStatusArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CertificateStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<CertificateStatus>(orCreateKotlinClass, syntax, certificateStatus) { // from class: com.stripe.proto.model.common.CertificateStatus$Companion$ADAPTER$1
            {
                CertificateStatus certificateStatus2 = certificateStatus;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public CertificateStatus fromValue(int value) {
                return CertificateStatus.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: CertificateStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/CertificateStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/CertificateStatus;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CertificateStatus fromValue(int value) {
            if (value == 0) {
                return CertificateStatus.VALID;
            }
            if (value == 1) {
                return CertificateStatus.NEEDS_RENEWAL;
            }
            if (value != 2) {
                return null;
            }
            return CertificateStatus.NEEDS_KEY_ROLLOVER;
        }
    }
}
