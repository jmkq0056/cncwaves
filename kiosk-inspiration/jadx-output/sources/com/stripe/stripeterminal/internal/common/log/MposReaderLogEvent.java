package com.stripe.stripeterminal.internal.common.log;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryChargingDialogShownEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.CoinCellBatteryState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BootCompletedEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceFactoryConfigurationEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperModeEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.devkit.DevKitSideloadInstallEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkConnectivityEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DevicePerformanceSnapshotEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.storage.StorageEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.system_event.AndroidSystemEvent;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: MposReaderLogEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\n\u000b\f\rR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0004\u000e\u000f\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", "", "eventData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getEventData", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "Battery", "CoinCellVoltage", "Connect", "Disconnect", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MposReaderLogEvent {
    EventData getEventData();

    Reader getReader();

    /* JADX INFO: compiled from: MposReaderLogEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/external/models/Reader;)V", "eventData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getEventData", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Connect implements MposReaderLogEvent {
        private final EventData eventData;
        private final Reader reader;

        public static /* synthetic */ Connect copy$default(Connect connect, Reader reader, int i, Object obj) {
            if ((i & 1) != 0) {
                reader = connect.reader;
            }
            return connect.copy(reader);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Reader getReader() {
            return this.reader;
        }

        public final Connect copy(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new Connect(reader);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Connect) && Intrinsics.areEqual(this.reader, ((Connect) other).reader);
        }

        public int hashCode() {
            return this.reader.hashCode();
        }

        public String toString() {
            return "Connect(reader=" + this.reader + ')';
        }

        public Connect(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.reader = reader;
            ScreenMetadataEvent screenMetadataEvent = null;
            BootCompletedEvent bootCompletedEvent = null;
            BatteryState batteryState = null;
            CoinCellBatteryState coinCellBatteryState = null;
            DevKitSideloadInstallEvent devKitSideloadInstallEvent = null;
            ApplicationLifecycleEvent applicationLifecycleEvent = null;
            BatteryChargingDialogShownEvent batteryChargingDialogShownEvent = null;
            AccessibilityEvent accessibilityEvent = null;
            DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent = null;
            BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent = null;
            DockState dockState = null;
            HubState hubState = null;
            StorageEvent storageEvent = null;
            TamperModeEvent tamperModeEvent = null;
            NetworkConnectivityEvent networkConnectivityEvent = null;
            DeviceTemperatureEvent deviceTemperatureEvent = null;
            DataUsageEvent dataUsageEvent = null;
            AndroidSystemEvent androidSystemEvent = null;
            DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent = null;
            UpdateOperationEvent updateOperationEvent = null;
            KeyMissingEvent keyMissingEvent = null;
            USBDeviceStateEvent uSBDeviceStateEvent = null;
            IntegrityCheckErrorEvent integrityCheckErrorEvent = null;
            ByteString byteString = null;
            this.eventData = new EventData(batteryState, coinCellBatteryState, devKitSideloadInstallEvent, bootCompletedEvent, applicationLifecycleEvent, screenMetadataEvent, batteryChargingDialogShownEvent, null, accessibilityEvent, devicePerformanceSnapshotEvent, batteryPluggedInButNotChargingEvent, dockState, hubState, storageEvent, tamperModeEvent, networkConnectivityEvent, deviceTemperatureEvent, dataUsageEvent, androidSystemEvent, deviceFactoryConfigurationEvent, updateOperationEvent, keyMissingEvent, uSBDeviceStateEvent, new PosConnectivityEvent(MposReaderLogEventKt.getConnectionMode(getReader()), new PosConnectivityEvent.ConnectivityEventType(new PosConnectivityEvent.ConnectivityEventType.Connect(null, null, 3, null), null, null, 6, null), null, 4, null), integrityCheckErrorEvent, byteString, 58720255, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public Reader getReader() {
            return this.reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public EventData getEventData() {
            return this.eventData;
        }
    }

    /* JADX INFO: compiled from: MposReaderLogEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "reason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V", "eventData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getEventData", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "getReason", "()Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Disconnect implements MposReaderLogEvent {
        private final EventData eventData;
        private final Reader reader;
        private final DisconnectReason reason;

        /* JADX INFO: compiled from: MposReaderLogEvent.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DisconnectReason.values().length];
                try {
                    iArr[DisconnectReason.UNKNOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DisconnectReason.DISCONNECT_REQUESTED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DisconnectReason.REBOOT_REQUESTED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[DisconnectReason.SECURITY_REBOOT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[DisconnectReason.CRITICALLY_LOW_BATTERY.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[DisconnectReason.POWERED_OFF.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[DisconnectReason.BLUETOOTH_DISABLED.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ Disconnect copy$default(Disconnect disconnect, Reader reader, DisconnectReason disconnectReason, int i, Object obj) {
            if ((i & 1) != 0) {
                reader = disconnect.reader;
            }
            if ((i & 2) != 0) {
                disconnectReason = disconnect.reason;
            }
            return disconnect.copy(reader, disconnectReason);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Reader getReader() {
            return this.reader;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final DisconnectReason getReason() {
            return this.reason;
        }

        public final Disconnect copy(Reader reader, DisconnectReason reason) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Disconnect(reader, reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Disconnect)) {
                return false;
            }
            Disconnect disconnect = (Disconnect) other;
            return Intrinsics.areEqual(this.reader, disconnect.reader) && this.reason == disconnect.reason;
        }

        public int hashCode() {
            return (this.reader.hashCode() * 31) + this.reason.hashCode();
        }

        public String toString() {
            return "Disconnect(reader=" + this.reader + ", reason=" + this.reason + ')';
        }

        public Disconnect(Reader reader, DisconnectReason reason) {
            PosConnectivityEvent.DisconnectReason disconnectReason;
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reader = reader;
            this.reason = reason;
            PosConnectivityEvent.ConnectionMode connectionMode = MposReaderLogEventKt.getConnectionMode(getReader());
            switch (WhenMappings.$EnumSwitchMapping$0[reason.ordinal()]) {
                case 1:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.UNKNOWN;
                    break;
                case 2:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.DISCONNECT_REQUESTED;
                    break;
                case 3:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.REBOOT_REQUESTED;
                    break;
                case 4:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.SECURITY_REBOOT;
                    break;
                case 5:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.CRITICALLY_LOW_BATTERY;
                    break;
                case 6:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.POWERED_OFF;
                    break;
                case 7:
                    disconnectReason = PosConnectivityEvent.DisconnectReason.BLUETOOTH_DISABLED;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            BatteryState batteryState = null;
            CoinCellBatteryState coinCellBatteryState = null;
            DevKitSideloadInstallEvent devKitSideloadInstallEvent = null;
            ApplicationLifecycleEvent applicationLifecycleEvent = null;
            this.eventData = new EventData(batteryState, coinCellBatteryState, devKitSideloadInstallEvent, null, applicationLifecycleEvent, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new PosConnectivityEvent(connectionMode, new PosConnectivityEvent.ConnectivityEventType(null, new PosConnectivityEvent.ConnectivityEventType.Disconnect(disconnectReason, null, 2, null), null, 5, null), null, 4, null), null, null, 58720255, null);
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public Reader getReader() {
            return this.reader;
        }

        public final DisconnectReason getReason() {
            return this.reason;
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public EventData getEventData() {
            return this.eventData;
        }
    }

    /* JADX INFO: compiled from: MposReaderLogEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J0\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0004\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", "batteryLevel", "", "isUsbConnected", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)V", "getBatteryLevel", "()Ljava/lang/Float;", "Ljava/lang/Float;", "eventData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getEventData", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "component1", "component2", "component3", "copy", "(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;", "equals", "other", "", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Battery implements MposReaderLogEvent {
        private final Float batteryLevel;
        private final Boolean isUsbConnected;
        private final Reader reader;

        public static /* synthetic */ Battery copy$default(Battery battery, Float f, Boolean bool, Reader reader, int i, Object obj) {
            if ((i & 1) != 0) {
                f = battery.batteryLevel;
            }
            if ((i & 2) != 0) {
                bool = battery.isUsbConnected;
            }
            if ((i & 4) != 0) {
                reader = battery.reader;
            }
            return battery.copy(f, bool, reader);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Float getBatteryLevel() {
            return this.batteryLevel;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Boolean getIsUsbConnected() {
            return this.isUsbConnected;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Reader getReader() {
            return this.reader;
        }

        public final Battery copy(Float batteryLevel, Boolean isUsbConnected, Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new Battery(batteryLevel, isUsbConnected, reader);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Battery)) {
                return false;
            }
            Battery battery = (Battery) other;
            return Intrinsics.areEqual((Object) this.batteryLevel, (Object) battery.batteryLevel) && Intrinsics.areEqual(this.isUsbConnected, battery.isUsbConnected) && Intrinsics.areEqual(this.reader, battery.reader);
        }

        public int hashCode() {
            Float f = this.batteryLevel;
            int iHashCode = (f == null ? 0 : f.hashCode()) * 31;
            Boolean bool = this.isUsbConnected;
            return ((iHashCode + (bool != null ? bool.hashCode() : 0)) * 31) + this.reader.hashCode();
        }

        public String toString() {
            return "Battery(batteryLevel=" + this.batteryLevel + ", isUsbConnected=" + this.isUsbConnected + ", reader=" + this.reader + ')';
        }

        public Battery(Float f, Boolean bool, Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.batteryLevel = f;
            this.isUsbConnected = bool;
            this.reader = reader;
        }

        public final Float getBatteryLevel() {
            return this.batteryLevel;
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public Reader getReader() {
            return this.reader;
        }

        public final Boolean isUsbConnected() {
            return this.isUsbConnected;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public EventData getEventData() {
            BatteryState.PowerConnectivity powerConnectivity;
            double dFloatValue = this.batteryLevel != null ? r1.floatValue() * 100 : 0.0d;
            Boolean bool = this.isUsbConnected;
            if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                powerConnectivity = BatteryState.PowerConnectivity.CONNECTED;
            } else if (Intrinsics.areEqual((Object) bool, (Object) false)) {
                powerConnectivity = BatteryState.PowerConnectivity.DISCONNECTED;
            } else if (bool == null) {
                powerConnectivity = BatteryState.PowerConnectivity.POWER_CONNECTIVITY_INVALID;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return new EventData(new BatteryState(dFloatValue, powerConnectivity, null, null, 0, 0, 0.0f, 0, null, null, null, 2044, null), null, null, null, null, null == true ? 1 : 0, null == true ? 1 : 0, null == true ? 1 : 0, null, null == true ? 1 : 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108862, null);
        }
    }

    /* JADX INFO: compiled from: MposReaderLogEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;", "voltage", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(FLcom/stripe/stripeterminal/external/models/Reader;)V", "eventData", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getEventData", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "getVoltage", "()F", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class CoinCellVoltage implements MposReaderLogEvent {
        private final Reader reader;
        private final float voltage;

        public static /* synthetic */ CoinCellVoltage copy$default(CoinCellVoltage coinCellVoltage, float f, Reader reader, int i, Object obj) {
            if ((i & 1) != 0) {
                f = coinCellVoltage.voltage;
            }
            if ((i & 2) != 0) {
                reader = coinCellVoltage.reader;
            }
            return coinCellVoltage.copy(f, reader);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final float getVoltage() {
            return this.voltage;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Reader getReader() {
            return this.reader;
        }

        public final CoinCellVoltage copy(float voltage, Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new CoinCellVoltage(voltage, reader);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CoinCellVoltage)) {
                return false;
            }
            CoinCellVoltage coinCellVoltage = (CoinCellVoltage) other;
            return Float.compare(this.voltage, coinCellVoltage.voltage) == 0 && Intrinsics.areEqual(this.reader, coinCellVoltage.reader);
        }

        public int hashCode() {
            return (Float.hashCode(this.voltage) * 31) + this.reader.hashCode();
        }

        public String toString() {
            return "CoinCellVoltage(voltage=" + this.voltage + ", reader=" + this.reader + ')';
        }

        public CoinCellVoltage(float f, Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.voltage = f;
            this.reader = reader;
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public Reader getReader() {
            return this.reader;
        }

        public final float getVoltage() {
            return this.voltage;
        }

        @Override // com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent
        public EventData getEventData() {
            return new EventData(null, new CoinCellBatteryState(this.voltage, null, 2, null), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108861, null);
        }
    }
}
