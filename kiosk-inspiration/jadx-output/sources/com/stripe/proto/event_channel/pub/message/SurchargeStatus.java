package com.stripe.proto.event_channel.pub.message;

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
import org.apache.http.util.VersionInfo;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: SurchargeStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/SurchargeStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SURCHARGE_STATUS_INVALID", "AVAILABLE", VersionInfo.UNAVAILABLE, "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SurchargeStatus implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SurchargeStatus[] $VALUES;
    public static final ProtoAdapter<SurchargeStatus> ADAPTER;
    public static final SurchargeStatus AVAILABLE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final SurchargeStatus SURCHARGE_STATUS_INVALID;
    public static final SurchargeStatus UNAVAILABLE;
    private final int value;

    private static final /* synthetic */ SurchargeStatus[] $values() {
        return new SurchargeStatus[]{SURCHARGE_STATUS_INVALID, AVAILABLE, UNAVAILABLE};
    }

    @JvmStatic
    public static final SurchargeStatus fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<SurchargeStatus> getEntries() {
        return $ENTRIES;
    }

    public static SurchargeStatus valueOf(String str) {
        return (SurchargeStatus) Enum.valueOf(SurchargeStatus.class, str);
    }

    public static SurchargeStatus[] values() {
        return (SurchargeStatus[]) $VALUES.clone();
    }

    private SurchargeStatus(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final SurchargeStatus surchargeStatus = new SurchargeStatus("SURCHARGE_STATUS_INVALID", 0, 0);
        SURCHARGE_STATUS_INVALID = surchargeStatus;
        AVAILABLE = new SurchargeStatus("AVAILABLE", 1, 1);
        UNAVAILABLE = new SurchargeStatus(VersionInfo.UNAVAILABLE, 2, 2);
        SurchargeStatus[] surchargeStatusArr$values = $values();
        $VALUES = surchargeStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(surchargeStatusArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SurchargeStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<SurchargeStatus>(orCreateKotlinClass, syntax, surchargeStatus) { // from class: com.stripe.proto.event_channel.pub.message.SurchargeStatus$Companion$ADAPTER$1
            {
                SurchargeStatus surchargeStatus2 = surchargeStatus;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public SurchargeStatus fromValue(int value) {
                return SurchargeStatus.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: SurchargeStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/SurchargeStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/SurchargeStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SurchargeStatus fromValue(int value) {
            if (value == 0) {
                return SurchargeStatus.SURCHARGE_STATUS_INVALID;
            }
            if (value == 1) {
                return SurchargeStatus.AVAILABLE;
            }
            if (value != 2) {
                return null;
            }
            return SurchargeStatus.UNAVAILABLE;
        }
    }
}
