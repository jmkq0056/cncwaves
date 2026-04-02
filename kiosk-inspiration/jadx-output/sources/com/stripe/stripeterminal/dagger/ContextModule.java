package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.jvmcore.dagger.ForApplication;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContextModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0003H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0002\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/dagger/ContextModule;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "kotlin.jvm.PlatformType", "provideContext", "provideFilesDirectory", "Ljava/io/File;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ContextModule {
    private final Context context;

    public ContextModule(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context.getApplicationContext();
    }

    @Provides
    @Singleton
    @ForApplication
    public final Context provideContext() {
        Context context = this.context;
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return context;
    }

    @Provides
    @ForApplication
    public final File provideFilesDirectory() {
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        return filesDir;
    }
}
