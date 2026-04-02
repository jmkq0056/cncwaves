package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.external.models.TapToPayUxConfiguration;
import kotlin.Metadata;

/* JADX INFO: compiled from: TapToPayUxConfigurationRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;", "", "()V", "uxConfig", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "getUxConfig", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "setUxConfig", "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TapToPayUxConfigurationRepository {
    public static final TapToPayUxConfigurationRepository INSTANCE = new TapToPayUxConfigurationRepository();
    private static TapToPayUxConfiguration uxConfig;

    private TapToPayUxConfigurationRepository() {
    }

    public final TapToPayUxConfiguration getUxConfig() {
        return uxConfig;
    }

    public final void setUxConfig(TapToPayUxConfiguration tapToPayUxConfiguration) {
        uxConfig = tapToPayUxConfiguration;
    }
}
