package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderBatteryInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJ0\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0006\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "", "batteryStatus", "Lcom/stripe/stripeterminal/external/models/BatteryStatus;", "batteryLevel", "", "isCharging", "", "(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V", "getBatteryLevel", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getBatteryStatus", "()Lcom/stripe/stripeterminal/external/models/BatteryStatus;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "copy", "(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "equals", "other", "hashCode", "", "toString", "", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderBatteryInfo {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Float batteryLevel;
    private final BatteryStatus batteryStatus;
    private final Boolean isCharging;

    public static /* synthetic */ ReaderBatteryInfo copy$default(ReaderBatteryInfo readerBatteryInfo, BatteryStatus batteryStatus, Float f, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            batteryStatus = readerBatteryInfo.batteryStatus;
        }
        if ((i & 2) != 0) {
            f = readerBatteryInfo.batteryLevel;
        }
        if ((i & 4) != 0) {
            bool = readerBatteryInfo.isCharging;
        }
        return readerBatteryInfo.copy(batteryStatus, f, bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BatteryStatus getBatteryStatus() {
        return this.batteryStatus;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getBatteryLevel() {
        return this.batteryLevel;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Boolean getIsCharging() {
        return this.isCharging;
    }

    public final ReaderBatteryInfo copy(BatteryStatus batteryStatus, Float batteryLevel, Boolean isCharging) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        return new ReaderBatteryInfo(batteryStatus, batteryLevel, isCharging);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderBatteryInfo)) {
            return false;
        }
        ReaderBatteryInfo readerBatteryInfo = (ReaderBatteryInfo) other;
        return this.batteryStatus == readerBatteryInfo.batteryStatus && Intrinsics.areEqual((Object) this.batteryLevel, (Object) readerBatteryInfo.batteryLevel) && Intrinsics.areEqual(this.isCharging, readerBatteryInfo.isCharging);
    }

    public int hashCode() {
        int iHashCode = this.batteryStatus.hashCode() * 31;
        Float f = this.batteryLevel;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Boolean bool = this.isCharging;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "ReaderBatteryInfo(batteryStatus=" + this.batteryStatus + ", batteryLevel=" + this.batteryLevel + ", isCharging=" + this.isCharging + ')';
    }

    public ReaderBatteryInfo(BatteryStatus batteryStatus, Float f, Boolean bool) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.batteryStatus = batteryStatus;
        this.batteryLevel = f;
        this.isCharging = bool;
    }

    public final BatteryStatus getBatteryStatus() {
        return this.batteryStatus;
    }

    public final Float getBatteryLevel() {
        return this.batteryLevel;
    }

    public final Boolean isCharging() {
        return this.isCharging;
    }

    /* JADX INFO: compiled from: ReaderBatteryInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;", "", "()V", "fromReaderInfo", "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;", "readerInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.stripe.stripeterminal.external.models.ReaderBatteryInfo fromReaderInfo(com.stripe.hardware.status.ReaderInfo r4) {
            /*
                r3 = this;
                java.lang.String r0 = "readerInfo"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.Float r0 = r4.getBatteryLevel()
                if (r0 == 0) goto L29
                java.lang.Number r0 = (java.lang.Number) r0
                float r0 = r0.floatValue()
                r1 = 1028443341(0x3d4ccccd, float:0.05)
                int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r1 > 0) goto L1b
                com.stripe.stripeterminal.external.models.BatteryStatus r0 = com.stripe.stripeterminal.external.models.BatteryStatus.CRITICAL
                goto L27
            L1b:
                r1 = 1045220557(0x3e4ccccd, float:0.2)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L25
                com.stripe.stripeterminal.external.models.BatteryStatus r0 = com.stripe.stripeterminal.external.models.BatteryStatus.LOW
                goto L27
            L25:
                com.stripe.stripeterminal.external.models.BatteryStatus r0 = com.stripe.stripeterminal.external.models.BatteryStatus.NOMINAL
            L27:
                if (r0 != 0) goto L2b
            L29:
                com.stripe.stripeterminal.external.models.BatteryStatus r0 = com.stripe.stripeterminal.external.models.BatteryStatus.UNKNOWN
            L2b:
                java.lang.Float r1 = r4.getBatteryLevel()
                java.lang.Boolean r4 = r4.isCharging()
                com.stripe.stripeterminal.external.models.ReaderBatteryInfo r2 = new com.stripe.stripeterminal.external.models.ReaderBatteryInfo
                r2.<init>(r0, r1, r4)
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.external.models.ReaderBatteryInfo.Companion.fromReaderInfo(com.stripe.hardware.status.ReaderInfo):com.stripe.stripeterminal.external.models.ReaderBatteryInfo");
        }
    }
}
