package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: AddEmvSecondGenerationDataRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BO\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJU\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0012\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;", "expand", "", "", "is_approved", "", "second_generation_data", "rejection_reason", OfflineStorageConstantsKt.ID, "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AddEmvSecondGenerationDataRequest extends Message<AddEmvSecondGenerationDataRequest, Builder> {
    public static final ProtoAdapter<AddEmvSecondGenerationDataRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isApproved", schemaIndex = 1, tag = 2)
    public final Boolean is_approved;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "rejectionReason", schemaIndex = 3, tag = 4)
    public final String rejection_reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "secondGenerationData", schemaIndex = 2, tag = 3)
    public final String second_generation_data;

    public AddEmvSecondGenerationDataRequest() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ AddEmvSecondGenerationDataRequest(List list, Boolean bool, String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddEmvSecondGenerationDataRequest(List<String> expand, Boolean bool, String str, String str2, String str3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.is_approved = bool;
        this.second_generation_data = str;
        this.rejection_reason = str2;
        this.id = str3;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.is_approved = this.is_approved;
        builder.second_generation_data = this.second_generation_data;
        builder.rejection_reason = this.rejection_reason;
        builder.id = this.id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AddEmvSecondGenerationDataRequest)) {
            return false;
        }
        AddEmvSecondGenerationDataRequest addEmvSecondGenerationDataRequest = (AddEmvSecondGenerationDataRequest) other;
        return Intrinsics.areEqual(unknownFields(), addEmvSecondGenerationDataRequest.unknownFields()) && Intrinsics.areEqual(this.expand, addEmvSecondGenerationDataRequest.expand) && Intrinsics.areEqual(this.is_approved, addEmvSecondGenerationDataRequest.is_approved) && Intrinsics.areEqual(this.second_generation_data, addEmvSecondGenerationDataRequest.second_generation_data) && Intrinsics.areEqual(this.rejection_reason, addEmvSecondGenerationDataRequest.rejection_reason) && Intrinsics.areEqual(this.id, addEmvSecondGenerationDataRequest.id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        Boolean bool = this.is_approved;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        String str = this.second_generation_data;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.rejection_reason;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.id;
        int iHashCode5 = iHashCode4 + (str3 != null ? str3.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.is_approved != null) {
            arrayList.add("is_approved=" + this.is_approved);
        }
        if (this.second_generation_data != null) {
            arrayList.add("second_generation_data=" + this.second_generation_data);
        }
        if (this.rejection_reason != null) {
            arrayList.add("rejection_reason=" + this.rejection_reason);
        }
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AddEmvSecondGenerationDataRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AddEmvSecondGenerationDataRequest copy$default(AddEmvSecondGenerationDataRequest addEmvSecondGenerationDataRequest, List list, Boolean bool, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = addEmvSecondGenerationDataRequest.expand;
        }
        if ((i & 2) != 0) {
            bool = addEmvSecondGenerationDataRequest.is_approved;
        }
        if ((i & 4) != 0) {
            str = addEmvSecondGenerationDataRequest.second_generation_data;
        }
        if ((i & 8) != 0) {
            str2 = addEmvSecondGenerationDataRequest.rejection_reason;
        }
        if ((i & 16) != 0) {
            str3 = addEmvSecondGenerationDataRequest.id;
        }
        if ((i & 32) != 0) {
            byteString = addEmvSecondGenerationDataRequest.unknownFields();
        }
        String str4 = str3;
        ByteString byteString2 = byteString;
        return addEmvSecondGenerationDataRequest.copy(list, bool, str, str2, str4, byteString2);
    }

    public final AddEmvSecondGenerationDataRequest copy(List<String> expand, Boolean is_approved, String second_generation_data, String rejection_reason, String id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AddEmvSecondGenerationDataRequest(expand, is_approved, second_generation_data, rejection_reason, id, unknownFields);
    }

    /* JADX INFO: compiled from: AddEmvSecondGenerationDataRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "()V", "expand", "", "", OfflineStorageConstantsKt.ID, "is_approved", "", "Ljava/lang/Boolean;", "rejection_reason", "second_generation_data", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AddEmvSecondGenerationDataRequest, Builder> {
        public List<String> expand = CollectionsKt.emptyList();
        public String id;
        public Boolean is_approved;
        public String rejection_reason;
        public String second_generation_data;

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder is_approved(Boolean is_approved) {
            this.is_approved = is_approved;
            return this;
        }

        public final Builder second_generation_data(String second_generation_data) {
            this.second_generation_data = second_generation_data;
            return this;
        }

        public final Builder rejection_reason(String rejection_reason) {
            this.rejection_reason = rejection_reason;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AddEmvSecondGenerationDataRequest build() {
            return new AddEmvSecondGenerationDataRequest(this.expand, this.is_approved, this.second_generation_data, this.rejection_reason, this.id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AddEmvSecondGenerationDataRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AddEmvSecondGenerationDataRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AddEmvSecondGenerationDataRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AddEmvSecondGenerationDataRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.AddEmvSecondGenerationDataRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AddEmvSecondGenerationDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.is_approved != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.is_approved);
                }
                if (value.second_generation_data != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.second_generation_data);
                }
                if (value.rejection_reason != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.rejection_reason);
                }
                return value.id != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AddEmvSecondGenerationDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.is_approved != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.is_approved);
                }
                if (value.second_generation_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.second_generation_data);
                }
                if (value.rejection_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.rejection_reason);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AddEmvSecondGenerationDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                if (value.rejection_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.rejection_reason);
                }
                if (value.second_generation_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.second_generation_data);
                }
                if (value.is_approved != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.is_approved);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AddEmvSecondGenerationDataRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AddEmvSecondGenerationDataRequest(arrayList, boolDecode, strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 2) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AddEmvSecondGenerationDataRequest redact(AddEmvSecondGenerationDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.is_approved;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str = value.second_generation_data;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.rejection_reason;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.id;
                return AddEmvSecondGenerationDataRequest.copy$default(value, null, boolRedact, strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
