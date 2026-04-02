package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature;

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
/* JADX INFO: compiled from: DeviceTemperatureSource.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEVICE_TEMPERATURE_SOURCE_INVALID", "TEMPERATURE_CURRENT", "TEMPERATURE_THROTTLING", "TEMPERATURE_THROTTLING_BELOW_VR_MIN", "TEMPERATURE_SHUTDOWN", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTemperatureSource implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceTemperatureSource[] $VALUES;
    public static final ProtoAdapter<DeviceTemperatureSource> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DeviceTemperatureSource DEVICE_TEMPERATURE_SOURCE_INVALID;
    public static final DeviceTemperatureSource TEMPERATURE_CURRENT;
    public static final DeviceTemperatureSource TEMPERATURE_SHUTDOWN;
    public static final DeviceTemperatureSource TEMPERATURE_THROTTLING;
    public static final DeviceTemperatureSource TEMPERATURE_THROTTLING_BELOW_VR_MIN;
    private final int value;

    private static final /* synthetic */ DeviceTemperatureSource[] $values() {
        return new DeviceTemperatureSource[]{DEVICE_TEMPERATURE_SOURCE_INVALID, TEMPERATURE_CURRENT, TEMPERATURE_THROTTLING, TEMPERATURE_THROTTLING_BELOW_VR_MIN, TEMPERATURE_SHUTDOWN};
    }

    @JvmStatic
    public static final DeviceTemperatureSource fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<DeviceTemperatureSource> getEntries() {
        return $ENTRIES;
    }

    public static DeviceTemperatureSource valueOf(String str) {
        return (DeviceTemperatureSource) Enum.valueOf(DeviceTemperatureSource.class, str);
    }

    public static DeviceTemperatureSource[] values() {
        return (DeviceTemperatureSource[]) $VALUES.clone();
    }

    private DeviceTemperatureSource(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final DeviceTemperatureSource deviceTemperatureSource = new DeviceTemperatureSource("DEVICE_TEMPERATURE_SOURCE_INVALID", 0, 0);
        DEVICE_TEMPERATURE_SOURCE_INVALID = deviceTemperatureSource;
        TEMPERATURE_CURRENT = new DeviceTemperatureSource("TEMPERATURE_CURRENT", 1, 1);
        TEMPERATURE_THROTTLING = new DeviceTemperatureSource("TEMPERATURE_THROTTLING", 2, 2);
        TEMPERATURE_THROTTLING_BELOW_VR_MIN = new DeviceTemperatureSource("TEMPERATURE_THROTTLING_BELOW_VR_MIN", 3, 3);
        TEMPERATURE_SHUTDOWN = new DeviceTemperatureSource("TEMPERATURE_SHUTDOWN", 4, 4);
        DeviceTemperatureSource[] deviceTemperatureSourceArr$values = $values();
        $VALUES = deviceTemperatureSourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(deviceTemperatureSourceArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceTemperatureSource.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<DeviceTemperatureSource>(orCreateKotlinClass, syntax, deviceTemperatureSource) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureSource$Companion$ADAPTER$1
            {
                DeviceTemperatureSource deviceTemperatureSource2 = deviceTemperatureSource;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public DeviceTemperatureSource fromValue(int value) {
                return DeviceTemperatureSource.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: DeviceTemperatureSource.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureSource;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DeviceTemperatureSource fromValue(int value) {
            if (value == 0) {
                return DeviceTemperatureSource.DEVICE_TEMPERATURE_SOURCE_INVALID;
            }
            if (value == 1) {
                return DeviceTemperatureSource.TEMPERATURE_CURRENT;
            }
            if (value == 2) {
                return DeviceTemperatureSource.TEMPERATURE_THROTTLING;
            }
            if (value == 3) {
                return DeviceTemperatureSource.TEMPERATURE_THROTTLING_BELOW_VR_MIN;
            }
            if (value != 4) {
                return null;
            }
            return DeviceTemperatureSource.TEMPERATURE_SHUTDOWN;
        }
    }
}
