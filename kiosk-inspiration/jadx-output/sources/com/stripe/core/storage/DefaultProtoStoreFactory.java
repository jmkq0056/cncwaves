package com.stripe.core.storage;

import android.app.Application;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ProtoStoreFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JP\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0004\b\u0000\u0010\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\t0\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\t0\u000f2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/core/storage/DefaultProtoStoreFactory;", "Lcom/stripe/core/storage/ProtoStoreFactory;", "application", "Landroid/app/Application;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;)V", "create", "Lcom/stripe/core/storage/ProtoStore;", "T", "fileName", "", "adapter", "Lcom/squareup/wire/ProtoAdapter;", "defaultValueFactory", "Lkotlin/Function0;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "storage_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultProtoStoreFactory implements ProtoStoreFactory {
    private final CoroutineScope appScope;
    private final Application application;

    public DefaultProtoStoreFactory(Application application, CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        this.application = application;
        this.appScope = appScope;
    }

    @Override // com.stripe.core.storage.ProtoStoreFactory
    public <T> ProtoStore<T> create(String fileName, ProtoAdapter<T> adapter, Function0<? extends T> defaultValueFactory, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(defaultValueFactory, "defaultValueFactory");
        Intrinsics.checkNotNullParameter(logger, "logger");
        return new ProtoDataStore(this.application, this.appScope, fileName, new ProtoSerializer(adapter, defaultValueFactory, logger));
    }
}
