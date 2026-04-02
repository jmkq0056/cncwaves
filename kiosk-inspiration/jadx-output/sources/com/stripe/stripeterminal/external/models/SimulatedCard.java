package com.stripe.stripeterminal.external.models;

import com.stripe.stripeterminal.external.internal.EmvBlob;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimulatedCard.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B'\b\u0001\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJ\t\u0010\u0018\u001a\u00020\tHÆ\u0003J\u000e\u0010\u0019\u001a\u00020\u0006HÀ\u0003¢\u0006\u0002\b\u001aJ\u000e\u0010\u001b\u001a\u00020\fHÀ\u0003¢\u0006\u0002\b\u001cJ\u000e\u0010\u001d\u001a\u00020\fHÀ\u0003¢\u0006\u0002\b\u001eJ1\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\fHÆ\u0001J\u001e\u0010 \u001a\u00020\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%H\u0007J\u0013\u0010&\u001a\u00020%2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\fHÖ\u0001J\t\u0010)\u001a\u00020\u0006HÖ\u0001R\u001c\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\r\u001a\u00020\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0014\u0010\n\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006*"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SimulatedCard;", "", "cardType", "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;", "(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V", "testCardNumber", "", "(Ljava/lang/String;)V", "emvBlob", "Lcom/stripe/stripeterminal/external/internal/EmvBlob;", "pan", "expMonth", "", "expYear", "(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V", "getEmvBlob$annotations", "()V", "getEmvBlob", "()Lcom/stripe/stripeterminal/external/internal/EmvBlob;", "getExpMonth$public_release", "()I", "getExpYear$public_release", "getPan$public_release", "()Ljava/lang/String;", "component1", "component2", "component2$public_release", "component3", "component3$public_release", "component4", "component4$public_release", "copy", "emvForSimulatedCard", "computedPriority", "", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "isScaRecollection", "", "equals", "other", "hashCode", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SimulatedCard {
    private final EmvBlob emvBlob;
    private final int expMonth;
    private final int expYear;
    private final String pan;

    public static /* synthetic */ SimulatedCard copy$default(SimulatedCard simulatedCard, EmvBlob emvBlob, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            emvBlob = simulatedCard.emvBlob;
        }
        if ((i3 & 2) != 0) {
            str = simulatedCard.pan;
        }
        if ((i3 & 4) != 0) {
            i = simulatedCard.expMonth;
        }
        if ((i3 & 8) != 0) {
            i2 = simulatedCard.expYear;
        }
        return simulatedCard.copy(emvBlob, str, i, i2);
    }

    public static /* synthetic */ void getEmvBlob$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final EmvBlob getEmvBlob() {
        return this.emvBlob;
    }

    /* JADX INFO: renamed from: component2$public_release, reason: from getter */
    public final String getPan() {
        return this.pan;
    }

    /* JADX INFO: renamed from: component3$public_release, reason: from getter */
    public final int getExpMonth() {
        return this.expMonth;
    }

    /* JADX INFO: renamed from: component4$public_release, reason: from getter */
    public final int getExpYear() {
        return this.expYear;
    }

    public final SimulatedCard copy(EmvBlob emvBlob, String pan, int expMonth, int expYear) {
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(pan, "pan");
        return new SimulatedCard(emvBlob, pan, expMonth, expYear);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimulatedCard)) {
            return false;
        }
        SimulatedCard simulatedCard = (SimulatedCard) other;
        return Intrinsics.areEqual(this.emvBlob, simulatedCard.emvBlob) && Intrinsics.areEqual(this.pan, simulatedCard.pan) && this.expMonth == simulatedCard.expMonth && this.expYear == simulatedCard.expYear;
    }

    public int hashCode() {
        return (((((this.emvBlob.hashCode() * 31) + this.pan.hashCode()) * 31) + Integer.hashCode(this.expMonth)) * 31) + Integer.hashCode(this.expYear);
    }

    public String toString() {
        return "SimulatedCard(emvBlob=" + this.emvBlob + ", pan=" + this.pan + ", expMonth=" + this.expMonth + ", expYear=" + this.expYear + ')';
    }

    public SimulatedCard(EmvBlob emvBlob, String pan, int i, int i2) {
        Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
        Intrinsics.checkNotNullParameter(pan, "pan");
        this.emvBlob = emvBlob;
        this.pan = pan;
        this.expMonth = i;
        this.expYear = i2;
    }

    public final EmvBlob getEmvBlob() {
        return this.emvBlob;
    }

    public final String getPan$public_release() {
        return this.pan;
    }

    public final int getExpMonth$public_release() {
        return this.expMonth;
    }

    public final int getExpYear$public_release() {
        return this.expYear;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimulatedCard(SimulatedCardType cardType) {
        this(EmvBlob.INSTANCE.fromCardType$public_release(cardType), cardType.getCardNumber(), cardType.getExpMonth(), cardType.getExpYear());
        Intrinsics.checkNotNullParameter(cardType, "cardType");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimulatedCard(String testCardNumber) {
        this(EmvBlob.INSTANCE.fromTestCardNumber$public_release(testCardNumber), testCardNumber, 12, 30);
        Intrinsics.checkNotNullParameter(testCardNumber, "testCardNumber");
    }

    public final EmvBlob emvForSimulatedCard(List<? extends RoutingPriority> computedPriority, boolean isScaRecollection) {
        Intrinsics.checkNotNullParameter(computedPriority, "computedPriority");
        return EmvBlob.INSTANCE.generateEmvData$public_release(this.pan, this.expMonth, this.expYear, computedPriority, isScaRecollection);
    }
}
