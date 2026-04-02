package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimulatorConfigurationRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "", "()V", "simulatorConfiguration", "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "getSimulatorConfiguration", "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "setSimulatorConfiguration", "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatorConfigurationRepository {
    private SimulatorConfiguration simulatorConfiguration = new SimulatorConfiguration(null, null, null, false, 15, null);

    public final SimulatorConfiguration getSimulatorConfiguration() {
        return this.simulatorConfiguration;
    }

    public final void setSimulatorConfiguration(SimulatorConfiguration simulatorConfiguration) {
        Intrinsics.checkNotNullParameter(simulatorConfiguration, "<set-?>");
        this.simulatorConfiguration = simulatorConfiguration;
    }
}
