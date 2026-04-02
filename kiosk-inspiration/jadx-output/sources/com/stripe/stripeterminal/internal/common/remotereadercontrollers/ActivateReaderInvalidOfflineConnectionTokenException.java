package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ActivateReaderInvalidOfflineConnectionTokenException.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \b2\u00060\u0001j\u0002`\u0002:\u0001\bB\u000f\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "codeAsMessage", "", "(Ljava/lang/String;)V", "getCodeAsMessage", "()Ljava/lang/String;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateReaderInvalidOfflineConnectionTokenException extends Exception {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String ERROR_MESSAGE_PREFIX = "Invalid API Key provided: psst_off";
    private final String codeAsMessage;

    public final String getCodeAsMessage() {
        return this.codeAsMessage;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateReaderInvalidOfflineConnectionTokenException(String codeAsMessage) {
        super(codeAsMessage);
        Intrinsics.checkNotNullParameter(codeAsMessage, "codeAsMessage");
        this.codeAsMessage = codeAsMessage;
    }

    /* JADX INFO: compiled from: ActivateReaderInvalidOfflineConnectionTokenException.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;", "", "()V", "ERROR_MESSAGE_PREFIX", "", "addInvalidOfflineConnectionTokenExceptionCauseIfNeeded", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "crpcError", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TerminalException addInvalidOfflineConnectionTokenExceptionCauseIfNeeded(TerminalException terminalException, CrpcResponse.ApplicationError<?> crpcError) {
            Intrinsics.checkNotNullParameter(terminalException, "<this>");
            Intrinsics.checkNotNullParameter(crpcError, "crpcError");
            return StringsKt.startsWith$default(crpcError.getMessage(), ActivateReaderInvalidOfflineConnectionTokenException.ERROR_MESSAGE_PREFIX, false, 2, (Object) null) ? new TerminalException(terminalException.getErrorCode(), terminalException.getErrorMessage(), new ActivateReaderInvalidOfflineConnectionTokenException(crpcError.getCode().name()), null, 8, null) : terminalException;
        }
    }
}
