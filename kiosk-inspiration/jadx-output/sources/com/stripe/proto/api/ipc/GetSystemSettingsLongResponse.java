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

/* JADX INFO: compiled from: GetSystemSettingsLongResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;", FirebaseAnalytics.Param.SUCCESS, "", "value_", "", "unknownFields", "Lokio/ByteString;", "(ZJLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetSystemSettingsLongResponse extends Message<GetSystemSettingsLongResponse, Builder> {
    public static final ProtoAdapter<GetSystemSettingsLongResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean success;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long value_;

    public GetSystemSettingsLongResponse() {
        this(false, 0L, null, 7, null);
    }

    public /* synthetic */ GetSystemSettingsLongResponse(boolean z, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSystemSettingsLongResponse(boolean z, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.success = z;
        this.value_ = j;
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
        if (!(other instanceof GetSystemSettingsLongResponse)) {
            return false;
        }
        GetSystemSettingsLongResponse getSystemSettingsLongResponse = (GetSystemSettingsLongResponse) other;
        return Intrinsics.areEqual(unknownFields(), getSystemSettingsLongResponse.unknownFields()) && this.success == getSystemSettingsLongResponse.success && this.value_ == getSystemSettingsLongResponse.value_;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.success)) * 37) + Long.hashCode(this.value_);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("success=" + this.success);
        arrayList2.add("value_=" + this.value_);
        return CollectionsKt.joinToString$default(arrayList, ", ", "GetSystemSettingsLongResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GetSystemSettingsLongResponse copy$default(GetSystemSettingsLongResponse getSystemSettingsLongResponse, boolean z, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            z = getSystemSettingsLongResponse.success;
        }
        if ((i & 2) != 0) {
            j = getSystemSettingsLongResponse.value_;
        }
        if ((i & 4) != 0) {
            byteString = getSystemSettingsLongResponse.unknownFields();
        }
        return getSystemSettingsLongResponse.copy(z, j, byteString);
    }

    public final GetSystemSettingsLongResponse copy(boolean success, long value_, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GetSystemSettingsLongResponse(success, value_, unknownFields);
    }

    /* JADX INFO: compiled from: GetSystemSettingsLongResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;", "()V", FirebaseAnalytics.Param.SUCCESS, "", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GetSystemSettingsLongResponse, Builder> {
        public boolean success;
        public long value_;

        public final Builder success(boolean success) {
            this.success = success;
            return this;
        }

        public final Builder value_(long value_) {
            this.value_ = value_;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GetSystemSettingsLongResponse build() {
            return new GetSystemSettingsLongResponse(this.success, this.value_, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GetSystemSettingsLongResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsLongResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GetSystemSettingsLongResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GetSystemSettingsLongResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GetSystemSettingsLongResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.GetSystemSettingsLongResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GetSystemSettingsLongResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.success) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.success));
                }
                return value.value_ != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.value_)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GetSystemSettingsLongResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
                if (value.value_ != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.value_));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GetSystemSettingsLongResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.value_ != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.value_));
                }
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GetSystemSettingsLongResponse redact(GetSystemSettingsLongResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return GetSystemSettingsLongResponse.copy$default(value, false, 0L, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GetSystemSettingsLongResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GetSystemSettingsLongResponse(zBooleanValue, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
