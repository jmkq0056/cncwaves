package com.stripe.offlinemode.dagger;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.offlinemode.ReaderEventListener;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineReaderEventsModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;", "", "()V", "provideReaderEventsListener", "Lcom/stripe/offlinemode/ReaderEventListener;", "offlineListener", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "Bindings", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class OfflineReaderEventsModule {
    public static final OfflineReaderEventsModule INSTANCE = new OfflineReaderEventsModule();

    /* JADX INFO: compiled from: OfflineReaderEventsModule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule$Bindings;", "", "bindReaderEventListener", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/offlinemode/ReaderEventListener;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        ReaderEventContracts.Listener bindReaderEventListener(ReaderEventListener listener);
    }

    private OfflineReaderEventsModule() {
    }

    @Provides
    @Reusable
    public final ReaderEventListener provideReaderEventsListener(OfflineListener offlineListener) {
        Intrinsics.checkNotNullParameter(offlineListener, "offlineListener");
        return new ReaderEventListener(offlineListener);
    }
}
