package com.stripe.jvmcore.storage.dagger;

import com.stripe.jvmcore.dagger.Storage;
import dagger.Module;
import dagger.Provides;
import java.util.prefs.Preferences;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreferencesModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/storage/dagger/PreferencesModule;", "", "()V", "provideDefaultPreferences", "Ljava/util/prefs/Preferences;", "namespace", "", "storage"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class PreferencesModule {
    @Provides
    public final Preferences provideDefaultPreferences(@Storage String namespace) {
        Intrinsics.checkNotNullParameter(namespace, "namespace");
        Preferences preferencesNode = Preferences.userRoot().node(namespace);
        Intrinsics.checkNotNullExpressionValue(preferencesNode, "node(...)");
        return preferencesNode;
    }
}
