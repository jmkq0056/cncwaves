package com.stripe.core.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.storage.KeyValueStore;
import com.stripe.jvmcore.storage.SharedPrefsChangeListener;
import com.stripe.jvmcore.storage.StoreChangeListener;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: AndroidKeyValueStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\t*\u0001\u000b\u0018\u0000 82\u00020\u0001:\u00018B\u001b\b\u0017\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000fH\u0016J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016J\u0016\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000f0\"H\u0016J\u001c\u0010#\u001a\u00020 2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020&0%H\u0016J\b\u0010'\u001a\u00020 H\u0016J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000fH\u0016J\u0018\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020)H\u0016J\u0018\u0010-\u001a\u00020.2\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010,\u001a\u000200H\u0016J\u001c\u00101\u001a\u0004\u0018\u00010\u000f2\u0006\u0010*\u001a\u00020\u000f2\b\u0010,\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u00102\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000f2\u0006\u00103\u001a\u00020)H\u0016J\u0018\u00104\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000f2\u0006\u00103\u001a\u00020.H\u0016J\u0018\u00105\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000f2\u0006\u00103\u001a\u000200H\u0016J\u0018\u00106\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u000fH\u0016J\u0010\u00107\u001a\u00020 2\u0006\u0010*\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR&\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/stripe/core/storage/AndroidKeyValueStore;", "Lcom/stripe/jvmcore/storage/KeyValueStore;", "context", "Landroid/content/Context;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "com/stripe/core/storage/AndroidKeyValueStore$listener$1", "Lcom/stripe/core/storage/AndroidKeyValueStore$listener$1;", "listenerMap", "", "", "", "Lcom/stripe/jvmcore/storage/SharedPrefsChangeListener;", "getListenerMap", "()Ljava/util/Map;", "sharedPreferences", "Landroid/content/SharedPreferences;", "getSharedPreferences", "()Landroid/content/SharedPreferences;", "sharedPreferencesDeferred", "Lkotlinx/coroutines/Deferred;", "base64Decode", "", "encodedMessage", "base64Encode", "byteArray", "batchRemoveFields", "", UserMetadata.KEYDATA_FILENAME, "", "batchSetFields", "map", "", "", "clear", "contains", "", "key", "getBoolean", "default", "getInt", "", "getLong", "", "getString", "putBoolean", "value", "putInt", "putLong", "putString", "remove", "Companion", "storage_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AndroidKeyValueStore implements KeyValueStore {
    public static final String ADMIN_SHARED_PREFS = "admin_prefs";
    private final Context context;
    private final AndroidKeyValueStore$listener$1 listener;
    private final Map<String, Set<SharedPrefsChangeListener>> listenerMap;
    private final Deferred<SharedPreferences> sharedPreferencesDeferred;

    /* JADX WARN: Type inference failed for: r8v3, types: [com.stripe.core.storage.AndroidKeyValueStore$listener$1] */
    public AndroidKeyValueStore(Context context, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.context = context;
        this.listenerMap = new LinkedHashMap();
        this.listener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.stripe.core.storage.AndroidKeyValueStore$listener$1
            private final StoreChangeListener changeListener;

            {
                this.changeListener = new StoreChangeListener(this.this$0.getListenerMap());
            }

            public final StoreChangeListener getChangeListener() {
                return this.changeListener;
            }

            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
                this.changeListener.onValueChanged(this.this$0, key);
            }
        };
        this.sharedPreferencesDeferred = BuildersKt__Builders_commonKt.async$default(scope, null, null, new AnonymousClass1(null), 3, null);
    }

    private final SharedPreferences getSharedPreferences() {
        return (SharedPreferences) BuildersKt__BuildersKt.runBlocking$default(null, new AndroidKeyValueStore$sharedPreferences$1(this, null), 1, null);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public Map<String, Set<SharedPrefsChangeListener>> getListenerMap() {
        return this.listenerMap;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public AndroidKeyValueStore(@ForApplication Context context, @IO CoroutineDispatcher dispatcher) {
        this(context, CoroutineScopeKt.CoroutineScope(dispatcher));
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
    }

    /* JADX INFO: renamed from: com.stripe.core.storage.AndroidKeyValueStore$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidKeyValueStore.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.storage.AndroidKeyValueStore$1", f = "AndroidKeyValueStore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SharedPreferences>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidKeyValueStore.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SharedPreferences> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SharedPreferences sharedPreferences = AndroidKeyValueStore.this.context.getSharedPreferences(AndroidKeyValueStore.ADMIN_SHARED_PREFS, 0);
                sharedPreferences.registerOnSharedPreferenceChangeListener(AndroidKeyValueStore.this.listener);
                return sharedPreferences;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putString(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.putString(key, value);
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getString(key, str);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putBoolean(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.putBoolean(key, value);
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public boolean getBoolean(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getBoolean(key, z);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putLong(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.putLong(key, value);
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public long getLong(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getLong(key, j);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void putInt(String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.putInt(key, value);
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public int getInt(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().getInt(key, i);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.remove(key);
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void batchRemoveFields(List<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        Iterator<T> it = keys.iterator();
        while (it.hasNext()) {
            editorEdit.remove((String) it.next());
        }
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void batchSetFields(Map<String, ? extends Object> map) throws Exception {
        Intrinsics.checkNotNullParameter(map, "map");
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                editorEdit.putString(str, (String) value);
            } else if (value instanceof Integer) {
                editorEdit.putInt(str, ((Number) value).intValue());
            } else if (value instanceof Boolean) {
                editorEdit.putBoolean(str, ((Boolean) value).booleanValue());
            } else {
                if (!(value instanceof Long)) {
                    throw new Exception("Unsupported data type for " + value + '.');
                }
                editorEdit.putLong(str, ((Number) value).longValue());
            }
        }
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public boolean contains(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getSharedPreferences().contains(key);
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public void clear() {
        SharedPreferences.Editor editorEdit = getSharedPreferences().edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public String base64Encode(byte[] byteArray) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        String strEncodeToString = Base64.encodeToString(byteArray, 0);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    @Override // com.stripe.jvmcore.storage.KeyValueStore
    public byte[] base64Decode(String encodedMessage) {
        Intrinsics.checkNotNullParameter(encodedMessage, "encodedMessage");
        byte[] bArrDecode = Base64.decode(encodedMessage, 0);
        Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
        return bArrDecode;
    }
}
