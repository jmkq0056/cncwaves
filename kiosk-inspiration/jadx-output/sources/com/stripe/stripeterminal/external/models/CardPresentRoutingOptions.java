package com.stripe.stripeterminal.external.models;

import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CardPresentRoutingOptions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 $2\u00060\u0001j\u0002`\u0002:\u0002#$B3\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u001f\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!HÁ\u0001¢\u0006\u0002\b\"R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006%"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "requestedPriority", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "computedPriority", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)V", "getComputedPriority", "()Ljava/util/List;", "getRequestedPriority", "()Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class CardPresentRoutingOptions implements java.io.Serializable {
    private final List<RoutingPriority> computedPriority;
    private final RoutingPriority requestedPriority;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {RoutingPriority.INSTANCE.serializer(), new ArrayListSerializer(RoutingPriority.INSTANCE.serializer())};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CardPresentRoutingOptions copy$default(CardPresentRoutingOptions cardPresentRoutingOptions, RoutingPriority routingPriority, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            routingPriority = cardPresentRoutingOptions.requestedPriority;
        }
        if ((i & 2) != 0) {
            list = cardPresentRoutingOptions.computedPriority;
        }
        return cardPresentRoutingOptions.copy(routingPriority, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final RoutingPriority getRequestedPriority() {
        return this.requestedPriority;
    }

    public final List<RoutingPriority> component2() {
        return this.computedPriority;
    }

    public final CardPresentRoutingOptions copy(RoutingPriority requestedPriority, List<? extends RoutingPriority> computedPriority) {
        return new CardPresentRoutingOptions(requestedPriority, computedPriority);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CardPresentRoutingOptions)) {
            return false;
        }
        CardPresentRoutingOptions cardPresentRoutingOptions = (CardPresentRoutingOptions) other;
        return this.requestedPriority == cardPresentRoutingOptions.requestedPriority && Intrinsics.areEqual(this.computedPriority, cardPresentRoutingOptions.computedPriority);
    }

    public int hashCode() {
        RoutingPriority routingPriority = this.requestedPriority;
        int iHashCode = (routingPriority == null ? 0 : routingPriority.hashCode()) * 31;
        List<RoutingPriority> list = this.computedPriority;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "CardPresentRoutingOptions(requestedPriority=" + this.requestedPriority + ", computedPriority=" + this.computedPriority + ')';
    }

    /* JADX INFO: compiled from: CardPresentRoutingOptions.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CardPresentRoutingOptions> serializer() {
            return CardPresentRoutingOptions$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CardPresentRoutingOptions(int i, RoutingPriority routingPriority, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CardPresentRoutingOptions$$serializer.INSTANCE.getDescriptor());
        }
        this.requestedPriority = routingPriority;
        this.computedPriority = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CardPresentRoutingOptions(RoutingPriority routingPriority, List<? extends RoutingPriority> list) {
        this.requestedPriority = routingPriority;
        this.computedPriority = list;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CardPresentRoutingOptions self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, kSerializerArr[0], self.requestedPriority);
        output.encodeNullableSerializableElement(serialDesc, 1, kSerializerArr[1], self.computedPriority);
    }

    public final RoutingPriority getRequestedPriority() {
        return this.requestedPriority;
    }

    public final List<RoutingPriority> getComputedPriority() {
        return this.computedPriority;
    }
}
