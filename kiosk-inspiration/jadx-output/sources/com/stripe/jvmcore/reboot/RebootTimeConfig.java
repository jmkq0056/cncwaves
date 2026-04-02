package com.stripe.jvmcore.reboot;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RebootTimeConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\n\u000bR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u0002\f\rø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig;", "", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "getApproach", "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "EmptyConfig", "SetConfig", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface RebootTimeConfig {
    RebootTimeSettingApproach getApproach();

    TimeWindow getTimeWindow();

    /* JADX INFO: compiled from: RebootTimeConfig.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0001\u0002\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig;", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)V", "getApproach", "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "ConfigByClient", "ConfigByServer", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByClient;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByServer;", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class EmptyConfig implements RebootTimeConfig {
        private final RebootTimeSettingApproach approach;
        private final TimeWindow timeWindow;

        public /* synthetic */ EmptyConfig(RebootTimeSettingApproach rebootTimeSettingApproach, DefaultConstructorMarker defaultConstructorMarker) {
            this(rebootTimeSettingApproach);
        }

        private EmptyConfig(RebootTimeSettingApproach rebootTimeSettingApproach) {
            this.approach = rebootTimeSettingApproach;
        }

        @Override // com.stripe.jvmcore.reboot.RebootTimeConfig
        public RebootTimeSettingApproach getApproach() {
            return this.approach;
        }

        @Override // com.stripe.jvmcore.reboot.RebootTimeConfig
        public TimeWindow getTimeWindow() {
            return this.timeWindow;
        }

        /* JADX INFO: compiled from: RebootTimeConfig.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByServer;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ConfigByServer extends EmptyConfig {
            public static final ConfigByServer INSTANCE = new ConfigByServer();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ConfigByServer)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1946704462;
            }

            public String toString() {
                return "ConfigByServer";
            }

            private ConfigByServer() {
                super(RebootTimeSettingApproach.REBOOT_TIME_BY_SERVER_DEFAULT, null);
            }
        }

        /* JADX INFO: compiled from: RebootTimeConfig.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByClient;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ConfigByClient extends EmptyConfig {
            public static final ConfigByClient INSTANCE = new ConfigByClient();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ConfigByClient)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1494818518;
            }

            public String toString() {
                return "ConfigByClient";
            }

            private ConfigByClient() {
                super(RebootTimeSettingApproach.REBOOT_TIME_BY_DEVICE, null);
            }
        }
    }

    /* JADX INFO: compiled from: RebootTimeConfig.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig;", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "(Lcom/stripe/jvmcore/reboot/TimeWindow;)V", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "ConfigByClient", "ConfigByServer", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class SetConfig implements RebootTimeConfig {
        private final TimeWindow timeWindow;

        public /* synthetic */ SetConfig(TimeWindow timeWindow, DefaultConstructorMarker defaultConstructorMarker) {
            this(timeWindow);
        }

        private SetConfig(TimeWindow timeWindow) {
            this.timeWindow = timeWindow;
        }

        @Override // com.stripe.jvmcore.reboot.RebootTimeConfig
        public TimeWindow getTimeWindow() {
            return this.timeWindow;
        }

        /* JADX INFO: compiled from: RebootTimeConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "isConfigEnforced", "", "(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)V", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "getApproach", "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "()Z", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ConfigByServer extends SetConfig {
            private final RebootTimeSettingApproach approach;
            private final boolean isConfigEnforced;
            private final TimeWindow timeWindow;

            public static /* synthetic */ ConfigByServer copy$default(ConfigByServer configByServer, TimeWindow timeWindow, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    timeWindow = configByServer.timeWindow;
                }
                if ((i & 2) != 0) {
                    z = configByServer.isConfigEnforced;
                }
                return configByServer.copy(timeWindow, z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TimeWindow getTimeWindow() {
                return this.timeWindow;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final boolean getIsConfigEnforced() {
                return this.isConfigEnforced;
            }

            public final ConfigByServer copy(TimeWindow timeWindow, boolean isConfigEnforced) {
                Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
                return new ConfigByServer(timeWindow, isConfigEnforced);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ConfigByServer)) {
                    return false;
                }
                ConfigByServer configByServer = (ConfigByServer) other;
                return Intrinsics.areEqual(this.timeWindow, configByServer.timeWindow) && this.isConfigEnforced == configByServer.isConfigEnforced;
            }

            public int hashCode() {
                return (this.timeWindow.hashCode() * 31) + Boolean.hashCode(this.isConfigEnforced);
            }

            public String toString() {
                return "ConfigByServer(timeWindow=" + this.timeWindow + ", isConfigEnforced=" + this.isConfigEnforced + ')';
            }

            @Override // com.stripe.jvmcore.reboot.RebootTimeConfig.SetConfig, com.stripe.jvmcore.reboot.RebootTimeConfig
            public TimeWindow getTimeWindow() {
                return this.timeWindow;
            }

            public final boolean isConfigEnforced() {
                return this.isConfigEnforced;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConfigByServer(TimeWindow timeWindow, boolean z) {
                super(timeWindow, null);
                Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
                this.timeWindow = timeWindow;
                this.isConfigEnforced = z;
                this.approach = RebootTimeSettingApproach.REBOOT_TIME_BY_SERVER_DEFAULT;
            }

            @Override // com.stripe.jvmcore.reboot.RebootTimeConfig
            public RebootTimeSettingApproach getApproach() {
                return this.approach;
            }
        }

        /* JADX INFO: compiled from: RebootTimeConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;", "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;", "timeWindow", "Lcom/stripe/jvmcore/reboot/TimeWindow;", "(Lcom/stripe/jvmcore/reboot/TimeWindow;)V", "approach", "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "getApproach", "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;", "getTimeWindow", "()Lcom/stripe/jvmcore/reboot/TimeWindow;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "reboot"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class ConfigByClient extends SetConfig {
            private final RebootTimeSettingApproach approach;
            private final TimeWindow timeWindow;

            public static /* synthetic */ ConfigByClient copy$default(ConfigByClient configByClient, TimeWindow timeWindow, int i, Object obj) {
                if ((i & 1) != 0) {
                    timeWindow = configByClient.timeWindow;
                }
                return configByClient.copy(timeWindow);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TimeWindow getTimeWindow() {
                return this.timeWindow;
            }

            public final ConfigByClient copy(TimeWindow timeWindow) {
                Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
                return new ConfigByClient(timeWindow);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ConfigByClient) && Intrinsics.areEqual(this.timeWindow, ((ConfigByClient) other).timeWindow);
            }

            public int hashCode() {
                return this.timeWindow.hashCode();
            }

            public String toString() {
                return "ConfigByClient(timeWindow=" + this.timeWindow + ')';
            }

            @Override // com.stripe.jvmcore.reboot.RebootTimeConfig.SetConfig, com.stripe.jvmcore.reboot.RebootTimeConfig
            public TimeWindow getTimeWindow() {
                return this.timeWindow;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConfigByClient(TimeWindow timeWindow) {
                super(timeWindow, null);
                Intrinsics.checkNotNullParameter(timeWindow, "timeWindow");
                this.timeWindow = timeWindow;
                this.approach = RebootTimeSettingApproach.REBOOT_TIME_BY_DEVICE;
            }

            @Override // com.stripe.jvmcore.reboot.RebootTimeConfig
            public RebootTimeSettingApproach getApproach() {
                return this.approach;
            }
        }
    }
}
