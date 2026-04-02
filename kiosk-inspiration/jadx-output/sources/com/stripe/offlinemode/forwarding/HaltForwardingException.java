package com.stripe.offlinemode.forwarding;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: HaltForwardingException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0003\n\u000b\fB\u001b\b\u0004\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\u0082\u0001\u0003\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/stripe/offlinemode/forwarding/HaltForwardingException;", "", "cause", "message", "", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "getCause", "()Ljava/lang/Throwable;", "getMessage", "()Ljava/lang/String;", "ExceededMaxRetries", "FailedToFetchCredentials", "TerminalIsOffline", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class HaltForwardingException extends Throwable {
    private final Throwable cause;
    private final String message;

    public /* synthetic */ HaltForwardingException(Throwable th, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    /* JADX INFO: compiled from: HaltForwardingException.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException;", "cause", "", "(Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TerminalIsOffline extends HaltForwardingException {
        private final Throwable cause;

        @Override // com.stripe.offlinemode.forwarding.HaltForwardingException, java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }

        public TerminalIsOffline(Throwable th) {
            super(th, "Halt forwarding offline payments, terminal network status is offline. Would resume when terminal regains connectivity to Stripe's backend.", null);
            this.cause = th;
        }
    }

    private HaltForwardingException(Throwable th, String str) {
        super(str, th);
        this.cause = th;
        this.message = str;
    }

    /* JADX INFO: compiled from: HaltForwardingException.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException;", "cause", "", "(Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FailedToFetchCredentials extends HaltForwardingException {
        private final Throwable cause;

        @Override // com.stripe.offlinemode.forwarding.HaltForwardingException, java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }

        public FailedToFetchCredentials(Throwable th) {
            super(th, "Halt forwarding offline payments, failed to fetch credentials. Will reattempt on next network transition.", null);
            this.cause = th;
        }
    }

    /* JADX INFO: compiled from: HaltForwardingException.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;", "Lcom/stripe/offlinemode/forwarding/HaltForwardingException;", "cause", "", "(Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ExceededMaxRetries extends HaltForwardingException {
        private final Throwable cause;

        @Override // com.stripe.offlinemode.forwarding.HaltForwardingException, java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }

        public ExceededMaxRetries(Throwable th) {
            super(th, "Halt forwarding payments, exceeded max retries and terminal network status is unknown. Would resume when terminal regains connectivity to Stripe's backend.", null);
            this.cause = th;
        }
    }
}
