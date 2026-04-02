package com.stripe.jvmcore.offlinemode.storage;

import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: OfflineKeyValueStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;", "", "clear", "", "getAccountId", "", "getSavedAccountIdStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "saveAccountId", "accountId", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineKeyValueStore {
    void clear();

    String getAccountId();

    StateFlow<String> getSavedAccountIdStateFlow();

    void saveAccountId(String accountId);
}
