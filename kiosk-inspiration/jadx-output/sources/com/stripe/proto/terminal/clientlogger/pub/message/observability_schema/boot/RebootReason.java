package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot;

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
/* JADX INFO: compiled from: RebootReason.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REBOOT_REASON_INVALID", "REBOOT_REASON_ADB", "REBOOT_REASON_HARDWARE", "REBOOT_REASON_FACTORY_RESET", "REBOOT_REASON_POWER_OFF_FROM_POWER_MENU", "REBOOT_REASON_RESTART_FROM_POWER_MENU", "REBOOT_REASON_PCI", "REBOOT_REASON_ROM_UPDATE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RebootReason implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RebootReason[] $VALUES;
    public static final ProtoAdapter<RebootReason> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final RebootReason REBOOT_REASON_ADB;
    public static final RebootReason REBOOT_REASON_FACTORY_RESET;
    public static final RebootReason REBOOT_REASON_HARDWARE;
    public static final RebootReason REBOOT_REASON_INVALID;
    public static final RebootReason REBOOT_REASON_PCI;
    public static final RebootReason REBOOT_REASON_POWER_OFF_FROM_POWER_MENU;
    public static final RebootReason REBOOT_REASON_RESTART_FROM_POWER_MENU;
    public static final RebootReason REBOOT_REASON_ROM_UPDATE;
    private final int value;

    private static final /* synthetic */ RebootReason[] $values() {
        return new RebootReason[]{REBOOT_REASON_INVALID, REBOOT_REASON_ADB, REBOOT_REASON_HARDWARE, REBOOT_REASON_FACTORY_RESET, REBOOT_REASON_POWER_OFF_FROM_POWER_MENU, REBOOT_REASON_RESTART_FROM_POWER_MENU, REBOOT_REASON_PCI, REBOOT_REASON_ROM_UPDATE};
    }

    @JvmStatic
    public static final RebootReason fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<RebootReason> getEntries() {
        return $ENTRIES;
    }

    public static RebootReason valueOf(String str) {
        return (RebootReason) Enum.valueOf(RebootReason.class, str);
    }

    public static RebootReason[] values() {
        return (RebootReason[]) $VALUES.clone();
    }

    private RebootReason(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final RebootReason rebootReason = new RebootReason("REBOOT_REASON_INVALID", 0, 0);
        REBOOT_REASON_INVALID = rebootReason;
        REBOOT_REASON_ADB = new RebootReason("REBOOT_REASON_ADB", 1, 1);
        REBOOT_REASON_HARDWARE = new RebootReason("REBOOT_REASON_HARDWARE", 2, 2);
        REBOOT_REASON_FACTORY_RESET = new RebootReason("REBOOT_REASON_FACTORY_RESET", 3, 3);
        REBOOT_REASON_POWER_OFF_FROM_POWER_MENU = new RebootReason("REBOOT_REASON_POWER_OFF_FROM_POWER_MENU", 4, 4);
        REBOOT_REASON_RESTART_FROM_POWER_MENU = new RebootReason("REBOOT_REASON_RESTART_FROM_POWER_MENU", 5, 5);
        REBOOT_REASON_PCI = new RebootReason("REBOOT_REASON_PCI", 6, 6);
        REBOOT_REASON_ROM_UPDATE = new RebootReason("REBOOT_REASON_ROM_UPDATE", 7, 7);
        RebootReason[] rebootReasonArr$values = $values();
        $VALUES = rebootReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(rebootReasonArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RebootReason.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<RebootReason>(orCreateKotlinClass, syntax, rebootReason) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.RebootReason$Companion$ADAPTER$1
            {
                RebootReason rebootReason2 = rebootReason;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public RebootReason fromValue(int value) {
                return RebootReason.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: RebootReason.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RebootReason fromValue(int value) {
            switch (value) {
                case 0:
                    return RebootReason.REBOOT_REASON_INVALID;
                case 1:
                    return RebootReason.REBOOT_REASON_ADB;
                case 2:
                    return RebootReason.REBOOT_REASON_HARDWARE;
                case 3:
                    return RebootReason.REBOOT_REASON_FACTORY_RESET;
                case 4:
                    return RebootReason.REBOOT_REASON_POWER_OFF_FROM_POWER_MENU;
                case 5:
                    return RebootReason.REBOOT_REASON_RESTART_FROM_POWER_MENU;
                case 6:
                    return RebootReason.REBOOT_REASON_PCI;
                case 7:
                    return RebootReason.REBOOT_REASON_ROM_UPDATE;
                default:
                    return null;
            }
        }
    }
}
