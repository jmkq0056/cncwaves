package com.stripe.stripeterminal.internal.common.validators;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: TipEligibleValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J'\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0012R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006j\u0002`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;", "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "validateTipEligibleAmount", "", "tipEligibleAmount", "", "skipTipping", "", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", "(Ljava/lang/Long;ZLjava/lang/String;)V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultTipEligibleValidator implements TipEligibleValidator {
    private static final long CHARGE_MAX = 99999999;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    @Inject
    public DefaultTipEligibleValidator(LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultTipEligibleValidator.class));
    }

    @Override // com.stripe.stripeterminal.internal.common.validators.TipEligibleValidator
    public void validateTipEligibleAmount(Long tipEligibleAmount, boolean skipTipping, String currencyCode) throws TerminalException {
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        if (tipEligibleAmount != null) {
            long jLongValue = tipEligibleAmount.longValue();
            if (jLongValue < 0) {
                TerminalException terminalException = new TerminalException(TerminalErrorCode.INVALID_TIP_PARAMETER, "Invalid tip eligible amount. Tip eligible amount must be greater than or equal to 0 in " + currencyCode + '.', null, null, 12, null);
                this.logger.e("tipEligibleAmount less than 0: " + jLongValue, terminalException, new Pair[0]);
                throw terminalException;
            }
            if (jLongValue > 0 && skipTipping) {
                TerminalException terminalException2 = new TerminalException(TerminalErrorCode.INVALID_TIP_PARAMETER, "Invalid combination of skip_tipping and eligible_amount. If eligible_amount is greater than 0, skip_tipping cannot be set to true.", null, null, 12, null);
                this.logger.e("tipEligibleAmount > 0 and skipTipping == true: " + jLongValue, terminalException2, new Pair[0]);
                throw terminalException2;
            }
            if (jLongValue <= CHARGE_MAX) {
                return;
            }
            TerminalException terminalException3 = new TerminalException(TerminalErrorCode.INVALID_TIP_PARAMETER, "Invalid tip eligible amount. Tip eligible amount must be less than 99999999 in " + currencyCode + '.', null, null, 12, null);
            this.logger.e("tipEligibleAmount > max value: " + jLongValue, terminalException3, new Pair[0]);
            throw terminalException3;
        }
    }
}
