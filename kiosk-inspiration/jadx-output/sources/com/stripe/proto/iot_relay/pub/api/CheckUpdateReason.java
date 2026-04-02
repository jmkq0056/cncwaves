package com.stripe.proto.iot_relay.pub.api;

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
/* JADX INFO: compiled from: CheckUpdateReason.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHECK_UPDATE_REASON_INVALID", "MACHINE_DRIVEN_REGISTRATION_SUCCESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckUpdateReason implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CheckUpdateReason[] $VALUES;
    public static final ProtoAdapter<CheckUpdateReason> ADAPTER;
    public static final CheckUpdateReason CHECK_UPDATE_REASON_INVALID;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final CheckUpdateReason MACHINE_DRIVEN_REGISTRATION_SUCCESS;
    private final int value;

    private static final /* synthetic */ CheckUpdateReason[] $values() {
        return new CheckUpdateReason[]{CHECK_UPDATE_REASON_INVALID, MACHINE_DRIVEN_REGISTRATION_SUCCESS};
    }

    @JvmStatic
    public static final CheckUpdateReason fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<CheckUpdateReason> getEntries() {
        return $ENTRIES;
    }

    public static CheckUpdateReason valueOf(String str) {
        return (CheckUpdateReason) Enum.valueOf(CheckUpdateReason.class, str);
    }

    public static CheckUpdateReason[] values() {
        return (CheckUpdateReason[]) $VALUES.clone();
    }

    private CheckUpdateReason(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final CheckUpdateReason checkUpdateReason = new CheckUpdateReason("CHECK_UPDATE_REASON_INVALID", 0, 0);
        CHECK_UPDATE_REASON_INVALID = checkUpdateReason;
        MACHINE_DRIVEN_REGISTRATION_SUCCESS = new CheckUpdateReason("MACHINE_DRIVEN_REGISTRATION_SUCCESS", 1, 1);
        CheckUpdateReason[] checkUpdateReasonArr$values = $values();
        $VALUES = checkUpdateReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(checkUpdateReasonArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckUpdateReason.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<CheckUpdateReason>(orCreateKotlinClass, syntax, checkUpdateReason) { // from class: com.stripe.proto.iot_relay.pub.api.CheckUpdateReason$Companion$ADAPTER$1
            {
                CheckUpdateReason checkUpdateReason2 = checkUpdateReason;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public CheckUpdateReason fromValue(int value) {
                return CheckUpdateReason.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: CheckUpdateReason.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CheckUpdateReason fromValue(int value) {
            if (value == 0) {
                return CheckUpdateReason.CHECK_UPDATE_REASON_INVALID;
            }
            if (value != 1) {
                return null;
            }
            return CheckUpdateReason.MACHINE_DRIVEN_REGISTRATION_SUCCESS;
        }
    }
}
