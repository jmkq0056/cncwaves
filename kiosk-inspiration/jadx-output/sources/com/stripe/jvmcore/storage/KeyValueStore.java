package com.stripe.jvmcore.storage;

import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: compiled from: KeyValueStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H&J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\nH&J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0011H&J\u001c\u0010\u0012\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0014H&J\b\u0010\u0015\u001a\u00020\u000fH&J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H&J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0017H&J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001eH&J\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H&J\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0017H&J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001cH&J\u0018\u0010#\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001eH&J\u0018\u0010$\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H&J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H&R$\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006&À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/storage/KeyValueStore;", "", "listenerMap", "", "", "", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "getListenerMap", "()Ljava/util/Map;", "base64Decode", "", "encodedMessage", "base64Encode", "byteArray", "batchRemoveFields", "", UserMetadata.KEYDATA_FILENAME, "", "batchSetFields", "map", "", "clear", "contains", "", "key", "getBoolean", "default", "getInt", "", "getLong", "", "getString", "putBoolean", "value", "putInt", "putLong", "putString", "remove", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface KeyValueStore {
    byte[] base64Decode(String encodedMessage);

    String base64Encode(byte[] byteArray);

    void batchRemoveFields(List<String> keys);

    void batchSetFields(Map<String, ? extends Object> map);

    void clear();

    boolean contains(String key);

    boolean getBoolean(String key, boolean z);

    int getInt(String key, int i);

    Map<String, Set<SharedPrefsChangeListener>> getListenerMap();

    long getLong(String key, long j);

    String getString(String key, String str);

    void putBoolean(String key, boolean value);

    void putInt(String key, int value);

    void putLong(String key, long value);

    void putString(String key, String value);

    void remove(String key);
}
