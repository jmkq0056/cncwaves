package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.ClientVersionSpecPb;
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

/* JADX INFO: compiled from: RabbitUxAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/config/RabbitUxAssets;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/RabbitUxAssets$Builder;", "client_upgrade_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RabbitUxAssets extends Message<RabbitUxAssets, Builder> {
    public static final ProtoAdapter<RabbitUxAssets> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "clientUpgradeSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 4)
    public final ClientVersionSpecPb client_upgrade_spec;

    /* JADX WARN: Multi-variable type inference failed */
    public RabbitUxAssets() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ RabbitUxAssets(ClientVersionSpecPb clientVersionSpecPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : clientVersionSpecPb, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RabbitUxAssets(ClientVersionSpecPb clientVersionSpecPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_upgrade_spec = clientVersionSpecPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_upgrade_spec = this.client_upgrade_spec;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RabbitUxAssets)) {
            return false;
        }
        RabbitUxAssets rabbitUxAssets = (RabbitUxAssets) other;
        return Intrinsics.areEqual(unknownFields(), rabbitUxAssets.unknownFields()) && Intrinsics.areEqual(this.client_upgrade_spec, rabbitUxAssets.client_upgrade_spec);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ClientVersionSpecPb clientVersionSpecPb = this.client_upgrade_spec;
        int iHashCode2 = iHashCode + (clientVersionSpecPb != null ? clientVersionSpecPb.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.client_upgrade_spec != null) {
            arrayList.add("client_upgrade_spec=" + this.client_upgrade_spec);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RabbitUxAssets{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RabbitUxAssets copy$default(RabbitUxAssets rabbitUxAssets, ClientVersionSpecPb clientVersionSpecPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            clientVersionSpecPb = rabbitUxAssets.client_upgrade_spec;
        }
        if ((i & 2) != 0) {
            byteString = rabbitUxAssets.unknownFields();
        }
        return rabbitUxAssets.copy(clientVersionSpecPb, byteString);
    }

    public final RabbitUxAssets copy(ClientVersionSpecPb client_upgrade_spec, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RabbitUxAssets(client_upgrade_spec, unknownFields);
    }

    /* JADX INFO: compiled from: RabbitUxAssets.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/config/RabbitUxAssets$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/RabbitUxAssets;", "()V", "client_upgrade_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RabbitUxAssets, Builder> {
        public ClientVersionSpecPb client_upgrade_spec;

        public final Builder client_upgrade_spec(ClientVersionSpecPb client_upgrade_spec) {
            this.client_upgrade_spec = client_upgrade_spec;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RabbitUxAssets build() {
            return new RabbitUxAssets(this.client_upgrade_spec, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RabbitUxAssets.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/RabbitUxAssets$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/RabbitUxAssets;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/RabbitUxAssets$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RabbitUxAssets build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RabbitUxAssets.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RabbitUxAssets>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.RabbitUxAssets$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RabbitUxAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.client_upgrade_spec != null ? size + ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(4, value.client_upgrade_spec) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RabbitUxAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 4, value.client_upgrade_spec);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RabbitUxAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.client_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 4, value.client_upgrade_spec);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RabbitUxAssets redact(RabbitUxAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ClientVersionSpecPb clientVersionSpecPb = value.client_upgrade_spec;
                return value.copy(clientVersionSpecPb != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RabbitUxAssets decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ClientVersionSpecPb clientVersionSpecPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RabbitUxAssets(clientVersionSpecPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 4) {
                        clientVersionSpecPbDecode = ClientVersionSpecPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
