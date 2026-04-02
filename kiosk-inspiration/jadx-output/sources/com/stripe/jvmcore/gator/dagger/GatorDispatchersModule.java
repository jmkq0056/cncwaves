package com.stripe.jvmcore.gator.dagger;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.gator.GatorEventDispatcher;
import com.stripe.jvmcore.gator.GatorSchemaEventDispatcher;
import com.stripe.jvmcore.gator.GatorTraceDispatcher;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.proto.api.gator.ProxyEventPb;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.Binds;
import dagger.Module;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: GatorDispatchersModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000bH'J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\u000e\u001a\u00020\u000fH'¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/gator/dagger/GatorDispatchersModule;", "", "()V", "bindEventDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "gatorEventDispatcher", "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;", "bindSchemaEventDispatcher", "Lcom/stripe/proto/api/gator/LogEvent;", "gatorSchemaEventDispatcher", "Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;", "bindTraceDispatcher", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "gatorTraceDispatcher", "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;", "gator"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class GatorDispatchersModule {
    @Singleton
    @Gator
    @Binds
    public abstract Dispatcher<ProxyEventPb> bindEventDispatcher(GatorEventDispatcher gatorEventDispatcher);

    @Singleton
    @Gator
    @Binds
    public abstract Dispatcher<LogEvent> bindSchemaEventDispatcher(GatorSchemaEventDispatcher gatorSchemaEventDispatcher);

    @Singleton
    @Gator
    @Binds
    public abstract Dispatcher<ProxySpanPb> bindTraceDispatcher(GatorTraceDispatcher gatorTraceDispatcher);
}
