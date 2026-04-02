package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.scottyab.rootbeer.RootBeer;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.stripeterminal.internal.common.introspection.RootAccessDetector;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: RootAccessModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/dagger/RootAccessModule;", "", "()V", "provideRootAccessDetector", "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;", "rootBeer", "Lcom/scottyab/rootbeer/RootBeer;", "provideRootBeer", "context", "Landroid/content/Context;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class RootAccessModule {
    @Provides
    @Singleton
    public final RootBeer provideRootBeer(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        RootBeer rootBeer = new RootBeer(context);
        rootBeer.setLogging(false);
        return rootBeer;
    }

    @Provides
    @Singleton
    public final RootAccessDetector provideRootAccessDetector(final RootBeer rootBeer) {
        Intrinsics.checkNotNullParameter(rootBeer, "rootBeer");
        return new RootAccessDetector() { // from class: com.stripe.stripeterminal.dagger.RootAccessModule.provideRootAccessDetector.1
            @Override // com.stripe.stripeterminal.internal.common.introspection.RootAccessDetector
            public void detectRootAccess(Function0<Unit> onRootAccessDetectedHandler) {
                Intrinsics.checkNotNullParameter(onRootAccessDetectedHandler, "onRootAccessDetectedHandler");
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1(rootBeer, onRootAccessDetectedHandler, null), 3, null);
            }
        };
    }
}
