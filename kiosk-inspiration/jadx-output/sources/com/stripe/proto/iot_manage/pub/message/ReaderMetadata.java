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
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReaderMetadata.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u000eR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;", "device_id", "", "location_id", "merchant_id", "platform_id", "device_type", "deploy_group_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "getDeploy_group_id$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderMetadata extends Message<ReaderMetadata, Builder> {
    public static final ProtoAdapter<ReaderMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deployGroupId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String deploy_group_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String device_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "locationId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String location_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "merchantId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String merchant_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "platformId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String platform_id;

    public ReaderMetadata() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    @Deprecated(message = "deploy_group_id is deprecated")
    public static /* synthetic */ void getDeploy_group_id$annotations() {
    }

    public /* synthetic */ ReaderMetadata(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderMetadata(String device_id, String location_id, String merchant_id, String platform_id, String device_type, String deploy_group_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(location_id, "location_id");
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(platform_id, "platform_id");
        Intrinsics.checkNotNullParameter(device_type, "device_type");
        Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.location_id = location_id;
        this.merchant_id = merchant_id;
        this.platform_id = platform_id;
        this.device_type = device_type;
        this.deploy_group_id = deploy_group_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.location_id = this.location_id;
        builder.merchant_id = this.merchant_id;
        builder.platform_id = this.platform_id;
        builder.device_type = this.device_type;
        builder.deploy_group_id = this.deploy_group_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderMetadata)) {
            return false;
        }
        ReaderMetadata readerMetadata = (ReaderMetadata) other;
        return Intrinsics.areEqual(unknownFields(), readerMetadata.unknownFields()) && Intrinsics.areEqual(this.device_id, readerMetadata.device_id) && Intrinsics.areEqual(this.location_id, readerMetadata.location_id) && Intrinsics.areEqual(this.merchant_id, readerMetadata.merchant_id) && Intrinsics.areEqual(this.platform_id, readerMetadata.platform_id) && Intrinsics.areEqual(this.device_type, readerMetadata.device_type) && Intrinsics.areEqual(this.deploy_group_id, readerMetadata.deploy_group_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.location_id.hashCode()) * 37) + this.merchant_id.hashCode()) * 37) + this.platform_id.hashCode()) * 37) + this.device_type.hashCode()) * 37) + this.deploy_group_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("location_id=" + Internal.sanitize(this.location_id));
        arrayList2.add("merchant_id=" + Internal.sanitize(this.merchant_id));
        arrayList2.add("platform_id=" + Internal.sanitize(this.platform_id));
        arrayList2.add("device_type=" + Internal.sanitize(this.device_type));
        arrayList2.add("deploy_group_id=" + Internal.sanitize(this.deploy_group_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderMetadata copy$default(ReaderMetadata readerMetadata, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerMetadata.device_id;
        }
        if ((i & 2) != 0) {
            str2 = readerMetadata.location_id;
        }
        if ((i & 4) != 0) {
            str3 = readerMetadata.merchant_id;
        }
        if ((i & 8) != 0) {
            str4 = readerMetadata.platform_id;
        }
        if ((i & 16) != 0) {
            str5 = readerMetadata.device_type;
        }
        if ((i & 32) != 0) {
            str6 = readerMetadata.deploy_group_id;
        }
        if ((i & 64) != 0) {
            byteString = readerMetadata.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        String str9 = str3;
        return readerMetadata.copy(str, str2, str9, str4, str8, str7, byteString2);
    }

    public final ReaderMetadata copy(String device_id, String location_id, String merchant_id, String platform_id, String device_type, String deploy_group_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(location_id, "location_id");
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(platform_id, "platform_id");
        Intrinsics.checkNotNullParameter(device_type, "device_type");
        Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderMetadata(device_id, location_id, merchant_id, platform_id, device_type, deploy_group_id, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderMetadata.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;", "()V", "deploy_group_id", "", "device_id", "device_type", "location_id", "merchant_id", "platform_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderMetadata, Builder> {
        public String device_id = "";
        public String location_id = "";
        public String merchant_id = "";
        public String platform_id = "";
        public String device_type = "";
        public String deploy_group_id = "";

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder location_id(String location_id) {
            Intrinsics.checkNotNullParameter(location_id, "location_id");
            this.location_id = location_id;
            return this;
        }

        public final Builder merchant_id(String merchant_id) {
            Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
            this.merchant_id = merchant_id;
            return this;
        }

        public final Builder platform_id(String platform_id) {
            Intrinsics.checkNotNullParameter(platform_id, "platform_id");
            this.platform_id = platform_id;
            return this;
        }

        public final Builder device_type(String device_type) {
            Intrinsics.checkNotNullParameter(device_type, "device_type");
            this.device_type = device_type;
            return this;
        }

        @Deprecated(message = "deploy_group_id is deprecated")
        public final Builder deploy_group_id(String deploy_group_id) {
            Intrinsics.checkNotNullParameter(deploy_group_id, "deploy_group_id");
            this.deploy_group_id = deploy_group_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderMetadata build() {
            return new ReaderMetadata(this.device_id, this.location_id, this.merchant_id, this.platform_id, this.device_type, this.deploy_group_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_manage.pub.message.ReaderMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.location_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.location_id);
                }
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.platform_id);
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.device_type);
                }
                return !Intrinsics.areEqual(value.deploy_group_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.deploy_group_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.location_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.location_id);
                }
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.platform_id);
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.device_type);
                }
                if (!Intrinsics.areEqual(value.deploy_group_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.deploy_group_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.deploy_group_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.deploy_group_id);
                }
                if (!Intrinsics.areEqual(value.device_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.device_type);
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.platform_id);
                }
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.location_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.location_id);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderMetadata redact(ReaderMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderMetadata.copy$default(value, null, null, null, null, null, null, ByteString.EMPTY, 63, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ReaderMetadata(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
