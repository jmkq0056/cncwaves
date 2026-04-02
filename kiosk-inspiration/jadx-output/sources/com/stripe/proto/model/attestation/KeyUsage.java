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
/* JADX INFO: compiled from: KeyUsage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/attestation/KeyUsage;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "attestation_data_key", "ATTESTATION_DATA_KEY", "pan_encryption_key", "PAN_ENCRYPTION_KEY", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KeyUsage implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KeyUsage[] $VALUES;
    public static final ProtoAdapter<KeyUsage> ADAPTER;
    public static final KeyUsage ATTESTATION_DATA_KEY;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final KeyUsage PAN_ENCRYPTION_KEY;
    public static final KeyUsage attestation_data_key;
    public static final KeyUsage pan_encryption_key;
    private final int value;

    private static final /* synthetic */ KeyUsage[] $values() {
        return new KeyUsage[]{attestation_data_key, ATTESTATION_DATA_KEY, pan_encryption_key, PAN_ENCRYPTION_KEY};
    }

    @JvmStatic
    public static final KeyUsage fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<KeyUsage> getEntries() {
        return $ENTRIES;
    }

    public static KeyUsage valueOf(String str) {
        return (KeyUsage) Enum.valueOf(KeyUsage.class, str);
    }

    public static KeyUsage[] values() {
        return (KeyUsage[]) $VALUES.clone();
    }

    private KeyUsage(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final KeyUsage keyUsage = new KeyUsage("attestation_data_key", 0, 0);
        attestation_data_key = keyUsage;
        ATTESTATION_DATA_KEY = new KeyUsage("ATTESTATION_DATA_KEY", 1, 0);
        pan_encryption_key = new KeyUsage("pan_encryption_key", 2, 1);
        PAN_ENCRYPTION_KEY = new KeyUsage("PAN_ENCRYPTION_KEY", 3, 1);
        KeyUsage[] keyUsageArr$values = $values();
        $VALUES = keyUsageArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(keyUsageArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyUsage.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<KeyUsage>(orCreateKotlinClass, syntax, keyUsage) { // from class: com.stripe.proto.model.attestation.KeyUsage$Companion$ADAPTER$1
            {
                KeyUsage keyUsage2 = keyUsage;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public KeyUsage fromValue(int value) {
                return KeyUsage.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: KeyUsage.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/attestation/KeyUsage$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/attestation/KeyUsage;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final KeyUsage fromValue(int value) {
            if (value == 0) {
                return KeyUsage.attestation_data_key;
            }
            if (value != 1) {
                return null;
            }
            return KeyUsage.pan_encryption_key;
        }
    }
}
