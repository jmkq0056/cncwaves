package com.stripe.proto.api.warden;

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

/* JADX INFO: compiled from: CheckVersionResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/warden/CheckVersionResponse$Builder;", "client_upgrade_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "os_upgrade_spec", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckVersionResponse extends Message<CheckVersionResponse, Builder> {
    public static final ProtoAdapter<CheckVersionResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "clientUpgradeSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ClientVersionSpecPb client_upgrade_spec;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "osUpgradeSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ClientVersionSpecPb os_upgrade_spec;

    public CheckVersionResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CheckVersionResponse(ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : clientVersionSpecPb, (i & 2) != 0 ? null : clientVersionSpecPb2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckVersionResponse(ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_upgrade_spec = clientVersionSpecPb;
        this.os_upgrade_spec = clientVersionSpecPb2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_upgrade_spec = this.client_upgrade_spec;
        builder.os_upgrade_spec = this.os_upgrade_spec;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckVersionResponse)) {
            return false;
        }
        CheckVersionResponse checkVersionResponse = (CheckVersionResponse) other;
        return Intrinsics.areEqual(unknownFields(), checkVersionResponse.unknownFields()) && Intrinsics.areEqual(this.client_upgrade_spec, checkVersionResponse.client_upgrade_spec) && Intrinsics.areEqual(this.os_upgrade_spec, checkVersionResponse.os_upgrade_spec);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ClientVersionSpecPb clientVersionSpecPb = this.client_upgrade_spec;
        int iHashCode2 = (iHashCode + (clientVersionSpecPb != null ? clientVersionSpecPb.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb2 = this.os_upgrade_spec;
        int iHashCode3 = iHashCode2 + (clientVersionSpecPb2 != null ? clientVersionSpecPb2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.client_upgrade_spec != null) {
            arrayList.add("client_upgrade_spec=" + this.client_upgrade_spec);
        }
        if (this.os_upgrade_spec != null) {
            arrayList.add("os_upgrade_spec=" + this.os_upgrade_spec);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckVersionResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckVersionResponse copy$default(CheckVersionResponse checkVersionResponse, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            clientVersionSpecPb = checkVersionResponse.client_upgrade_spec;
        }
        if ((i & 2) != 0) {
            clientVersionSpecPb2 = checkVersionResponse.os_upgrade_spec;
        }
        if ((i & 4) != 0) {
            byteString = checkVersionResponse.unknownFields();
        }
        return checkVersionResponse.copy(clientVersionSpecPb, clientVersionSpecPb2, byteString);
    }

    public final CheckVersionResponse copy(ClientVersionSpecPb client_upgrade_spec, ClientVersionSpecPb os_upgrade_spec, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckVersionResponse(client_upgrade_spec, os_upgrade_spec, unknownFields);
    }

    /* JADX INFO: compiled from: CheckVersionResponse.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/warden/CheckVersionResponse;", "()V", "client_upgrade_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "os_upgrade_spec", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckVersionResponse, Builder> {
        public ClientVersionSpecPb client_upgrade_spec;
        public ClientVersionSpecPb os_upgrade_spec;

        public final Builder client_upgrade_spec(ClientVersionSpecPb client_upgrade_spec) {
            this.client_upgrade_spec = client_upgrade_spec;
            return this;
        }

        public final Builder os_upgrade_spec(ClientVersionSpecPb os_upgrade_spec) {
            this.os_upgrade_spec = os_upgrade_spec;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckVersionResponse build() {
            return new CheckVersionResponse(this.client_upgrade_spec, this.os_upgrade_spec, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckVersionResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/warden/CheckVersionResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/warden/CheckVersionResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/warden/CheckVersionResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckVersionResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckVersionResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckVersionResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.warden.CheckVersionResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckVersionResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_upgrade_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(1, value.client_upgrade_spec);
                }
                return value.os_upgrade_spec != null ? size + ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(2, value.os_upgrade_spec) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckVersionResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 1, value.client_upgrade_spec);
                }
                if (value.os_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.os_upgrade_spec);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckVersionResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.os_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.os_upgrade_spec);
                }
                if (value.client_upgrade_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 1, value.client_upgrade_spec);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckVersionResponse redact(CheckVersionResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ClientVersionSpecPb clientVersionSpecPb = value.client_upgrade_spec;
                ClientVersionSpecPb clientVersionSpecPbRedact = clientVersionSpecPb != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb) : null;
                ClientVersionSpecPb clientVersionSpecPb2 = value.os_upgrade_spec;
                return value.copy(clientVersionSpecPbRedact, clientVersionSpecPb2 != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckVersionResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ClientVersionSpecPb clientVersionSpecPbDecode = null;
                ClientVersionSpecPb clientVersionSpecPbDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckVersionResponse(clientVersionSpecPbDecode, clientVersionSpecPbDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        clientVersionSpecPbDecode = ClientVersionSpecPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        clientVersionSpecPbDecode2 = ClientVersionSpecPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
