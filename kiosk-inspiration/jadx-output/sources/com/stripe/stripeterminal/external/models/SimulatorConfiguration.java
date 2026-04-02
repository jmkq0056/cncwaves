package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimulatorConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000  2\u00020\u0001:\u0001 B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J8\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "", "update", "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;", "simulatedCard", "Lcom/stripe/stripeterminal/external/models/SimulatedCard;", "simulatedTipAmount", "", "offlineEnabled", "", "(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)V", "getOfflineEnabled", "()Z", "getSimulatedCard", "()Lcom/stripe/stripeterminal/external/models/SimulatedCard;", "getSimulatedTipAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getUpdate", "()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;", "component1", "component2", "component3", "component4", "copy", "(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "equals", "other", "hashCode", "", "toString", "", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SimulatorConfiguration {
    private static final String DEFAULT_CARD_NUMBER = "4761739001010119";
    private final boolean offlineEnabled;
    private final SimulatedCard simulatedCard;
    private final Long simulatedTipAmount;
    private final SimulateReaderUpdate update;

    public SimulatorConfiguration() {
        this(null, null, null, false, 15, null);
    }

    public static /* synthetic */ SimulatorConfiguration copy$default(SimulatorConfiguration simulatorConfiguration, SimulateReaderUpdate simulateReaderUpdate, SimulatedCard simulatedCard, Long l, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            simulateReaderUpdate = simulatorConfiguration.update;
        }
        if ((i & 2) != 0) {
            simulatedCard = simulatorConfiguration.simulatedCard;
        }
        if ((i & 4) != 0) {
            l = simulatorConfiguration.simulatedTipAmount;
        }
        if ((i & 8) != 0) {
            z = simulatorConfiguration.offlineEnabled;
        }
        return simulatorConfiguration.copy(simulateReaderUpdate, simulatedCard, l, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final SimulateReaderUpdate getUpdate() {
        return this.update;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SimulatedCard getSimulatedCard() {
        return this.simulatedCard;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getSimulatedTipAmount() {
        return this.simulatedTipAmount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getOfflineEnabled() {
        return this.offlineEnabled;
    }

    public final SimulatorConfiguration copy(SimulateReaderUpdate update, SimulatedCard simulatedCard, Long simulatedTipAmount, boolean offlineEnabled) {
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(simulatedCard, "simulatedCard");
        return new SimulatorConfiguration(update, simulatedCard, simulatedTipAmount, offlineEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimulatorConfiguration)) {
            return false;
        }
        SimulatorConfiguration simulatorConfiguration = (SimulatorConfiguration) other;
        return this.update == simulatorConfiguration.update && Intrinsics.areEqual(this.simulatedCard, simulatorConfiguration.simulatedCard) && Intrinsics.areEqual(this.simulatedTipAmount, simulatorConfiguration.simulatedTipAmount) && this.offlineEnabled == simulatorConfiguration.offlineEnabled;
    }

    public int hashCode() {
        int iHashCode = ((this.update.hashCode() * 31) + this.simulatedCard.hashCode()) * 31;
        Long l = this.simulatedTipAmount;
        return ((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + Boolean.hashCode(this.offlineEnabled);
    }

    public String toString() {
        return "SimulatorConfiguration(update=" + this.update + ", simulatedCard=" + this.simulatedCard + ", simulatedTipAmount=" + this.simulatedTipAmount + ", offlineEnabled=" + this.offlineEnabled + ')';
    }

    public SimulatorConfiguration(SimulateReaderUpdate update, SimulatedCard simulatedCard, Long l, boolean z) {
        Intrinsics.checkNotNullParameter(update, "update");
        Intrinsics.checkNotNullParameter(simulatedCard, "simulatedCard");
        this.update = update;
        this.simulatedCard = simulatedCard;
        this.simulatedTipAmount = l;
        this.offlineEnabled = z;
    }

    public /* synthetic */ SimulatorConfiguration(SimulateReaderUpdate simulateReaderUpdate, SimulatedCard simulatedCard, Long l, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SimulateReaderUpdate.UPDATE_AVAILABLE : simulateReaderUpdate, (i & 2) != 0 ? new SimulatedCard(DEFAULT_CARD_NUMBER) : simulatedCard, (i & 4) != 0 ? null : l, (i & 8) != 0 ? false : z);
    }

    public final SimulateReaderUpdate getUpdate() {
        return this.update;
    }

    public final SimulatedCard getSimulatedCard() {
        return this.simulatedCard;
    }

    public final Long getSimulatedTipAmount() {
        return this.simulatedTipAmount;
    }

    public final boolean getOfflineEnabled() {
        return this.offlineEnabled;
    }
}
