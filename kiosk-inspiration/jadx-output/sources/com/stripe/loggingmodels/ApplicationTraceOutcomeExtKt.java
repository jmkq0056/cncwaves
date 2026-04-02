package com.stripe.loggingmodels;

import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApplicationTraceOutcomeExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toOutcome", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ApplicationTraceOutcomeExtKt {

    /* JADX INFO: compiled from: ApplicationTraceOutcomeExt.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ApplicationTraceResult.ApplicationTraceOutcome.values().length];
            try {
                iArr[ApplicationTraceResult.ApplicationTraceOutcome.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApplicationTraceResult.ApplicationTraceOutcome.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApplicationTraceResult.ApplicationTraceOutcome.CANCELED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ApplicationTraceResult.ApplicationTraceOutcome.INTERRUPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Outcome toOutcome(ApplicationTraceResult.ApplicationTraceOutcome applicationTraceOutcome) {
        Intrinsics.checkNotNullParameter(applicationTraceOutcome, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[applicationTraceOutcome.ordinal()];
        if (i == 1) {
            return Outcome.Ok.INSTANCE;
        }
        if (i == 2) {
            return Outcome.GenericError.INSTANCE;
        }
        if (i == 3) {
            return Outcome.Canceled.INSTANCE;
        }
        if (i == 4) {
            return Outcome.Interrupted.INSTANCE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
