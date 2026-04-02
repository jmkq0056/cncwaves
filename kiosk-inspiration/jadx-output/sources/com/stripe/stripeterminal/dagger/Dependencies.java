package com.stripe.stripeterminal.dagger;

import com.stripe.core.device.SerialSupplier;
import com.stripe.stripeterminal.internal.common.Adapter;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalCommonComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/Dependencies;", "", "embeddedAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "getEmbeddedAdapter", "()Lcom/stripe/stripeterminal/internal/common/Adapter;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "getSerialSupplier", "()Lcom/stripe/core/device/SerialSupplier;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Dependencies {
    @EmbeddedAdapter
    Adapter getEmbeddedAdapter();

    SerialSupplier getSerialSupplier();
}
