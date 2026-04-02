package com.stripe.hardware.status;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: IntegrityCheckError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/hardware/status/IntegrityCheckError;", "Lcom/stripe/hardware/status/ReaderException;", "error", "", "mode", "Lcom/stripe/hardware/status/BbposErrorMode;", "(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)V", "getError", "()Ljava/lang/String;", "getMode", "()Lcom/stripe/hardware/status/BbposErrorMode;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class IntegrityCheckError extends ReaderException {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex INTEGRITY_ERROR_REGEX = new Regex("Integrity Check Error Code: ([0-9]+)");
    private final String error;
    private final BbposErrorMode mode;

    public static /* synthetic */ IntegrityCheckError copy$default(IntegrityCheckError integrityCheckError, String str, BbposErrorMode bbposErrorMode, int i, Object obj) {
        if ((i & 1) != 0) {
            str = integrityCheckError.error;
        }
        if ((i & 2) != 0) {
            bbposErrorMode = integrityCheckError.mode;
        }
        return integrityCheckError.copy(str, bbposErrorMode);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BbposErrorMode getMode() {
        return this.mode;
    }

    public final IntegrityCheckError copy(String error, BbposErrorMode mode) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(mode, "mode");
        return new IntegrityCheckError(error, mode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IntegrityCheckError)) {
            return false;
        }
        IntegrityCheckError integrityCheckError = (IntegrityCheckError) other;
        return Intrinsics.areEqual(this.error, integrityCheckError.error) && this.mode == integrityCheckError.mode;
    }

    public int hashCode() {
        return (this.error.hashCode() * 31) + this.mode.hashCode();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "IntegrityCheckError(error=" + this.error + ", mode=" + this.mode + ')';
    }

    public final String getError() {
        return this.error;
    }

    public final BbposErrorMode getMode() {
        return this.mode;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntegrityCheckError(String error, BbposErrorMode mode) {
        super(error, null, 2, null);
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.error = error;
        this.mode = mode;
    }

    /* JADX INFO: compiled from: IntegrityCheckError.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/hardware/status/IntegrityCheckError$Companion;", "", "()V", "INTEGRITY_ERROR_REGEX", "Lkotlin/text/Regex;", "fromErrorMessage", "Lcom/stripe/hardware/status/IntegrityCheckError;", "errorMessage", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final IntegrityCheckError fromErrorMessage(String errorMessage) {
            MatchResult.Destructured destructured;
            String str;
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            MatchResult matchResultFind$default = Regex.find$default(IntegrityCheckError.INTEGRITY_ERROR_REGEX, errorMessage, 0, 2, null);
            if (matchResultFind$default != null && (destructured = matchResultFind$default.getDestructured()) != null && (str = destructured.getMatch().getGroupValues().get(1)) != null) {
                String str2 = str;
                str = str2.length() != 0 ? str2 : null;
            }
            return new IntegrityCheckError(errorMessage, BbposErrorMode.INSTANCE.getErrorMode(str));
        }
    }
}
