package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.loggingmodels.Outcome;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdatesHealthLogger.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000*:\u0010\u0003\"\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00042\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004¨\u0006\t"}, d2 = {"toFailureOutcome", "Lcom/stripe/loggingmodels/Outcome$Failure;", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "UpdatesHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "terminalsession_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UpdatesHealthLoggerKt {
    public static final Outcome.Failure toFailureOutcome(TerminalException terminalException) {
        Intrinsics.checkNotNullParameter(terminalException, "<this>");
        String strName = terminalException.getErrorCode().name();
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = strName.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return new UpdateFailureOutcome(lowerCase);
    }
}
