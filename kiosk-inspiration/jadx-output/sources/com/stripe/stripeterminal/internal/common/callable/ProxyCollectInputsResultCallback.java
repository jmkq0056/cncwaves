package com.stripe.stripeterminal.internal.common.callable;

import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.callable.CollectInputsResultCallback;
import com.stripe.stripeterminal.external.models.CollectInputsResult;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxyCollectInputsResultCallback.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u0002`\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\fJ\u0016\u0010\u0010\u001a\u00020\f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u0002`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;", "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;", "collectInputsResultCallback", "formsIntegrationLogger", "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;", "proxyCollectInputsResultCallbackLogger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onStart", "onSuccess", "results", "", "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyCollectInputsResultCallback implements CollectInputsResultCallback {
    private final CollectInputsResultCallback collectInputsResultCallback;
    private final FormsIntegrationLogger formsIntegrationLogger;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> proxyCollectInputsResultCallbackLogger;

    public ProxyCollectInputsResultCallback(CollectInputsResultCallback collectInputsResultCallback, FormsIntegrationLogger formsIntegrationLogger, SimpleLogger<ApplicationTrace, ApplicationTraceResult> proxyCollectInputsResultCallbackLogger) {
        Intrinsics.checkNotNullParameter(collectInputsResultCallback, "collectInputsResultCallback");
        Intrinsics.checkNotNullParameter(formsIntegrationLogger, "formsIntegrationLogger");
        Intrinsics.checkNotNullParameter(proxyCollectInputsResultCallbackLogger, "proxyCollectInputsResultCallbackLogger");
        this.collectInputsResultCallback = collectInputsResultCallback;
        this.formsIntegrationLogger = formsIntegrationLogger;
        this.proxyCollectInputsResultCallbackLogger = proxyCollectInputsResultCallbackLogger;
    }

    public final void onStart() {
        this.formsIntegrationLogger.startEndToEndTimer();
    }

    @Override // com.stripe.stripeterminal.external.callable.CollectInputsResultCallback
    public void onSuccess(List<? extends CollectInputsResult> results) {
        Intrinsics.checkNotNullParameter(results, "results");
        try {
            this.formsIntegrationLogger.finishEndToEndTimer("SUCCESS");
            this.collectInputsResultCallback.onSuccess(results);
        } catch (Exception e) {
            this.proxyCollectInputsResultCallbackLogger.e("Unexpected failure in CollectInputsResultCallback.onSuccess", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
    public void onFailure(TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            this.proxyCollectInputsResultCallbackLogger.i("onFailure(" + e + ')', new Pair[0]);
            this.formsIntegrationLogger.finishEndToEndTimer(e.getErrorCode().name());
            this.collectInputsResultCallback.onFailure(e);
        } catch (Exception e2) {
            this.proxyCollectInputsResultCallbackLogger.e("Unexpected failure in CollectInputsResultCallback.onFailure", e2, new Pair[0]);
        }
    }
}
