package com.stripe.proto.model.payments;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.payments.EmvKernelVersion;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: EmvKernelVersion.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ.\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;", "kernel_type", "Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;", "version", "", "vector_configuration", "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;Ljava/lang/String;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "KernelType", "VectorConfiguration", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmvKernelVersion extends Message<EmvKernelVersion, Builder> {
    public static final ProtoAdapter<EmvKernelVersion> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.payments.EmvKernelVersion$KernelType#ADAPTER", jsonName = "kernelType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final KernelType kernel_type;

    @WireField(adapter = "com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration#ADAPTER", jsonName = "vectorConfiguration", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final VectorConfiguration vector_configuration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String version;

    public EmvKernelVersion() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ EmvKernelVersion(KernelType kernelType, String str, VectorConfiguration vectorConfiguration, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? KernelType.UNKNOWN_KERNEL : kernelType, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? VectorConfiguration.NONE : vectorConfiguration, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmvKernelVersion(KernelType kernel_type, String version, VectorConfiguration vector_configuration, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(kernel_type, "kernel_type");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.kernel_type = kernel_type;
        this.version = version;
        this.vector_configuration = vector_configuration;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.kernel_type = this.kernel_type;
        builder.version = this.version;
        builder.vector_configuration = this.vector_configuration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EmvKernelVersion)) {
            return false;
        }
        EmvKernelVersion emvKernelVersion = (EmvKernelVersion) other;
        return Intrinsics.areEqual(unknownFields(), emvKernelVersion.unknownFields()) && this.kernel_type == emvKernelVersion.kernel_type && Intrinsics.areEqual(this.version, emvKernelVersion.version) && this.vector_configuration == emvKernelVersion.vector_configuration;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.kernel_type.hashCode()) * 37) + this.version.hashCode()) * 37) + this.vector_configuration.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("kernel_type=" + this.kernel_type);
        arrayList2.add("version=" + Internal.sanitize(this.version));
        arrayList2.add("vector_configuration=" + this.vector_configuration);
        return CollectionsKt.joinToString$default(arrayList, ", ", "EmvKernelVersion{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EmvKernelVersion copy$default(EmvKernelVersion emvKernelVersion, KernelType kernelType, String str, VectorConfiguration vectorConfiguration, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            kernelType = emvKernelVersion.kernel_type;
        }
        if ((i & 2) != 0) {
            str = emvKernelVersion.version;
        }
        if ((i & 4) != 0) {
            vectorConfiguration = emvKernelVersion.vector_configuration;
        }
        if ((i & 8) != 0) {
            byteString = emvKernelVersion.unknownFields();
        }
        return emvKernelVersion.copy(kernelType, str, vectorConfiguration, byteString);
    }

    public final EmvKernelVersion copy(KernelType kernel_type, String version, VectorConfiguration vector_configuration, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(kernel_type, "kernel_type");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EmvKernelVersion(kernel_type, version, vector_configuration, unknownFields);
    }

    /* JADX INFO: compiled from: EmvKernelVersion.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/EmvKernelVersion;", "()V", "kernel_type", "Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;", "vector_configuration", "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "version", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EmvKernelVersion, Builder> {
        public KernelType kernel_type = KernelType.UNKNOWN_KERNEL;
        public String version = "";
        public VectorConfiguration vector_configuration = VectorConfiguration.NONE;

        public final Builder kernel_type(KernelType kernel_type) {
            Intrinsics.checkNotNullParameter(kernel_type, "kernel_type");
            this.kernel_type = kernel_type;
            return this;
        }

        public final Builder version(String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            this.version = version;
            return this;
        }

        public final Builder vector_configuration(VectorConfiguration vector_configuration) {
            Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
            this.vector_configuration = vector_configuration;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EmvKernelVersion build() {
            return new EmvKernelVersion(this.kernel_type, this.version, this.vector_configuration, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EmvKernelVersion.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EmvKernelVersion;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/EmvKernelVersion$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EmvKernelVersion build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EmvKernelVersion.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EmvKernelVersion>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.EmvKernelVersion$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EmvKernelVersion value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.kernel_type != EmvKernelVersion.KernelType.UNKNOWN_KERNEL) {
                    size += EmvKernelVersion.KernelType.ADAPTER.encodedSizeWithTag(1, value.kernel_type);
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.version);
                }
                return value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE ? size + EmvKernelVersion.VectorConfiguration.ADAPTER.encodedSizeWithTag(3, value.vector_configuration) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EmvKernelVersion value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.kernel_type != EmvKernelVersion.KernelType.UNKNOWN_KERNEL) {
                    EmvKernelVersion.KernelType.ADAPTER.encodeWithTag(writer, 1, value.kernel_type);
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version);
                }
                if (value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE) {
                    EmvKernelVersion.VectorConfiguration.ADAPTER.encodeWithTag(writer, 3, value.vector_configuration);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EmvKernelVersion value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE) {
                    EmvKernelVersion.VectorConfiguration.ADAPTER.encodeWithTag(writer, 3, value.vector_configuration);
                }
                if (!Intrinsics.areEqual(value.version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.version);
                }
                if (value.kernel_type != EmvKernelVersion.KernelType.UNKNOWN_KERNEL) {
                    EmvKernelVersion.KernelType.ADAPTER.encodeWithTag(writer, 1, value.kernel_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EmvKernelVersion decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                EmvKernelVersion.KernelType kernelTypeDecode = EmvKernelVersion.KernelType.UNKNOWN_KERNEL;
                EmvKernelVersion.VectorConfiguration vectorConfigurationDecode = EmvKernelVersion.VectorConfiguration.NONE;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EmvKernelVersion(kernelTypeDecode, strDecode, vectorConfigurationDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            kernelTypeDecode = EmvKernelVersion.KernelType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        try {
                            vectorConfigurationDecode = EmvKernelVersion.VectorConfiguration.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EmvKernelVersion redact(EmvKernelVersion value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return EmvKernelVersion.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: EmvKernelVersion.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_KERNEL", "VERIFONE_KERNEL", "INGENICO_KERNEL", "VECTOR_KERNEL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class KernelType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ KernelType[] $VALUES;
        public static final ProtoAdapter<KernelType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final KernelType INGENICO_KERNEL;
        public static final KernelType UNKNOWN_KERNEL;
        public static final KernelType VECTOR_KERNEL;
        public static final KernelType VERIFONE_KERNEL;
        private final int value;

        private static final /* synthetic */ KernelType[] $values() {
            return new KernelType[]{UNKNOWN_KERNEL, VERIFONE_KERNEL, INGENICO_KERNEL, VECTOR_KERNEL};
        }

        @JvmStatic
        public static final KernelType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<KernelType> getEntries() {
            return $ENTRIES;
        }

        public static KernelType valueOf(String str) {
            return (KernelType) Enum.valueOf(KernelType.class, str);
        }

        public static KernelType[] values() {
            return (KernelType[]) $VALUES.clone();
        }

        private KernelType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final KernelType kernelType = new KernelType("UNKNOWN_KERNEL", 0, 0);
            UNKNOWN_KERNEL = kernelType;
            VERIFONE_KERNEL = new KernelType("VERIFONE_KERNEL", 1, 1);
            INGENICO_KERNEL = new KernelType("INGENICO_KERNEL", 2, 2);
            VECTOR_KERNEL = new KernelType("VECTOR_KERNEL", 3, 3);
            KernelType[] kernelTypeArr$values = $values();
            $VALUES = kernelTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(kernelTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KernelType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<KernelType>(orCreateKotlinClass, syntax, kernelType) { // from class: com.stripe.proto.model.payments.EmvKernelVersion$KernelType$Companion$ADAPTER$1
                {
                    EmvKernelVersion.KernelType kernelType2 = kernelType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public EmvKernelVersion.KernelType fromValue(int value) {
                    return EmvKernelVersion.KernelType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: EmvKernelVersion.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EmvKernelVersion$KernelType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final KernelType fromValue(int value) {
                if (value == 0) {
                    return KernelType.UNKNOWN_KERNEL;
                }
                if (value == 1) {
                    return KernelType.VERIFONE_KERNEL;
                }
                if (value == 2) {
                    return KernelType.INGENICO_KERNEL;
                }
                if (value != 3) {
                    return null;
                }
                return KernelType.VECTOR_KERNEL;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: EmvKernelVersion.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NONE", "VC_INTERNATIONAL_DEFAULT", "VC_US_DEFAULT", "VC_US_SAF", "VC_INTERNATIONAL_SAF", "VC_VERIFONE_8C", "VC_US_NO_ONLINE_PIN", "VC_INTERNATIONAL_NO_ODA", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class VectorConfiguration implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ VectorConfiguration[] $VALUES;
        public static final ProtoAdapter<VectorConfiguration> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final VectorConfiguration NONE;
        public static final VectorConfiguration VC_INTERNATIONAL_DEFAULT;
        public static final VectorConfiguration VC_INTERNATIONAL_NO_ODA;
        public static final VectorConfiguration VC_INTERNATIONAL_SAF;
        public static final VectorConfiguration VC_US_DEFAULT;
        public static final VectorConfiguration VC_US_NO_ONLINE_PIN;
        public static final VectorConfiguration VC_US_SAF;
        public static final VectorConfiguration VC_VERIFONE_8C;
        private final int value;

        private static final /* synthetic */ VectorConfiguration[] $values() {
            return new VectorConfiguration[]{NONE, VC_INTERNATIONAL_DEFAULT, VC_US_DEFAULT, VC_US_SAF, VC_INTERNATIONAL_SAF, VC_VERIFONE_8C, VC_US_NO_ONLINE_PIN, VC_INTERNATIONAL_NO_ODA};
        }

        @JvmStatic
        public static final VectorConfiguration fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<VectorConfiguration> getEntries() {
            return $ENTRIES;
        }

        public static VectorConfiguration valueOf(String str) {
            return (VectorConfiguration) Enum.valueOf(VectorConfiguration.class, str);
        }

        public static VectorConfiguration[] values() {
            return (VectorConfiguration[]) $VALUES.clone();
        }

        private VectorConfiguration(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final VectorConfiguration vectorConfiguration = new VectorConfiguration("NONE", 0, 0);
            NONE = vectorConfiguration;
            VC_INTERNATIONAL_DEFAULT = new VectorConfiguration("VC_INTERNATIONAL_DEFAULT", 1, 1);
            VC_US_DEFAULT = new VectorConfiguration("VC_US_DEFAULT", 2, 2);
            VC_US_SAF = new VectorConfiguration("VC_US_SAF", 3, 3);
            VC_INTERNATIONAL_SAF = new VectorConfiguration("VC_INTERNATIONAL_SAF", 4, 4);
            VC_VERIFONE_8C = new VectorConfiguration("VC_VERIFONE_8C", 5, 5);
            VC_US_NO_ONLINE_PIN = new VectorConfiguration("VC_US_NO_ONLINE_PIN", 6, 6);
            VC_INTERNATIONAL_NO_ODA = new VectorConfiguration("VC_INTERNATIONAL_NO_ODA", 7, 7);
            VectorConfiguration[] vectorConfigurationArr$values = $values();
            $VALUES = vectorConfigurationArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(vectorConfigurationArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VectorConfiguration.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<VectorConfiguration>(orCreateKotlinClass, syntax, vectorConfiguration) { // from class: com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration$Companion$ADAPTER$1
                {
                    EmvKernelVersion.VectorConfiguration vectorConfiguration2 = vectorConfiguration;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public EmvKernelVersion.VectorConfiguration fromValue(int value) {
                    return EmvKernelVersion.VectorConfiguration.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: EmvKernelVersion.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final VectorConfiguration fromValue(int value) {
                switch (value) {
                    case 0:
                        return VectorConfiguration.NONE;
                    case 1:
                        return VectorConfiguration.VC_INTERNATIONAL_DEFAULT;
                    case 2:
                        return VectorConfiguration.VC_US_DEFAULT;
                    case 3:
                        return VectorConfiguration.VC_US_SAF;
                    case 4:
                        return VectorConfiguration.VC_INTERNATIONAL_SAF;
                    case 5:
                        return VectorConfiguration.VC_VERIFONE_8C;
                    case 6:
                        return VectorConfiguration.VC_US_NO_ONLINE_PIN;
                    case 7:
                        return VectorConfiguration.VC_INTERNATIONAL_NO_ODA;
                    default:
                        return null;
                }
            }
        }
    }
}
