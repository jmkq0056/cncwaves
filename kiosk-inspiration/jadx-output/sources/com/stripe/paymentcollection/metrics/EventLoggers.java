package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventLoggers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/stripe/paymentcollection/metrics/EventLoggers;", "", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "stageEventLogger", "Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "discreteEventLogger", "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "onlineAuthStateLogger", "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "tippingLogger", "Lcom/stripe/paymentcollection/metrics/TippingLogger;", "(Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;Lcom/stripe/paymentcollection/metrics/TippingLogger;)V", "getDiscreteEventLogger", "()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "getEndToEndEventLogger", "()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "getOnlineAuthStateLogger", "()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;", "getStageEventLogger", "()Lcom/stripe/paymentcollection/metrics/StageEventLogger;", "getTippingLogger", "()Lcom/stripe/paymentcollection/metrics/TippingLogger;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventLoggers {
    private final DiscreteEventLogger discreteEventLogger;
    private final EndToEndEventLogger endToEndEventLogger;
    private final OnlineAuthStateLogger onlineAuthStateLogger;
    private final StageEventLogger stageEventLogger;
    private final TippingLogger tippingLogger;

    public EventLoggers(EndToEndEventLogger endToEndEventLogger, StageEventLogger stageEventLogger, DiscreteEventLogger discreteEventLogger, OnlineAuthStateLogger onlineAuthStateLogger, TippingLogger tippingLogger) {
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        Intrinsics.checkNotNullParameter(stageEventLogger, "stageEventLogger");
        Intrinsics.checkNotNullParameter(discreteEventLogger, "discreteEventLogger");
        Intrinsics.checkNotNullParameter(onlineAuthStateLogger, "onlineAuthStateLogger");
        Intrinsics.checkNotNullParameter(tippingLogger, "tippingLogger");
        this.endToEndEventLogger = endToEndEventLogger;
        this.stageEventLogger = stageEventLogger;
        this.discreteEventLogger = discreteEventLogger;
        this.onlineAuthStateLogger = onlineAuthStateLogger;
        this.tippingLogger = tippingLogger;
    }

    public final EndToEndEventLogger getEndToEndEventLogger() {
        return this.endToEndEventLogger;
    }

    public final StageEventLogger getStageEventLogger() {
        return this.stageEventLogger;
    }

    public final DiscreteEventLogger getDiscreteEventLogger() {
        return this.discreteEventLogger;
    }

    public final OnlineAuthStateLogger getOnlineAuthStateLogger() {
        return this.onlineAuthStateLogger;
    }

    public final TippingLogger getTippingLogger() {
        return this.tippingLogger;
    }
}
