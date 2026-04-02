package com.stripe.proto.api.ipc;

import com.google.firebase.analytics.FirebaseAnalytics;
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

/* JADX INFO: compiled from: GetRebootTimeStatusResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse$Builder;", FirebaseAnalytics.Param.SUCCESS, "", "value_", "Lcom/stripe/proto/api/ipc/RebootTimeStatus;", "unknownFields", "Lokio/ByteString;", "(ZLcom/stripe/proto/api/ipc/RebootTimeStatus;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetRebootTimeStatusResponse extends Message<GetRebootTimeStatusResponse, Builder> {
    public static final ProtoAdapter<GetRebootTimeStatusResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean success;

    @WireField(adapter = "com.stripe.proto.api.ipc.RebootTimeStatus#ADAPTER", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RebootTimeStatus value_;

    public GetRebootTimeStatusResponse() {
        this(false, null, null, 7, null);
    }

    public /* synthetic */ GetRebootTimeStatusResponse(boolean z, RebootTimeStatus rebootTimeStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : rebootTimeStatus, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetRebootTimeStatusResponse(boolean z, RebootTimeStatus rebootTimeStatus, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.success = z;
        this.value_ = rebootTimeStatus;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.success = this.success;
        builder.value_ = this.value_;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GetRebootTimeStatusResponse)) {
            return false;
        }
        GetRebootTimeStatusResponse getRebootTimeStatusResponse = (GetRebootTimeStatusResponse) other;
        return Intrinsics.areEqual(unknownFields(), getRebootTimeStatusResponse.unknownFields()) && this.success == getRebootTimeStatusResponse.success && Intrinsics.areEqual(this.value_, getRebootTimeStatusResponse.value_);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + Boolean.hashCode(this.success)) * 37;
        RebootTimeStatus rebootTimeStatus = this.value_;
        int iHashCode2 = iHashCode + (rebootTimeStatus != null ? rebootTimeStatus.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("success=" + this.success);
        if (this.value_ != null) {
            arrayList2.add("value_=" + this.value_);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "GetRebootTimeStatusResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GetRebootTimeStatusResponse copy$default(GetRebootTimeStatusResponse getRebootTimeStatusResponse, boolean z, RebootTimeStatus rebootTimeStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            z = getRebootTimeStatusResponse.success;
        }
        if ((i & 2) != 0) {
            rebootTimeStatus = getRebootTimeStatusResponse.value_;
        }
        if ((i & 4) != 0) {
            byteString = getRebootTimeStatusResponse.unknownFields();
        }
        return getRebootTimeStatusResponse.copy(z, rebootTimeStatus, byteString);
    }

    public final GetRebootTimeStatusResponse copy(boolean success, RebootTimeStatus value_, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GetRebootTimeStatusResponse(success, value_, unknownFields);
    }

    /* JADX INFO: compiled from: GetRebootTimeStatusResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse;", "()V", FirebaseAnalytics.Param.SUCCESS, "", "value_", "Lcom/stripe/proto/api/ipc/RebootTimeStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GetRebootTimeStatusResponse, Builder> {
        public boolean success;
        public RebootTimeStatus value_;

        public final Builder success(boolean success) {
            this.success = success;
            return this;
        }

        public final Builder value_(RebootTimeStatus value_) {
            this.value_ = value_;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GetRebootTimeStatusResponse build() {
            return new GetRebootTimeStatusResponse(this.success, this.value_, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GetRebootTimeStatusResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/GetRebootTimeStatusResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GetRebootTimeStatusResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GetRebootTimeStatusResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GetRebootTimeStatusResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.GetRebootTimeStatusResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GetRebootTimeStatusResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.success) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.success));
                }
                return value.value_ != null ? size + RebootTimeStatus.ADAPTER.encodedSizeWithTag(2, value.value_) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GetRebootTimeStatusResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
                if (value.value_ != null) {
                    RebootTimeStatus.ADAPTER.encodeWithTag(writer, 2, value.value_);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GetRebootTimeStatusResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.value_ != null) {
                    RebootTimeStatus.ADAPTER.encodeWithTag(writer, 2, value.value_);
                }
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GetRebootTimeStatusResponse redact(GetRebootTimeStatusResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RebootTimeStatus rebootTimeStatus = value.value_;
                return GetRebootTimeStatusResponse.copy$default(value, false, rebootTimeStatus != null ? RebootTimeStatus.ADAPTER.redact(rebootTimeStatus) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GetRebootTimeStatusResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                RebootTimeStatus rebootTimeStatusDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GetRebootTimeStatusResponse(zBooleanValue, rebootTimeStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        rebootTimeStatusDecode = RebootTimeStatus.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
