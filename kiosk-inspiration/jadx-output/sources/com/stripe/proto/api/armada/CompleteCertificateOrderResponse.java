package com.stripe.proto.api.armada;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.armada.CompleteCertificateOrderResponse;
import com.stripe.proto.model.common.InstantPb;
import com.sun.jna.platform.win32.Ddeml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CompleteCertificateOrderResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB?\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ@\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;", "certificate_chain", "", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;", "retry_at", "Lcom/stripe/proto/model/common/InstantPb;", "retry_after", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V", "getRetry_at$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", Ddeml.SZDDESYS_ITEM_STATUS, "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CompleteCertificateOrderResponse extends Message<CompleteCertificateOrderResponse, Builder> {
    public static final ProtoAdapter<CompleteCertificateOrderResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "certificateChain", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> certificate_chain;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "retryAfter", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long retry_after;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "retryAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final InstantPb retry_at;

    @WireField(adapter = "com.stripe.proto.api.armada.CompleteCertificateOrderResponse$Status#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Status status;

    public CompleteCertificateOrderResponse() {
        this(null, null, null, 0L, null, 31, null);
    }

    @Deprecated(message = "retry_at is deprecated")
    public static /* synthetic */ void getRetry_at$annotations() {
    }

    public /* synthetic */ CompleteCertificateOrderResponse(List list, Status status, InstantPb instantPb, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? Status.PENDING : status, (i & 4) != 0 ? null : instantPb, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompleteCertificateOrderResponse(List<String> certificate_chain, Status status, InstantPb instantPb, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.status = status;
        this.retry_at = instantPb;
        this.retry_after = j;
        this.certificate_chain = Internal.immutableCopyOf("certificate_chain", certificate_chain);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.certificate_chain = this.certificate_chain;
        builder.status = this.status;
        builder.retry_at = this.retry_at;
        builder.retry_after = this.retry_after;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CompleteCertificateOrderResponse)) {
            return false;
        }
        CompleteCertificateOrderResponse completeCertificateOrderResponse = (CompleteCertificateOrderResponse) other;
        return Intrinsics.areEqual(unknownFields(), completeCertificateOrderResponse.unknownFields()) && Intrinsics.areEqual(this.certificate_chain, completeCertificateOrderResponse.certificate_chain) && this.status == completeCertificateOrderResponse.status && Intrinsics.areEqual(this.retry_at, completeCertificateOrderResponse.retry_at) && this.retry_after == completeCertificateOrderResponse.retry_after;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.certificate_chain.hashCode()) * 37) + this.status.hashCode()) * 37;
        InstantPb instantPb = this.retry_at;
        int iHashCode2 = ((iHashCode + (instantPb != null ? instantPb.hashCode() : 0)) * 37) + Long.hashCode(this.retry_after);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.certificate_chain.isEmpty()) {
            arrayList.add("certificate_chain=" + Internal.sanitize(this.certificate_chain));
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("status=" + this.status);
        if (this.retry_at != null) {
            arrayList2.add("retry_at=" + this.retry_at);
        }
        arrayList2.add("retry_after=" + this.retry_after);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CompleteCertificateOrderResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CompleteCertificateOrderResponse copy$default(CompleteCertificateOrderResponse completeCertificateOrderResponse, List list, Status status, InstantPb instantPb, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = completeCertificateOrderResponse.certificate_chain;
        }
        if ((i & 2) != 0) {
            status = completeCertificateOrderResponse.status;
        }
        if ((i & 4) != 0) {
            instantPb = completeCertificateOrderResponse.retry_at;
        }
        if ((i & 8) != 0) {
            j = completeCertificateOrderResponse.retry_after;
        }
        if ((i & 16) != 0) {
            byteString = completeCertificateOrderResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        InstantPb instantPb2 = instantPb;
        return completeCertificateOrderResponse.copy(list, status, instantPb2, j, byteString2);
    }

    public final CompleteCertificateOrderResponse copy(List<String> certificate_chain, Status status, InstantPb retry_at, long retry_after, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CompleteCertificateOrderResponse(certificate_chain, status, retry_at, retry_after, unknownFields);
    }

    /* JADX INFO: compiled from: CompleteCertificateOrderResponse.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0012\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;", "()V", "certificate_chain", "", "", "retry_after", "", "retry_at", "Lcom/stripe/proto/model/common/InstantPb;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CompleteCertificateOrderResponse, Builder> {
        public long retry_after;
        public InstantPb retry_at;
        public List<String> certificate_chain = CollectionsKt.emptyList();
        public Status status = Status.PENDING;

        public final Builder certificate_chain(List<String> certificate_chain) {
            Intrinsics.checkNotNullParameter(certificate_chain, "certificate_chain");
            Internal.checkElementsNotNull(certificate_chain);
            this.certificate_chain = certificate_chain;
            return this;
        }

        public final Builder status(Status status) {
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            return this;
        }

        @Deprecated(message = "retry_at is deprecated")
        public final Builder retry_at(InstantPb retry_at) {
            this.retry_at = retry_at;
            return this;
        }

        public final Builder retry_after(long retry_after) {
            this.retry_after = retry_after;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CompleteCertificateOrderResponse build() {
            return new CompleteCertificateOrderResponse(this.certificate_chain, this.status, this.retry_at, this.retry_after, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CompleteCertificateOrderResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CompleteCertificateOrderResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CompleteCertificateOrderResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CompleteCertificateOrderResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.CompleteCertificateOrderResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CompleteCertificateOrderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.certificate_chain);
                if (value.status != CompleteCertificateOrderResponse.Status.PENDING) {
                    size += CompleteCertificateOrderResponse.Status.ADAPTER.encodedSizeWithTag(2, value.status);
                }
                if (value.retry_at != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(3, value.retry_at);
                }
                return value.retry_after != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.retry_after)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CompleteCertificateOrderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.certificate_chain);
                if (value.status != CompleteCertificateOrderResponse.Status.PENDING) {
                    CompleteCertificateOrderResponse.Status.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                if (value.retry_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.retry_at);
                }
                if (value.retry_after != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.retry_after));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CompleteCertificateOrderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.retry_after != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.retry_after));
                }
                if (value.retry_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 3, value.retry_at);
                }
                if (value.status != CompleteCertificateOrderResponse.Status.PENDING) {
                    CompleteCertificateOrderResponse.Status.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.certificate_chain);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CompleteCertificateOrderResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                CompleteCertificateOrderResponse.Status statusDecode = CompleteCertificateOrderResponse.Status.PENDING;
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                InstantPb instantPbDecode = null;
                while (true) {
                    CompleteCertificateOrderResponse.Status status = statusDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CompleteCertificateOrderResponse(arrayList, status, instantPbDecode, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else if (iNextTag == 2) {
                            try {
                                statusDecode = CompleteCertificateOrderResponse.Status.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            instantPbDecode = InstantPb.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CompleteCertificateOrderResponse redact(CompleteCertificateOrderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.retry_at;
                return CompleteCertificateOrderResponse.copy$default(value, null, null, instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null, 0L, ByteString.EMPTY, 11, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CompleteCertificateOrderResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PENDING", "PROCESSING", "INVALID", "VALID", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Status implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final ProtoAdapter<Status> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Status INVALID;
        public static final Status PENDING;
        public static final Status PROCESSING;
        public static final Status VALID;
        private final int value;

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{PENDING, PROCESSING, INVALID, VALID};
        }

        @JvmStatic
        public static final Status fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Status status = new Status("PENDING", 0, 0);
            PENDING = status;
            PROCESSING = new Status("PROCESSING", 1, 1);
            INVALID = new Status("INVALID", 2, 2);
            VALID = new Status("VALID", 3, 3);
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Status.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Status>(orCreateKotlinClass, syntax, status) { // from class: com.stripe.proto.api.armada.CompleteCertificateOrderResponse$Status$Companion$ADAPTER$1
                {
                    CompleteCertificateOrderResponse.Status status2 = status;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CompleteCertificateOrderResponse.Status fromValue(int value) {
                    return CompleteCertificateOrderResponse.Status.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CompleteCertificateOrderResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Status fromValue(int value) {
                if (value == 0) {
                    return Status.PENDING;
                }
                if (value == 1) {
                    return Status.PROCESSING;
                }
                if (value == 2) {
                    return Status.INVALID;
                }
                if (value != 3) {
                    return null;
                }
                return Status.VALID;
            }
        }
    }
}
