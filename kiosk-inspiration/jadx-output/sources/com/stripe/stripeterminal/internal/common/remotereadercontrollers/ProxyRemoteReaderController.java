package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxyRemoteReaderController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "setReaderController", "", "discoveryConfiguration", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ProxyRemoteReaderController extends RemoteReaderController {
    public abstract void setReaderController(DiscoveryConfiguration discoveryConfiguration);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProxyRemoteReaderController(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        super(logger);
        Intrinsics.checkNotNullParameter(logger, "logger");
    }
}
