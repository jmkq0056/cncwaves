package org.fourthline.cling.model.gena;

import android.support.v4.media.f;
import java.util.LinkedHashMap;
import java.util.Map;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GENASubscription<S extends Service> {
    public int actualDurationSeconds;
    public UnsignedIntegerFourBytes currentSequence;
    public Map<String, StateVariableValue<S>> currentValues;
    public int requestedDurationSeconds;
    public S service;
    public String subscriptionId;

    public GENASubscription(S s3) {
        this.requestedDurationSeconds = 1800;
        this.currentValues = new LinkedHashMap();
        this.service = s3;
    }

    public abstract void established();

    public abstract void eventReceived();

    public synchronized int getActualDurationSeconds() {
        return this.actualDurationSeconds;
    }

    public synchronized UnsignedIntegerFourBytes getCurrentSequence() {
        return this.currentSequence;
    }

    public synchronized Map<String, StateVariableValue<S>> getCurrentValues() {
        return this.currentValues;
    }

    public synchronized int getRequestedDurationSeconds() {
        return this.requestedDurationSeconds;
    }

    public synchronized S getService() {
        return this.service;
    }

    public synchronized String getSubscriptionId() {
        return this.subscriptionId;
    }

    public synchronized void setActualSubscriptionDurationSeconds(int i4) {
        this.actualDurationSeconds = i4;
    }

    public synchronized void setSubscriptionId(String str) {
        this.subscriptionId = str;
    }

    public String toString() {
        StringBuilder sbA = f.a("(GENASubscription, SID: ");
        sbA.append(getSubscriptionId());
        sbA.append(", SEQUENCE: ");
        sbA.append(getCurrentSequence());
        sbA.append(")");
        return sbA.toString();
    }

    public GENASubscription(S s3, int i4) {
        this(s3);
        this.requestedDurationSeconds = i4;
    }
}
