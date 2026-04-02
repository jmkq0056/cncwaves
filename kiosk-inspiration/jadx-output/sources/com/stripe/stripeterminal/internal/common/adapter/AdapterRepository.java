package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import kotlin.Metadata;

/* JADX INFO: compiled from: AdapterRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\bH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;", "", "currentAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "getCurrentAdapter", "()Lcom/stripe/stripeterminal/internal/common/Adapter;", "getAdapterByDiscoveryConfiguration", "discoveryConfiguration", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "setAdapterByDiscoveryConfiguration", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AdapterRepository {
    Adapter getAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) throws TerminalException;

    Adapter getCurrentAdapter();

    Adapter setAdapterByDiscoveryConfiguration(DiscoveryConfiguration discoveryConfiguration) throws TerminalException;
}
