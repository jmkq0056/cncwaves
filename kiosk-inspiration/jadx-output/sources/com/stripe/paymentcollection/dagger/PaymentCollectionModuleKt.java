package com.stripe.paymentcollection.dagger;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u0005¨\u0006\u0006"}, d2 = {"asPaymentCollectionLogger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "wiring"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionModuleKt {
    public static final PaymentCollectionLogger asPaymentCollectionLogger(final SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger) {
        Intrinsics.checkNotNullParameter(simpleLogger, "<this>");
        return new PaymentCollectionLogger() { // from class: com.stripe.paymentcollection.dagger.PaymentCollectionModuleKt.asPaymentCollectionLogger.1
            @Override // com.stripe.paymentcollection.log.PaymentCollectionLogger
            public void i(String message, Pair<String, ? extends Object>... keyValuePairs) {
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
                simpleLogger.i(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            }

            @Override // com.stripe.paymentcollection.log.PaymentCollectionLogger
            public void d(String message, Pair<String, ? extends Object>... keyValuePairs) {
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(keyValuePairs, "keyValuePairs");
                simpleLogger.d(message, (Pair[]) Arrays.copyOf(keyValuePairs, keyValuePairs.length));
            }

            @Override // com.stripe.paymentcollection.log.PaymentCollectionLogger
            public void w(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                simpleLogger.w(message, new Pair[0]);
            }

            @Override // com.stripe.paymentcollection.log.PaymentCollectionLogger
            public void e(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                simpleLogger.e(message, new Pair[0]);
            }
        };
    }
}
