package com.stripe.proto.iot_manage.pub.message;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: IotClientConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ>\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;", "client_name", "", "topic_filters", "", "iot_endpoint", "certificate_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IotClientConfig extends Message<IotClientConfig, Builder> {
    public static final ProtoAdapter<IotClientConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "certificateId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String certificate_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String client_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "iotEndpoint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String iot_endpoint;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "topicFilters", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<String> topic_filters;

    public IotClientConfig() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ IotClientConfig(String str, List list, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IotClientConfig(String client_name, List<String> topic_filters, String iot_endpoint, String certificate_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_name, "client_name");
        Intrinsics.checkNotNullParameter(topic_filters, "topic_filters");
        Intrinsics.checkNotNullParameter(iot_endpoint, "iot_endpoint");
        Intrinsics.checkNotNullParameter(certificate_id, "certificate_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_name = client_name;
        this.iot_endpoint = iot_endpoint;
        this.certificate_id = certificate_id;
        this.topic_filters = Internal.immutableCopyOf("topic_filters", topic_filters);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_name = this.client_name;
        builder.topic_filters = this.topic_filters;
        builder.iot_endpoint = this.iot_endpoint;
        builder.certificate_id = this.certificate_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IotClientConfig)) {
            return false;
        }
        IotClientConfig iotClientConfig = (IotClientConfig) other;
        return Intrinsics.areEqual(unknownFields(), iotClientConfig.unknownFields()) && Intrinsics.areEqual(this.client_name, iotClientConfig.client_name) && Intrinsics.areEqual(this.topic_filters, iotClientConfig.topic_filters) && Intrinsics.areEqual(this.iot_endpoint, iotClientConfig.iot_endpoint) && Intrinsics.areEqual(this.certificate_id, iotClientConfig.certificate_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.client_name.hashCode()) * 37) + this.topic_filters.hashCode()) * 37) + this.iot_endpoint.hashCode()) * 37) + this.certificate_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("client_name=" + Internal.sanitize(this.client_name));
        if (!this.topic_filters.isEmpty()) {
            arrayList2.add("topic_filters=" + Internal.sanitize(this.topic_filters));
        }
        arrayList2.add("iot_endpoint=" + Internal.sanitize(this.iot_endpoint));
        arrayList2.add("certificate_id=" + Internal.sanitize(this.certificate_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "IotClientConfig{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ IotClientConfig copy$default(IotClientConfig iotClientConfig, String str, List list, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = iotClientConfig.client_name;
        }
        if ((i & 2) != 0) {
            list = iotClientConfig.topic_filters;
        }
        if ((i & 4) != 0) {
            str2 = iotClientConfig.iot_endpoint;
        }
        if ((i & 8) != 0) {
            str3 = iotClientConfig.certificate_id;
        }
        if ((i & 16) != 0) {
            byteString = iotClientConfig.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str2;
        return iotClientConfig.copy(str, list, str4, str3, byteString2);
    }

    public final IotClientConfig copy(String client_name, List<String> topic_filters, String iot_endpoint, String certificate_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_name, "client_name");
        Intrinsics.checkNotNullParameter(topic_filters, "topic_filters");
        Intrinsics.checkNotNullParameter(iot_endpoint, "iot_endpoint");
        Intrinsics.checkNotNullParameter(certificate_id, "certificate_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IotClientConfig(client_name, topic_filters, iot_endpoint, certificate_id, unknownFields);
    }

    /* JADX INFO: compiled from: IotClientConfig.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;", "()V", "certificate_id", "", "client_name", "iot_endpoint", "topic_filters", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IotClientConfig, Builder> {
        public String client_name = "";
        public List<String> topic_filters = CollectionsKt.emptyList();
        public String iot_endpoint = "";
        public String certificate_id = "";

        public final Builder client_name(String client_name) {
            Intrinsics.checkNotNullParameter(client_name, "client_name");
            this.client_name = client_name;
            return this;
        }

        public final Builder topic_filters(List<String> topic_filters) {
            Intrinsics.checkNotNullParameter(topic_filters, "topic_filters");
            Internal.checkElementsNotNull(topic_filters);
            this.topic_filters = topic_filters;
            return this;
        }

        public final Builder iot_endpoint(String iot_endpoint) {
            Intrinsics.checkNotNullParameter(iot_endpoint, "iot_endpoint");
            this.iot_endpoint = iot_endpoint;
            return this;
        }

        public final Builder certificate_id(String certificate_id) {
            Intrinsics.checkNotNullParameter(certificate_id, "certificate_id");
            this.certificate_id = certificate_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IotClientConfig build() {
            return new IotClientConfig(this.client_name, this.topic_filters, this.iot_endpoint, this.certificate_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IotClientConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IotClientConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IotClientConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IotClientConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_manage.pub.message.IotClientConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IotClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.client_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.client_name);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.topic_filters);
                if (!Intrinsics.areEqual(value.iot_endpoint, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(3, value.iot_endpoint);
                }
                return !Intrinsics.areEqual(value.certificate_id, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(4, value.certificate_id) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IotClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.client_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.client_name);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.topic_filters);
                if (!Intrinsics.areEqual(value.iot_endpoint, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.iot_endpoint);
                }
                if (!Intrinsics.areEqual(value.certificate_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.certificate_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IotClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.certificate_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.certificate_id);
                }
                if (!Intrinsics.areEqual(value.iot_endpoint, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.iot_endpoint);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.topic_filters);
                if (Intrinsics.areEqual(value.client_name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.client_name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IotClientConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IotClientConfig(strDecode, arrayList, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IotClientConfig redact(IotClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return IotClientConfig.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
