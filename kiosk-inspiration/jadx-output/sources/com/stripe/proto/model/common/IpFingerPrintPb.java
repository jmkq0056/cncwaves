package com.stripe.proto.model.common;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: IpFingerPrintPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/common/IpFingerPrintPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/IpFingerPrintPb$Builder;", "local_ip", "", "wan_ip", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IpFingerPrintPb extends Message<IpFingerPrintPb, Builder> {
    public static final ProtoAdapter<IpFingerPrintPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "localIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String local_ip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "wanIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String wan_ip;

    public IpFingerPrintPb() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ IpFingerPrintPb(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IpFingerPrintPb(String local_ip, String wan_ip, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(local_ip, "local_ip");
        Intrinsics.checkNotNullParameter(wan_ip, "wan_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.local_ip = local_ip;
        this.wan_ip = wan_ip;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.local_ip = this.local_ip;
        builder.wan_ip = this.wan_ip;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IpFingerPrintPb)) {
            return false;
        }
        IpFingerPrintPb ipFingerPrintPb = (IpFingerPrintPb) other;
        return Intrinsics.areEqual(unknownFields(), ipFingerPrintPb.unknownFields()) && Intrinsics.areEqual(this.local_ip, ipFingerPrintPb.local_ip) && Intrinsics.areEqual(this.wan_ip, ipFingerPrintPb.wan_ip);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.local_ip.hashCode()) * 37) + this.wan_ip.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("local_ip=" + Internal.sanitize(this.local_ip));
        arrayList2.add("wan_ip=" + Internal.sanitize(this.wan_ip));
        return CollectionsKt.joinToString$default(arrayList, ", ", "IpFingerPrintPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IpFingerPrintPb copy$default(IpFingerPrintPb ipFingerPrintPb, String str, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ipFingerPrintPb.local_ip;
        }
        if ((i & 2) != 0) {
            str2 = ipFingerPrintPb.wan_ip;
        }
        if ((i & 4) != 0) {
            byteString = ipFingerPrintPb.unknownFields();
        }
        return ipFingerPrintPb.copy(str, str2, byteString);
    }

    public final IpFingerPrintPb copy(String local_ip, String wan_ip, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(local_ip, "local_ip");
        Intrinsics.checkNotNullParameter(wan_ip, "wan_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IpFingerPrintPb(local_ip, wan_ip, unknownFields);
    }

    /* JADX INFO: compiled from: IpFingerPrintPb.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/common/IpFingerPrintPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/IpFingerPrintPb;", "()V", "local_ip", "", "wan_ip", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IpFingerPrintPb, Builder> {
        public String local_ip = "";
        public String wan_ip = "";

        public final Builder local_ip(String local_ip) {
            Intrinsics.checkNotNullParameter(local_ip, "local_ip");
            this.local_ip = local_ip;
            return this;
        }

        public final Builder wan_ip(String wan_ip) {
            Intrinsics.checkNotNullParameter(wan_ip, "wan_ip");
            this.wan_ip = wan_ip;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IpFingerPrintPb build() {
            return new IpFingerPrintPb(this.local_ip, this.wan_ip, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IpFingerPrintPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/IpFingerPrintPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/IpFingerPrintPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/IpFingerPrintPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IpFingerPrintPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IpFingerPrintPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IpFingerPrintPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.IpFingerPrintPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IpFingerPrintPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.local_ip, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.local_ip);
                }
                return !Intrinsics.areEqual(value.wan_ip, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.wan_ip) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IpFingerPrintPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.local_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.local_ip);
                }
                if (!Intrinsics.areEqual(value.wan_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.wan_ip);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IpFingerPrintPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.wan_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.wan_ip);
                }
                if (Intrinsics.areEqual(value.local_ip, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.local_ip);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IpFingerPrintPb redact(IpFingerPrintPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return IpFingerPrintPb.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IpFingerPrintPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IpFingerPrintPb(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
