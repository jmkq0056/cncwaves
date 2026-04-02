package com.stripe.bbpos.sdk;

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
/* JADX INFO: compiled from: EncryptionMethod.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0013"}, d2 = {"Lcom/stripe/bbpos/sdk/EncryptionMethod;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ENCRYPTION_METHOD_UNKNOWN", "TDES_ECB", "TDES_CBC", "AES_ECB", "AES_CBC", "AES_CMAC", "MAC_ANSI_X9_9", "MAC_ANSI_X9_19", "MAC_METHOD_1", "MAC_METHOD_2", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EncryptionMethod implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EncryptionMethod[] $VALUES;
    public static final ProtoAdapter<EncryptionMethod> ADAPTER;
    public static final EncryptionMethod AES_CBC;
    public static final EncryptionMethod AES_CMAC;
    public static final EncryptionMethod AES_ECB;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final EncryptionMethod ENCRYPTION_METHOD_UNKNOWN;
    public static final EncryptionMethod MAC_ANSI_X9_19;
    public static final EncryptionMethod MAC_ANSI_X9_9;
    public static final EncryptionMethod MAC_METHOD_1;
    public static final EncryptionMethod MAC_METHOD_2;
    public static final EncryptionMethod TDES_CBC;
    public static final EncryptionMethod TDES_ECB;
    private final int value;

    private static final /* synthetic */ EncryptionMethod[] $values() {
        return new EncryptionMethod[]{ENCRYPTION_METHOD_UNKNOWN, TDES_ECB, TDES_CBC, AES_ECB, AES_CBC, AES_CMAC, MAC_ANSI_X9_9, MAC_ANSI_X9_19, MAC_METHOD_1, MAC_METHOD_2};
    }

    @JvmStatic
    public static final EncryptionMethod fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<EncryptionMethod> getEntries() {
        return $ENTRIES;
    }

    public static EncryptionMethod valueOf(String str) {
        return (EncryptionMethod) Enum.valueOf(EncryptionMethod.class, str);
    }

    public static EncryptionMethod[] values() {
        return (EncryptionMethod[]) $VALUES.clone();
    }

    private EncryptionMethod(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final EncryptionMethod encryptionMethod = new EncryptionMethod("ENCRYPTION_METHOD_UNKNOWN", 0, 0);
        ENCRYPTION_METHOD_UNKNOWN = encryptionMethod;
        TDES_ECB = new EncryptionMethod("TDES_ECB", 1, 1);
        TDES_CBC = new EncryptionMethod("TDES_CBC", 2, 2);
        AES_ECB = new EncryptionMethod("AES_ECB", 3, 3);
        AES_CBC = new EncryptionMethod("AES_CBC", 4, 4);
        AES_CMAC = new EncryptionMethod("AES_CMAC", 5, 5);
        MAC_ANSI_X9_9 = new EncryptionMethod("MAC_ANSI_X9_9", 6, 6);
        MAC_ANSI_X9_19 = new EncryptionMethod("MAC_ANSI_X9_19", 7, 7);
        MAC_METHOD_1 = new EncryptionMethod("MAC_METHOD_1", 8, 8);
        MAC_METHOD_2 = new EncryptionMethod("MAC_METHOD_2", 9, 9);
        EncryptionMethod[] encryptionMethodArr$values = $values();
        $VALUES = encryptionMethodArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(encryptionMethodArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EncryptionMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<EncryptionMethod>(orCreateKotlinClass, syntax, encryptionMethod) { // from class: com.stripe.bbpos.sdk.EncryptionMethod$Companion$ADAPTER$1
            {
                EncryptionMethod encryptionMethod2 = encryptionMethod;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public EncryptionMethod fromValue(int value) {
                return EncryptionMethod.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: EncryptionMethod.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/EncryptionMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/EncryptionMethod;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final EncryptionMethod fromValue(int value) {
            switch (value) {
                case 0:
                    return EncryptionMethod.ENCRYPTION_METHOD_UNKNOWN;
                case 1:
                    return EncryptionMethod.TDES_ECB;
                case 2:
                    return EncryptionMethod.TDES_CBC;
                case 3:
                    return EncryptionMethod.AES_ECB;
                case 4:
                    return EncryptionMethod.AES_CBC;
                case 5:
                    return EncryptionMethod.AES_CMAC;
                case 6:
                    return EncryptionMethod.MAC_ANSI_X9_9;
                case 7:
                    return EncryptionMethod.MAC_ANSI_X9_19;
                case 8:
                    return EncryptionMethod.MAC_METHOD_1;
                case 9:
                    return EncryptionMethod.MAC_METHOD_2;
                default:
                    return null;
            }
        }
    }
}
