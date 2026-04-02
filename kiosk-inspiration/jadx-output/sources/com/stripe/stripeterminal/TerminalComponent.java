package com.stripe.stripeterminal;

import com.stripe.jvmcore.clientlogger.dagger.ClientLoggerDispatcherModule;
import com.stripe.jvmcore.logging.dagger.MetricLoggerCollectorModule;
import com.stripe.jvmcore.logging.dagger.TraceLoggerCollectorModule;
import com.stripe.jvmcore.logging.terminal.dagger.LogLevelModule;
import com.stripe.stripeterminal.dagger.ContextModule;
import com.stripe.stripeterminal.dagger.Dependencies;
import com.stripe.stripeterminal.dagger.OfflineModule;
import com.stripe.stripeterminal.dagger.TerminalCommonComponent;
import com.stripe.stripeterminal.dagger.TerminalCommonModule;
import com.stripe.stripeterminal.dagger.TerminalModule;
import dagger.Component;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Component(dependencies = {Dependencies.class}, modules = {SdkBuildVariantModule.class, TerminalCommonModule.class})
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\ba\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/TerminalComponent;", "Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;", "Factory", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TerminalComponent extends TerminalCommonComponent {

    /* JADX INFO: compiled from: TerminalComponent.kt */
    @Component.Factory
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001JH\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/TerminalComponent$Factory;", "", "create", "Lcom/stripe/stripeterminal/TerminalComponent;", "dependencies", "Lcom/stripe/stripeterminal/dagger/Dependencies;", "terminalModule", "Lcom/stripe/stripeterminal/dagger/TerminalModule;", "offlineModule", "Lcom/stripe/stripeterminal/dagger/OfflineModule;", "contextModule", "Lcom/stripe/stripeterminal/dagger/ContextModule;", "logLevelModule", "Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;", "metricLoggerCollectorModule", "Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;", "traceLoggerCollectorModule", "Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;", "clientLoggerDispatcherModule", "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Factory {
        TerminalComponent create(Dependencies dependencies, TerminalModule terminalModule, OfflineModule offlineModule, ContextModule contextModule, LogLevelModule logLevelModule, MetricLoggerCollectorModule metricLoggerCollectorModule, TraceLoggerCollectorModule traceLoggerCollectorModule, ClientLoggerDispatcherModule clientLoggerDispatcherModule);
    }
}
