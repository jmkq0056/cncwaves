package org.fourthline.cling.model.meta;

/* JADX INFO: loaded from: classes2.dex */
public class StateVariableEventDetails {
    private final int eventMaximumRateMilliseconds;
    private final int eventMinimumDelta;
    private final boolean sendEvents;

    public StateVariableEventDetails() {
        this(true, 0, 0);
    }

    public int getEventMaximumRateMilliseconds() {
        return this.eventMaximumRateMilliseconds;
    }

    public int getEventMinimumDelta() {
        return this.eventMinimumDelta;
    }

    public boolean isSendEvents() {
        return this.sendEvents;
    }

    public StateVariableEventDetails(boolean z3) {
        this(z3, 0, 0);
    }

    public StateVariableEventDetails(boolean z3, int i4, int i5) {
        this.sendEvents = z3;
        this.eventMaximumRateMilliseconds = i4;
        this.eventMinimumDelta = i5;
    }
}
