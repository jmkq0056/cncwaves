package com.example.digitalkiosk.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreateIntentResponse.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/models/CreateIntentResponse;", "", "intent", "Lcom/example/digitalkiosk/models/ServerPaymentIntent;", "order", "", "<init>", "(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)V", "getIntent", "()Lcom/example/digitalkiosk/models/ServerPaymentIntent;", "getOrder", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Lcom/example/digitalkiosk/models/ServerPaymentIntent;Ljava/lang/Integer;)Lcom/example/digitalkiosk/models/CreateIntentResponse;", "equals", "", "other", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CreateIntentResponse {
    private final ServerPaymentIntent intent;
    private final Integer order;

    public static /* synthetic */ CreateIntentResponse copy$default(CreateIntentResponse createIntentResponse, ServerPaymentIntent serverPaymentIntent, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            serverPaymentIntent = createIntentResponse.intent;
        }
        if ((i & 2) != 0) {
            num = createIntentResponse.order;
        }
        return createIntentResponse.copy(serverPaymentIntent, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ServerPaymentIntent getIntent() {
        return this.intent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getOrder() {
        return this.order;
    }

    public final CreateIntentResponse copy(ServerPaymentIntent intent, Integer order) {
        return new CreateIntentResponse(intent, order);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateIntentResponse)) {
            return false;
        }
        CreateIntentResponse createIntentResponse = (CreateIntentResponse) other;
        return Intrinsics.areEqual(this.intent, createIntentResponse.intent) && Intrinsics.areEqual(this.order, createIntentResponse.order);
    }

    public int hashCode() {
        ServerPaymentIntent serverPaymentIntent = this.intent;
        int iHashCode = (serverPaymentIntent == null ? 0 : serverPaymentIntent.hashCode()) * 31;
        Integer num = this.order;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "CreateIntentResponse(intent=" + this.intent + ", order=" + this.order + ')';
    }

    public CreateIntentResponse(ServerPaymentIntent serverPaymentIntent, Integer num) {
        this.intent = serverPaymentIntent;
        this.order = num;
    }

    public final ServerPaymentIntent getIntent() {
        return this.intent;
    }

    public final Integer getOrder() {
        return this.order;
    }
}
