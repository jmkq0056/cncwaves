package com.stripe.stripeterminal.internal.common.callable;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.models.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxyDiscoveryListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callable/ProxyDiscoveryListener;", "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onUpdateDiscoveredReaders", "", "readers", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyDiscoveryListener implements DiscoveryListener {
    private final DiscoveryListener listener;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public ProxyDiscoveryListener(DiscoveryListener listener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.listener = listener;
        this.logger = logger;
    }

    @Override // com.stripe.stripeterminal.external.callable.DiscoveryListener
    public void onUpdateDiscoveredReaders(List<Reader> readers) {
        Intrinsics.checkNotNullParameter(readers, "readers");
        try {
            SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
            StringBuilder sbAppend = new StringBuilder().append("onUpdateDiscoveredReaders(");
            List<Reader> list = readers;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((Reader) it.next()).getSerialNumber());
            }
            simpleLogger.i(sbAppend.append(arrayList).append(')').toString(), new Pair[0]);
            this.listener.onUpdateDiscoveredReaders(readers);
        } catch (Exception e) {
            this.logger.e("Unexpected failure in DiscoveryListener.onUpdateDiscoveredReaders", e, new Pair[0]);
        }
    }
}
