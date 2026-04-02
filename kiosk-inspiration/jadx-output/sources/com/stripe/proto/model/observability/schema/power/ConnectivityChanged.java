package com.stripe.proto.model.observability.schema.power;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ConnectivityChanged.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged$Builder;", "connectivity", "Lcom/stripe/proto/model/observability/schema/power/Connectivity;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/observability/schema/power/Connectivity;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectivityChanged extends Message<ConnectivityChanged, Builder> {
    public static final ProtoAdapter<ConnectivityChanged> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.power.Connectivity#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Connectivity connectivity;

    /* JADX WARN: Multi-variable type inference failed */
    public ConnectivityChanged() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ConnectivityChanged(Connectivity connectivity, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Connectivity.UNKNOWN_CONNECTIVITY : connectivity, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityChanged(Connectivity connectivity, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(connectivity, "connectivity");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connectivity = connectivity;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.connectivity = this.connectivity;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConnectivityChanged)) {
            return false;
        }
        ConnectivityChanged connectivityChanged = (ConnectivityChanged) other;
        return Intrinsics.areEqual(unknownFields(), connectivityChanged.unknownFields()) && this.connectivity == connectivityChanged.connectivity;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.connectivity.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("connectivity=" + this.connectivity);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConnectivityChanged{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConnectivityChanged copy$default(ConnectivityChanged connectivityChanged, Connectivity connectivity, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            connectivity = connectivityChanged.connectivity;
        }
        if ((i & 2) != 0) {
            byteString = connectivityChanged.unknownFields();
        }
        return connectivityChanged.copy(connectivity, byteString);
    }

    public final ConnectivityChanged copy(Connectivity connectivity, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(connectivity, "connectivity");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConnectivityChanged(connectivity, unknownFields);
    }

    /* JADX INFO: compiled from: ConnectivityChanged.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;", "()V", "connectivity", "Lcom/stripe/proto/model/observability/schema/power/Connectivity;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConnectivityChanged, Builder> {
        public Connectivity connectivity = Connectivity.UNKNOWN_CONNECTIVITY;

        public final Builder connectivity(Connectivity connectivity) {
            Intrinsics.checkNotNullParameter(connectivity, "connectivity");
            this.connectivity = connectivity;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConnectivityChanged build() {
            return new ConnectivityChanged(this.connectivity, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConnectivityChanged.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConnectivityChanged build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectivityChanged.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConnectivityChanged>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.power.ConnectivityChanged$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConnectivityChanged value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.connectivity != Connectivity.UNKNOWN_CONNECTIVITY ? size + Connectivity.ADAPTER.encodedSizeWithTag(1, value.connectivity) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConnectivityChanged value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.connectivity != Connectivity.UNKNOWN_CONNECTIVITY) {
                    Connectivity.ADAPTER.encodeWithTag(writer, 1, value.connectivity);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConnectivityChanged value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.connectivity != Connectivity.UNKNOWN_CONNECTIVITY) {
                    Connectivity.ADAPTER.encodeWithTag(writer, 1, value.connectivity);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConnectivityChanged decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Connectivity connectivityDecode = Connectivity.UNKNOWN_CONNECTIVITY;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConnectivityChanged(connectivityDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            connectivityDecode = Connectivity.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConnectivityChanged redact(ConnectivityChanged value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ConnectivityChanged.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
