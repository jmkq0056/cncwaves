package com.stripe.jvmcore.storage;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.Base64;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.prefs.BackingStoreException;
import java.util.prefs.PreferenceChangeEvent;
import java.util.prefs.PreferenceChangeListener;
import java.util.prefs.Preferences;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultKeyValueStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00142\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\b\u0010\u001b\u001a\u00020\u0014H\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0018\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001dH\u0016J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010 \u001a\u00020$H\u0016J\u001c\u0010%\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\t2\b\u0010 \u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u001dH\u0016J\u0018\u0010(\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020\"H\u0016J\u0018\u0010)\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020$H\u0016J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0016J\u000e\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u0006J\u0010\u0010-\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;", "Lcom/stripe/jvmcore/storage/KeyValueStore;", "preferences", "Ljava/util/prefs/Preferences;", "(Ljava/util/prefs/Preferences;)V", "changeListener", "Lcom/stripe/jvmcore/storage/StoreChangeListener;", "listenerMap", "", "", "", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "getListenerMap", "()Ljava/util/Map;", "base64Decode", "", "encodedMessage", "base64Encode", "byteArray", "batchRemoveFields", "", UserMetadata.KEYDATA_FILENAME, "", "batchSetFields", "map", "", "", "clear", "contains", "", "key", "getBoolean", "default", "getInt", "", "getLong", "", "getString", "putBoolean", "value", "putInt", "putLong", "putString", "registerChangeListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "remove", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultKeyValueStore implements KeyValueStore {
    private final StoreChangeListener changeListener;
    private final Map<String, Set<SharedPrefsChangeListener>> listenerMap;
    private final Preferences preferences;

    @Inject
    public DefaultKeyValueStore(Preferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.preferences = preferences;
        this.listenerMap = new LinkedHashMap();
        StoreChangeListener storeChangeListener = new StoreChangeListener(getListenerMap());
        this.changeListener = storeChangeListener;
        registerChangeListener(storeChangeListener);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public Map<String, Set<SharedPrefsChangeListener>> getListenerMap() {
        return this.listenerMap;
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putString(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.preferences.put(key, value);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.preferences.get(key, str);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putBoolean(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.preferences.putBoolean(key, value);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public boolean getBoolean(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.preferences.getBoolean(key, z);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putLong(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.preferences.putLong(key, value);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public long getLong(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.preferences.getLong(key, j);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putInt(String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.preferences.putInt(key, value);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public int getInt(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.preferences.getInt(key, i);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.preferences.remove(key);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public synchronized void batchRemoveFields(List<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Preferences preferences = this.preferences;
        Iterator<T> it = keys.iterator();
        while (it.hasNext()) {
            preferences.remove((String) it.next());
        }
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public synchronized void batchSetFields(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        Preferences preferences = this.preferences;
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                preferences.put(str, (String) value);
            } else if (value instanceof Integer) {
                preferences.putInt(str, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                preferences.putBoolean(str, ((Boolean) value).booleanValue());
            } else {
                if (!(value instanceof Long)) {
                    throw new Exception("Unsupported data type for " + value + '.');
                }
                preferences.putLong(str, ((Number) value).longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerChangeListener$lambda$4(StoreChangeListener listener, DefaultKeyValueStore this$0, PreferenceChangeEvent preferenceChangeEvent) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        listener.onValueChanged(this$0, preferenceChangeEvent.getKey());
    }

    public final void registerChangeListener(final StoreChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.preferences.addPreferenceChangeListener(new PreferenceChangeListener() { // from class: com.stripe.jvmcore.storage.DefaultKeyValueStore$$ExternalSyntheticLambda0
            @Override // java.util.prefs.PreferenceChangeListener
            public final void preferenceChange(PreferenceChangeEvent preferenceChangeEvent) {
                DefaultKeyValueStore.registerChangeListener$lambda$4(listener, this, preferenceChangeEvent);
            }
        });
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public boolean contains(String key) throws BackingStoreException {
        Intrinsics.checkNotNullParameter(key, "key");
        String[] strArrKeys = this.preferences.keys();
        Intrinsics.checkNotNullExpressionValue(strArrKeys, "keys(...)");
        return ArraysKt.contains(strArrKeys, key);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void clear() throws BackingStoreException {
        this.preferences.clear();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public String base64Encode(byte[] byteArray) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        String strEncodeToString = Base64.getMimeEncoder().encodeToString(byteArray);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public byte[] base64Decode(String encodedMessage) {
        Intrinsics.checkNotNullParameter(encodedMessage, "encodedMessage");
        byte[] bArrDecode = Base64.getMimeDecoder().decode(encodedMessage);
        Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
        return bArrDecode;
    }
}
