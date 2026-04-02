package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.offlinemode.storage.DefaultOfflineRepository;
import kotlin.Metadata;

/* JADX INFO: compiled from: DefaultOfflineRepositoryFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;", "", "create", "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DefaultOfflineRepositoryFactory {
    DefaultOfflineRepository create(Logger<?, ?> logger);
}
