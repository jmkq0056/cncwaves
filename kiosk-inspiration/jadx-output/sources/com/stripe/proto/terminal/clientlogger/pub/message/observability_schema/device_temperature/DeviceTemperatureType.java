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
/* JADX INFO: compiled from: DeviceTemperatureType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEVICE_TEMPERATURE_TYPE_INVALID", "DEVICE_TEMPERATURE_CPU", "DEVICE_TEMPERATURE_GPU", "DEVICE_TEMPERATURE_BATTERY", "DEVICE_TEMPERATURE_SKIN", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTemperatureType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceTemperatureType[] $VALUES;
    public static final ProtoAdapter<DeviceTemperatureType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DeviceTemperatureType DEVICE_TEMPERATURE_BATTERY;
    public static final DeviceTemperatureType DEVICE_TEMPERATURE_CPU;
    public static final DeviceTemperatureType DEVICE_TEMPERATURE_GPU;
    public static final DeviceTemperatureType DEVICE_TEMPERATURE_SKIN;
    public static final DeviceTemperatureType DEVICE_TEMPERATURE_TYPE_INVALID;
    private final int value;

    private static final /* synthetic */ DeviceTemperatureType[] $values() {
        return new DeviceTemperatureType[]{DEVICE_TEMPERATURE_TYPE_INVALID, DEVICE_TEMPERATURE_CPU, DEVICE_TEMPERATURE_GPU, DEVICE_TEMPERATURE_BATTERY, DEVICE_TEMPERATURE_SKIN};
    }

    @JvmStatic
    public static final DeviceTemperatureType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<DeviceTemperatureType> getEntries() {
        return $ENTRIES;
    }

    public static DeviceTemperatureType valueOf(String str) {
        return (DeviceTemperatureType) Enum.valueOf(DeviceTemperatureType.class, str);
    }

    public static DeviceTemperatureType[] values() {
        return (DeviceTemperatureType[]) $VALUES.clone();
    }

    private DeviceTemperatureType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final DeviceTemperatureType deviceTemperatureType = new DeviceTemperatureType("DEVICE_TEMPERATURE_TYPE_INVALID", 0, 0);
        DEVICE_TEMPERATURE_TYPE_INVALID = deviceTemperatureType;
        DEVICE_TEMPERATURE_CPU = new DeviceTemperatureType("DEVICE_TEMPERATURE_CPU", 1, 1);
        DEVICE_TEMPERATURE_GPU = new DeviceTemperatureType("DEVICE_TEMPERATURE_GPU", 2, 2);
        DEVICE_TEMPERATURE_BATTERY = new DeviceTemperatureType("DEVICE_TEMPERATURE_BATTERY", 3, 3);
        DEVICE_TEMPERATURE_SKIN = new DeviceTemperatureType("DEVICE_TEMPERATURE_SKIN", 4, 4);
        DeviceTemperatureType[] deviceTemperatureTypeArr$values = $values();
        $VALUES = deviceTemperatureTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(deviceTemperatureTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceTemperatureType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<DeviceTemperatureType>(orCreateKotlinClass, syntax, deviceTemperatureType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureType$Companion$ADAPTER$1
            {
                DeviceTemperatureType deviceTemperatureType2 = deviceTemperatureType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public DeviceTemperatureType fromValue(int value) {
                return DeviceTemperatureType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: DeviceTemperatureType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DeviceTemperatureType fromValue(int value) {
            if (value == 0) {
                return DeviceTemperatureType.DEVICE_TEMPERATURE_TYPE_INVALID;
            }
            if (value == 1) {
                return DeviceTemperatureType.DEVICE_TEMPERATURE_CPU;
            }
            if (value == 2) {
                return DeviceTemperatureType.DEVICE_TEMPERATURE_GPU;
            }
            if (value == 3) {
                return DeviceTemperatureType.DEVICE_TEMPERATURE_BATTERY;
            }
            if (value != 4) {
                return null;
            }
            return DeviceTemperatureType.DEVICE_TEMPERATURE_SKIN;
        }
    }
}
