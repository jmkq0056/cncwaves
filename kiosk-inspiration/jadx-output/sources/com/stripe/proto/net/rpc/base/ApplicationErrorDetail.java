package com.stripe.proto.net.rpc.base;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.net.rpc.base.ApplicationErrorDetail;
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

/* JADX INFO: compiled from: ApplicationErrorDetail.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$Builder;", "missing_resource", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;", "invalid_request", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "InvalidRequest", "MissingResource", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationErrorDetail extends Message<ApplicationErrorDetail, Builder> {
    public static final ProtoAdapter<ApplicationErrorDetail> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.net.rpc.base.ApplicationErrorDetail$InvalidRequest#ADAPTER", jsonName = "invalidRequest", oneofName = "error", schemaIndex = 1, tag = 2)
    public final InvalidRequest invalid_request;

    @WireField(adapter = "com.stripe.proto.net.rpc.base.ApplicationErrorDetail$MissingResource#ADAPTER", jsonName = "missingResource", oneofName = "error", schemaIndex = 0, tag = 1)
    public final MissingResource missing_resource;

    public ApplicationErrorDetail() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ApplicationErrorDetail(MissingResource missingResource, InvalidRequest invalidRequest, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : missingResource, (i & 2) != 0 ? null : invalidRequest, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationErrorDetail(MissingResource missingResource, InvalidRequest invalidRequest, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.missing_resource = missingResource;
        this.invalid_request = invalidRequest;
        if (Internal.countNonNull(missingResource, invalidRequest) > 1) {
            throw new IllegalArgumentException("At most one of missing_resource, invalid_request may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.missing_resource = this.missing_resource;
        builder.invalid_request = this.invalid_request;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApplicationErrorDetail)) {
            return false;
        }
        ApplicationErrorDetail applicationErrorDetail = (ApplicationErrorDetail) other;
        return Intrinsics.areEqual(unknownFields(), applicationErrorDetail.unknownFields()) && Intrinsics.areEqual(this.missing_resource, applicationErrorDetail.missing_resource) && Intrinsics.areEqual(this.invalid_request, applicationErrorDetail.invalid_request);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        MissingResource missingResource = this.missing_resource;
        int iHashCode2 = (iHashCode + (missingResource != null ? missingResource.hashCode() : 0)) * 37;
        InvalidRequest invalidRequest = this.invalid_request;
        int iHashCode3 = iHashCode2 + (invalidRequest != null ? invalidRequest.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.missing_resource != null) {
            arrayList.add("missing_resource=" + this.missing_resource);
        }
        if (this.invalid_request != null) {
            arrayList.add("invalid_request=" + this.invalid_request);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApplicationErrorDetail{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApplicationErrorDetail copy$default(ApplicationErrorDetail applicationErrorDetail, MissingResource missingResource, InvalidRequest invalidRequest, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            missingResource = applicationErrorDetail.missing_resource;
        }
        if ((i & 2) != 0) {
            invalidRequest = applicationErrorDetail.invalid_request;
        }
        if ((i & 4) != 0) {
            byteString = applicationErrorDetail.unknownFields();
        }
        return applicationErrorDetail.copy(missingResource, invalidRequest, byteString);
    }

    public final ApplicationErrorDetail copy(MissingResource missing_resource, InvalidRequest invalid_request, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApplicationErrorDetail(missing_resource, invalid_request, unknownFields);
    }

    /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail;", "()V", "invalid_request", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;", "missing_resource", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApplicationErrorDetail, Builder> {
        public InvalidRequest invalid_request;
        public MissingResource missing_resource;

        public final Builder missing_resource(MissingResource missing_resource) {
            this.missing_resource = missing_resource;
            this.invalid_request = null;
            return this;
        }

        public final Builder invalid_request(InvalidRequest invalid_request) {
            this.invalid_request = invalid_request;
            this.missing_resource = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApplicationErrorDetail build() {
            return new ApplicationErrorDetail(this.missing_resource, this.invalid_request, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApplicationErrorDetail build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationErrorDetail.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApplicationErrorDetail>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.net.rpc.base.ApplicationErrorDetail$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApplicationErrorDetail value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ApplicationErrorDetail.MissingResource.ADAPTER.encodedSizeWithTag(1, value.missing_resource) + ApplicationErrorDetail.InvalidRequest.ADAPTER.encodedSizeWithTag(2, value.invalid_request);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApplicationErrorDetail value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ApplicationErrorDetail.MissingResource.ADAPTER.encodeWithTag(writer, 1, value.missing_resource);
                ApplicationErrorDetail.InvalidRequest.ADAPTER.encodeWithTag(writer, 2, value.invalid_request);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApplicationErrorDetail value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ApplicationErrorDetail.InvalidRequest.ADAPTER.encodeWithTag(writer, 2, value.invalid_request);
                ApplicationErrorDetail.MissingResource.ADAPTER.encodeWithTag(writer, 1, value.missing_resource);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationErrorDetail redact(ApplicationErrorDetail value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ApplicationErrorDetail.MissingResource missingResource = value.missing_resource;
                ApplicationErrorDetail.MissingResource missingResourceRedact = missingResource != null ? ApplicationErrorDetail.MissingResource.ADAPTER.redact(missingResource) : null;
                ApplicationErrorDetail.InvalidRequest invalidRequest = value.invalid_request;
                return value.copy(missingResourceRedact, invalidRequest != null ? ApplicationErrorDetail.InvalidRequest.ADAPTER.redact(invalidRequest) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationErrorDetail decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ApplicationErrorDetail.MissingResource missingResourceDecode = null;
                ApplicationErrorDetail.InvalidRequest invalidRequestDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApplicationErrorDetail(missingResourceDecode, invalidRequestDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        missingResourceDecode = ApplicationErrorDetail.MissingResource.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        invalidRequestDecode = ApplicationErrorDetail.InvalidRequest.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource$Builder;", "resource", "", "token", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class MissingResource extends Message<MissingResource, Builder> {
        public static final ProtoAdapter<MissingResource> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String resource;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String token;

        public MissingResource() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ MissingResource(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MissingResource(String resource, String token, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(resource, "resource");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.resource = resource;
            this.token = token;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.resource = this.resource;
            builder.token = this.token;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof MissingResource)) {
                return false;
            }
            MissingResource missingResource = (MissingResource) other;
            return Intrinsics.areEqual(unknownFields(), missingResource.unknownFields()) && Intrinsics.areEqual(this.resource, missingResource.resource) && Intrinsics.areEqual(this.token, missingResource.token);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.resource.hashCode()) * 37) + this.token.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("resource=" + Internal.sanitize(this.resource));
            arrayList2.add("token=" + Internal.sanitize(this.token));
            return CollectionsKt.joinToString$default(arrayList, ", ", "MissingResource{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ MissingResource copy$default(MissingResource missingResource, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = missingResource.resource;
            }
            if ((i & 2) != 0) {
                str2 = missingResource.token;
            }
            if ((i & 4) != 0) {
                byteString = missingResource.unknownFields();
            }
            return missingResource.copy(str, str2, byteString);
        }

        public final MissingResource copy(String resource, String token, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new MissingResource(resource, token, unknownFields);
        }

        /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;", "()V", "resource", "", "token", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<MissingResource, Builder> {
            public String resource = "";
            public String token = "";

            public final Builder resource(String resource) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                this.resource = resource;
                return this;
            }

            public final Builder token(String token) {
                Intrinsics.checkNotNullParameter(token, "token");
                this.token = token;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public MissingResource build() {
                return new MissingResource(this.resource, this.token, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$MissingResource$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ MissingResource build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MissingResource.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<MissingResource>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.net.rpc.base.ApplicationErrorDetail$MissingResource$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApplicationErrorDetail.MissingResource value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.resource, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.resource);
                    }
                    return !Intrinsics.areEqual(value.token, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.token) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApplicationErrorDetail.MissingResource value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.resource, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.resource);
                    }
                    if (!Intrinsics.areEqual(value.token, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.token);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApplicationErrorDetail.MissingResource value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.token, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.token);
                    }
                    if (Intrinsics.areEqual(value.resource, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.resource);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationErrorDetail.MissingResource redact(ApplicationErrorDetail.MissingResource value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ApplicationErrorDetail.MissingResource.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationErrorDetail.MissingResource decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApplicationErrorDetail.MissingResource(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
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

    /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest$Builder;", "parameter", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InvalidRequest extends Message<InvalidRequest, Builder> {
        public static final ProtoAdapter<InvalidRequest> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String parameter;

        /* JADX WARN: Multi-variable type inference failed */
        public InvalidRequest() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ InvalidRequest(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InvalidRequest(String parameter, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(parameter, "parameter");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.parameter = parameter;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.parameter = this.parameter;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof InvalidRequest)) {
                return false;
            }
            InvalidRequest invalidRequest = (InvalidRequest) other;
            return Intrinsics.areEqual(unknownFields(), invalidRequest.unknownFields()) && Intrinsics.areEqual(this.parameter, invalidRequest.parameter);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.parameter.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("parameter=" + Internal.sanitize(this.parameter));
            return CollectionsKt.joinToString$default(arrayList, ", ", "InvalidRequest{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ InvalidRequest copy$default(InvalidRequest invalidRequest, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = invalidRequest.parameter;
            }
            if ((i & 2) != 0) {
                byteString = invalidRequest.unknownFields();
            }
            return invalidRequest.copy(str, byteString);
        }

        public final InvalidRequest copy(String parameter, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(parameter, "parameter");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new InvalidRequest(parameter, unknownFields);
        }

        /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;", "()V", "parameter", "", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<InvalidRequest, Builder> {
            public String parameter = "";

            public final Builder parameter(String parameter) {
                Intrinsics.checkNotNullParameter(parameter, "parameter");
                this.parameter = parameter;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public InvalidRequest build() {
                return new InvalidRequest(this.parameter, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApplicationErrorDetail.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/net/rpc/base/ApplicationErrorDetail$InvalidRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ InvalidRequest build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InvalidRequest.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<InvalidRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.net.rpc.base.ApplicationErrorDetail$InvalidRequest$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApplicationErrorDetail.InvalidRequest value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.parameter, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.parameter) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApplicationErrorDetail.InvalidRequest value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.parameter, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.parameter);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApplicationErrorDetail.InvalidRequest value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.parameter, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.parameter);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationErrorDetail.InvalidRequest redact(ApplicationErrorDetail.InvalidRequest value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ApplicationErrorDetail.InvalidRequest.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationErrorDetail.InvalidRequest decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApplicationErrorDetail.InvalidRequest(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
