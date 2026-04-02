package com.stripe.jvmcore.offlinemode.storage;

import com.stripe.jvmcore.storage.KeyValueStore;
import com.stripe.jvmcore.storage.SharedPrefs;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DefaultOfflineKeyValueStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\fH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007H\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;", "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;", "keyValueStore", "Lcom/stripe/jvmcore/storage/KeyValueStore;", "(Lcom/stripe/jvmcore/storage/KeyValueStore;)V", "accountIdStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "clear", "", "getAccountId", "getSavedAccountIdStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "saveAccountId", "accountId", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineKeyValueStore implements OfflineKeyValueStore {
    private final MutableStateFlow<String> accountIdStateFlow;
    private final KeyValueStore keyValueStore;

    @Inject
    public DefaultOfflineKeyValueStore(KeyValueStore keyValueStore) {
        Intrinsics.checkNotNullParameter(keyValueStore, "keyValueStore");
        this.keyValueStore = keyValueStore;
        this.accountIdStateFlow = StateFlowKt.MutableStateFlow(getAccountId());
    }

    @Override // com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore
    public void saveAccountId(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.keyValueStore.putString(SharedPrefs.LAST_ACTIVE_OFFLINE_ACCOUNT_ID, accountId);
        this.accountIdStateFlow.setValue(accountId);
    }

    @Override // com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore
    public String getAccountId() {
        return this.keyValueStore.getString(SharedPrefs.LAST_ACTIVE_OFFLINE_ACCOUNT_ID, null);
    }

    @Override // com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore
    public StateFlow<String> getSavedAccountIdStateFlow() {
        return this.accountIdStateFlow;
    }

    @Override // com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore
    public void clear() {
        this.keyValueStore.remove(SharedPrefs.LAST_ACTIVE_OFFLINE_ACCOUNT_ID);
        this.accountIdStateFlow.setValue(null);
    }
}
