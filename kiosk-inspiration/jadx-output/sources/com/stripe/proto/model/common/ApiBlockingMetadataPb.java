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

/* JADX INFO: compiled from: ApiBlockingMetadataPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;", "is_blocked", "", "reason", "", "time", "Lcom/stripe/proto/model/common/InstantPb;", "unknownFields", "Lokio/ByteString;", "(ZLjava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiBlockingMetadataPb extends Message<ApiBlockingMetadataPb, Builder> {
    public static final ProtoAdapter<ApiBlockingMetadataPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isBlocked", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean is_blocked;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String reason;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final InstantPb time;

    public ApiBlockingMetadataPb() {
        this(false, null, null, null, 15, null);
    }

    public /* synthetic */ ApiBlockingMetadataPb(boolean z, String str, InstantPb instantPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : instantPb, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiBlockingMetadataPb(boolean z, String reason, InstantPb instantPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.is_blocked = z;
        this.reason = reason;
        this.time = instantPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.is_blocked = this.is_blocked;
        builder.reason = this.reason;
        builder.time = this.time;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApiBlockingMetadataPb)) {
            return false;
        }
        ApiBlockingMetadataPb apiBlockingMetadataPb = (ApiBlockingMetadataPb) other;
        return Intrinsics.areEqual(unknownFields(), apiBlockingMetadataPb.unknownFields()) && this.is_blocked == apiBlockingMetadataPb.is_blocked && Intrinsics.areEqual(this.reason, apiBlockingMetadataPb.reason) && Intrinsics.areEqual(this.time, apiBlockingMetadataPb.time);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.is_blocked)) * 37) + this.reason.hashCode()) * 37;
        InstantPb instantPb = this.time;
        int iHashCode2 = iHashCode + (instantPb != null ? instantPb.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("is_blocked=" + this.is_blocked);
        arrayList2.add("reason=" + Internal.sanitize(this.reason));
        if (this.time != null) {
            arrayList2.add("time=" + this.time);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApiBlockingMetadataPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApiBlockingMetadataPb copy$default(ApiBlockingMetadataPb apiBlockingMetadataPb, boolean z, String str, InstantPb instantPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            z = apiBlockingMetadataPb.is_blocked;
        }
        if ((i & 2) != 0) {
            str = apiBlockingMetadataPb.reason;
        }
        if ((i & 4) != 0) {
            instantPb = apiBlockingMetadataPb.time;
        }
        if ((i & 8) != 0) {
            byteString = apiBlockingMetadataPb.unknownFields();
        }
        return apiBlockingMetadataPb.copy(z, str, instantPb, byteString);
    }

    public final ApiBlockingMetadataPb copy(boolean is_blocked, String reason, InstantPb time, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApiBlockingMetadataPb(is_blocked, reason, time, unknownFields);
    }

    /* JADX INFO: compiled from: ApiBlockingMetadataPb.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;", "()V", "is_blocked", "", "reason", "", "time", "Lcom/stripe/proto/model/common/InstantPb;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApiBlockingMetadataPb, Builder> {
        public boolean is_blocked;
        public String reason = "";
        public InstantPb time;

        public final Builder is_blocked(boolean is_blocked) {
            this.is_blocked = is_blocked;
            return this;
        }

        public final Builder reason(String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            return this;
        }

        public final Builder time(InstantPb time) {
            this.time = time;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApiBlockingMetadataPb build() {
            return new ApiBlockingMetadataPb(this.is_blocked, this.reason, this.time, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApiBlockingMetadataPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApiBlockingMetadataPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiBlockingMetadataPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApiBlockingMetadataPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ApiBlockingMetadataPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApiBlockingMetadataPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.is_blocked) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.is_blocked));
                }
                if (!Intrinsics.areEqual(value.reason, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.reason);
                }
                return value.time != null ? size + InstantPb.ADAPTER.encodedSizeWithTag(3, value.time) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApiBlockingMetadataPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.is_blocked) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.is_blocked));
                }
                if (!Intrinsics.areEqual(value.reason, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
                }
                if (value.time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.time);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApiBlockingMetadataPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.time);
                }
                if (!Intrinsics.areEqual(value.reason, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.reason);
                }
                if (value.is_blocked) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.is_blocked));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApiBlockingMetadataPb redact(ApiBlockingMetadataPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.time;
                return ApiBlockingMetadataPb.copy$default(value, false, null, instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApiBlockingMetadataPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                String strDecode = "";
                InstantPb instantPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApiBlockingMetadataPb(zBooleanValue, strDecode, instantPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        instantPbDecode = InstantPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
