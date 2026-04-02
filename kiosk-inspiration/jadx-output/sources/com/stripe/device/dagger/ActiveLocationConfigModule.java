package com.stripe.device.dagger;

import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.device.DefaultActiveLocationConfigRepository;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ActiveLocationConfigModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/device/dagger/ActiveLocationConfigModule;", "", "()V", "bindActiveLocationConfigRepository", "Lcom/stripe/device/ActiveLocationConfigRepository;", "impl", "Lcom/stripe/device/DefaultActiveLocationConfigRepository;", "bindActiveLocationConfigRepository$wiring", "Companion", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class ActiveLocationConfigModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract ActiveLocationConfigRepository bindActiveLocationConfigRepository$wiring(DefaultActiveLocationConfigRepository impl);

    /* JADX INFO: compiled from: ActiveLocationConfigModule.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;", "", "()V", "provideDefaultActiveLocationConfigRepository", "Lcom/stripe/device/DefaultActiveLocationConfigRepository;", "provideDefaultActiveLocationConfigRepository$wiring", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        @Singleton
        public final DefaultActiveLocationConfigRepository provideDefaultActiveLocationConfigRepository$wiring() {
            return new DefaultActiveLocationConfigRepository();
        }
    }
}
