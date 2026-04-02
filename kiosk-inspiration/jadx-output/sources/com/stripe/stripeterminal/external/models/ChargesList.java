package com.stripe.stripeterminal.external.models;

import java.util.Arrays;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: PaymentIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0002\"#B)\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u0015\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\u000bJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÀ\u0003¢\u0006\u0004\b\u0010\u0010\rJ\u001e\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 HÁ\u0001¢\u0006\u0002\b!R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ChargesList;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "data", "", "Lcom/stripe/stripeterminal/external/models/Charge;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(I[Lcom/stripe/stripeterminal/external/models/Charge;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "([Lcom/stripe/stripeterminal/external/models/Charge;)V", "getData$public_release", "()[Lcom/stripe/stripeterminal/external/models/Charge;", "[Lcom/stripe/stripeterminal/external/models/Charge;", "component1", "component1$public_release", "copy", "([Lcom/stripe/stripeterminal/external/models/Charge;)Lcom/stripe/stripeterminal/external/models/ChargesList;", "equals", "", "other", "", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class ChargesList implements java.io.Serializable {
    private final Charge[] data;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new ReferenceArraySerializer(Reflection.getOrCreateKotlinClass(Charge.class), Charge$$serializer.INSTANCE)};

    /* JADX WARN: Multi-variable type inference failed */
    public ChargesList() {
        this((Charge[]) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public static /* synthetic */ ChargesList copy$default(ChargesList chargesList, Charge[] chargeArr, int i, Object obj) {
        if ((i & 1) != 0) {
            chargeArr = chargesList.data;
        }
        return chargesList.copy(chargeArr);
    }

    /* JADX INFO: renamed from: component1$public_release, reason: from getter */
    public final Charge[] getData() {
        return this.data;
    }

    public final ChargesList copy(Charge[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new ChargesList(data);
    }

    public String toString() {
        return "ChargesList(data=" + Arrays.toString(this.data) + ')';
    }

    /* JADX INFO: compiled from: PaymentIntent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/ChargesList;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<ChargesList> serializer() {
            return ChargesList$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ ChargesList(int i, Charge[] chargeArr, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.data = new Charge[0];
        } else {
            this.data = chargeArr;
        }
    }

    public ChargesList(Charge[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(ChargesList self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (!output.shouldEncodeElementDefault(serialDesc, 0) && Intrinsics.areEqual(self.data, new Charge[0])) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 0, kSerializerArr[0], self.data);
    }

    public final Charge[] getData$public_release() {
        return this.data;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ChargesList) && Arrays.equals(this.data, ((ChargesList) other).data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    public /* synthetic */ ChargesList(Charge[] chargeArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Charge[0] : chargeArr);
    }
}
