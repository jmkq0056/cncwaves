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

/* JADX INFO: compiled from: GetSystemSettingsIntegerResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;", FirebaseAnalytics.Param.SUCCESS, "", "value_", "", "unknownFields", "Lokio/ByteString;", "(ZILokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetSystemSettingsIntegerResponse extends Message<GetSystemSettingsIntegerResponse, Builder> {
    public static final ProtoAdapter<GetSystemSettingsIntegerResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean success;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int value_;

    public GetSystemSettingsIntegerResponse() {
        this(false, 0, null, 7, null);
    }

    public /* synthetic */ GetSystemSettingsIntegerResponse(boolean z, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSystemSettingsIntegerResponse(boolean z, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.success = z;
        this.value_ = i;
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
        if (!(other instanceof GetSystemSettingsIntegerResponse)) {
            return false;
        }
        GetSystemSettingsIntegerResponse getSystemSettingsIntegerResponse = (GetSystemSettingsIntegerResponse) other;
        return Intrinsics.areEqual(unknownFields(), getSystemSettingsIntegerResponse.unknownFields()) && this.success == getSystemSettingsIntegerResponse.success && this.value_ == getSystemSettingsIntegerResponse.value_;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.success)) * 37) + Integer.hashCode(this.value_);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("success=" + this.success);
        arrayList2.add("value_=" + this.value_);
        return CollectionsKt.joinToString$default(arrayList, ", ", "GetSystemSettingsIntegerResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GetSystemSettingsIntegerResponse copy$default(GetSystemSettingsIntegerResponse getSystemSettingsIntegerResponse, boolean z, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = getSystemSettingsIntegerResponse.success;
        }
        if ((i2 & 2) != 0) {
            i = getSystemSettingsIntegerResponse.value_;
        }
        if ((i2 & 4) != 0) {
            byteString = getSystemSettingsIntegerResponse.unknownFields();
        }
        return getSystemSettingsIntegerResponse.copy(z, i, byteString);
    }

    public final GetSystemSettingsIntegerResponse copy(boolean success, int value_, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GetSystemSettingsIntegerResponse(success, value_, unknownFields);
    }

    /* JADX INFO: compiled from: GetSystemSettingsIntegerResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;", "()V", FirebaseAnalytics.Param.SUCCESS, "", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GetSystemSettingsIntegerResponse, Builder> {
        public boolean success;
        public int value_;

        public final Builder success(boolean success) {
            this.success = success;
            return this;
        }

        public final Builder value_(int value_) {
            this.value_ = value_;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GetSystemSettingsIntegerResponse build() {
            return new GetSystemSettingsIntegerResponse(this.success, this.value_, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GetSystemSettingsIntegerResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/GetSystemSettingsIntegerResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GetSystemSettingsIntegerResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GetSystemSettingsIntegerResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GetSystemSettingsIntegerResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.GetSystemSettingsIntegerResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GetSystemSettingsIntegerResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.success) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.success));
                }
                return value.value_ != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.value_)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GetSystemSettingsIntegerResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
                if (value.value_ != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.value_));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GetSystemSettingsIntegerResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.value_ != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.value_));
                }
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GetSystemSettingsIntegerResponse redact(GetSystemSettingsIntegerResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return GetSystemSettingsIntegerResponse.copy$default(value, false, 0, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GetSystemSettingsIntegerResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GetSystemSettingsIntegerResponse(zBooleanValue, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
