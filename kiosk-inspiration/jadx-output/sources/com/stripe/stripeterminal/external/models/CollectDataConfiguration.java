package com.stripe.stripeterminal.external.models;

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
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CollectDataConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001b2\u00060\u0001j\u0002`\u0002:\u0003\u0019\u001a\u001bB+\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0017\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017HÁ\u0001¢\u0006\u0002\b\u0018R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "type", "Lcom/stripe/stripeterminal/external/models/CollectDataType;", "enableCustomerCancellation", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/stripeterminal/external/models/CollectDataType;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/stripeterminal/external/models/CollectDataType;Z)V", "getEnableCustomerCancellation", "()Z", "getType", "()Lcom/stripe/stripeterminal/external/models/CollectDataType;", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final class CollectDataConfiguration implements java.io.Serializable {
    private final boolean enableCustomerCancellation;
    private final CollectDataType type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {EnumsKt.createSimpleEnumSerializer("com.stripe.stripeterminal.external.models.CollectDataType", CollectDataType.values()), null};

    public /* synthetic */ CollectDataConfiguration(CollectDataType collectDataType, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(collectDataType, z);
    }

    /* JADX INFO: compiled from: CollectDataConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<CollectDataConfiguration> serializer() {
            return CollectDataConfiguration$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ CollectDataConfiguration(int i, CollectDataType collectDataType, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CollectDataConfiguration$$serializer.INSTANCE.getDescriptor());
        }
        this.type = collectDataType;
        this.enableCustomerCancellation = z;
    }

    private CollectDataConfiguration(CollectDataType collectDataType, boolean z) {
        this.type = collectDataType;
        this.enableCustomerCancellation = z;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(CollectDataConfiguration self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, $childSerializers[0], self.type);
        output.encodeBooleanElement(serialDesc, 1, self.enableCustomerCancellation);
    }

    public final CollectDataType getType() {
        return this.type;
    }

    public final boolean getEnableCustomerCancellation() {
        return this.enableCustomerCancellation;
    }

    /* JADX INFO: compiled from: CollectDataConfiguration.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\bR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;", "", "()V", "<set-?>", "", "enableCustomerCancellation", "getEnableCustomerCancellation", "()Z", "Lcom/stripe/stripeterminal/external/models/CollectDataType;", "type", "getType", "()Lcom/stripe/stripeterminal/external/models/CollectDataType;", "build", "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;", "setEnableCustomerCancellation", "setType", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private boolean enableCustomerCancellation;
        private CollectDataType type;

        public final CollectDataType getType() {
            return this.type;
        }

        public final boolean getEnableCustomerCancellation() {
            return this.enableCustomerCancellation;
        }

        public final Builder setType(CollectDataType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.type = value;
            return this;
        }

        public final Builder setEnableCustomerCancellation(boolean enableCustomerCancellation) {
            this.enableCustomerCancellation = enableCustomerCancellation;
            return this;
        }

        public final CollectDataConfiguration build() {
            CollectDataType collectDataType = this.type;
            if (collectDataType != null) {
                return new CollectDataConfiguration(collectDataType, this.enableCustomerCancellation, null);
            }
            throw new IllegalArgumentException("type must be set");
        }
    }
}
