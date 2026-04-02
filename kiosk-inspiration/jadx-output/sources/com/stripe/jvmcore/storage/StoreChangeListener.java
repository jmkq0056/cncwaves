package com.stripe.jvmcore.storage;

import com.stripe.jvmcore.storage.SharedPrefsChangeListener;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StoreChangeListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003¢\u0006\u0002\u0010\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0004R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/storage/StoreChangeListener;", "", "listenerMap", "", "", "", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "(Ljava/util/Map;)V", "onValueChanged", "", "keyValueStore", "Lcom/stripe/jvmcore/storage/KeyValueStore;", "key", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StoreChangeListener {
    private final Map<String, Set<SharedPrefsChangeListener>> listenerMap;

    public StoreChangeListener(Map<String, Set<SharedPrefsChangeListener>> listenerMap) {
        Intrinsics.checkNotNullParameter(listenerMap, "listenerMap");
        this.listenerMap = listenerMap;
    }

    public final void onValueChanged(KeyValueStore keyValueStore, String key) {
        Set<SharedPrefsChangeListener> set;
        Intrinsics.checkNotNullParameter(keyValueStore, "keyValueStore");
        if (key == null || (set = this.listenerMap.get(key)) == null) {
            return;
        }
        for (SharedPrefsChangeListener sharedPrefsChangeListener : set) {
            try {
                if (sharedPrefsChangeListener instanceof SharedPrefsChangeListener.SharedPrefsStringChangeListener) {
                    ((SharedPrefsChangeListener.SharedPrefsStringChangeListener) sharedPrefsChangeListener).invoke(keyValueStore.getString(key, null));
                } else if (sharedPrefsChangeListener instanceof SharedPrefsChangeListener.SharedPrefsIntChangeListener) {
                    ((SharedPrefsChangeListener.SharedPrefsIntChangeListener) sharedPrefsChangeListener).invoke(keyValueStore.getInt(key, 0));
                } else if (sharedPrefsChangeListener instanceof SharedPrefsChangeListener.SharedPrefsLongChangeListener) {
                    ((SharedPrefsChangeListener.SharedPrefsLongChangeListener) sharedPrefsChangeListener).invoke(keyValueStore.getLong(key, 0L));
                } else if (sharedPrefsChangeListener instanceof SharedPrefsChangeListener.SharedPrefsBooleanChangeListener) {
                    ((SharedPrefsChangeListener.SharedPrefsBooleanChangeListener) sharedPrefsChangeListener).invoke(keyValueStore.getBoolean(key, false));
                }
            } catch (ClassCastException unused) {
            }
        }
    }
}
