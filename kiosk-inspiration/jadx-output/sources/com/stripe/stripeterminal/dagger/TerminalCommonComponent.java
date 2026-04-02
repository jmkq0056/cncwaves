package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.ConnectionTokenManagement;
import com.stripe.jvmcore.dagger.Transaction;
import com.stripe.jvmcore.logging.terminal.contracts.LogInitializer;
import com.stripe.jvmcore.logging.terminal.log.LogFlusher;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.stripeterminal.internal.common.introspection.ApiLevelValidator;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import com.stripe.stripeterminal.internal.common.introspection.RootAccessDetector;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalCommonComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b`\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078gX¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0017X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0012\u0010\"\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0012\u0010&\u001a\u00020'X¦\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0012\u0010*\u001a\u00020+X¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0012\u0010.\u001a\u00020/X¦\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0014\u00102\u001a\u00020\u00078gX¦\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00064À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;", "", "apiLevelValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;", "getApiLevelValidator", "()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;", "connectionExecutorService", "Ljava/util/concurrent/ExecutorService;", "getConnectionExecutorService", "()Ljava/util/concurrent/ExecutorService;", "cotsAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "getCotsAdapter", "()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "getLocationHandler", "()Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "locationValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;", "getLocationValidator", "()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;", "logInitializer", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;", "getLogInitializer", "()Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "getMetricLogger", "()Lcom/stripe/loggingmodels/MetricLogger;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "getOkHttpClientProvider", "()Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "rootAccessDetector", "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;", "getRootAccessDetector", "()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;", "terminalSession", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "getTerminalSession", "()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;", "traceFlusher", "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "getTraceFlusher", "()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "getTraceLogger", "()Lcom/stripe/loggingmodels/TraceLogger;", "transactionExecutorService", "getTransactionExecutorService", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TerminalCommonComponent {
    ApiLevelValidator getApiLevelValidator();

    @ConnectionTokenManagement
    ExecutorService getConnectionExecutorService();

    CotsAdapter getCotsAdapter();

    LocationHandler getLocationHandler();

    LocationServicesValidator getLocationValidator();

    LogInitializer getLogInitializer();

    MetricLogger getMetricLogger();

    OkHttpClientProvider getOkHttpClientProvider();

    RootAccessDetector getRootAccessDetector();

    TerminalSession getTerminalSession();

    LogFlusher getTraceFlusher();

    TraceLogger getTraceLogger();

    @Transaction
    ExecutorService getTransactionExecutorService();
}
