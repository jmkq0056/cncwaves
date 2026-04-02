package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.loggingmodels.Outcome;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdatesHealthLogger.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdateFailureOutcome;", "Lcom/stripe/loggingmodels/Outcome$Failure;", "outcome", "", "(Ljava/lang/String;)V", "getOutcome", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
final /* data */ class UpdateFailureOutcome implements Outcome.Failure {
    private final String outcome;

    public static /* synthetic */ UpdateFailureOutcome copy$default(UpdateFailureOutcome updateFailureOutcome, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updateFailureOutcome.outcome;
        }
        return updateFailureOutcome.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOutcome() {
        return this.outcome;
    }

    public final UpdateFailureOutcome copy(String outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        return new UpdateFailureOutcome(outcome);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UpdateFailureOutcome) && Intrinsics.areEqual(this.outcome, ((UpdateFailureOutcome) other).outcome);
    }

    public int hashCode() {
        return this.outcome.hashCode();
    }

    public String toString() {
        return "UpdateFailureOutcome(outcome=" + this.outcome + ')';
    }

    public UpdateFailureOutcome(String outcome) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        this.outcome = outcome;
    }

    @Override // com.stripe.loggingmodels.Outcome
    public String getOutcome() {
        return this.outcome;
    }
}
