package com.stripe.proto.model.payments;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.payments.EmvCaPublicKeyBundlePb;
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

/* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ4\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;", "bundle_checksum", "", "last_modified_ms", "", "cap_keys", "", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "EmvCaPublicKeyPb", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmvCaPublicKeyBundlePb extends Message<EmvCaPublicKeyBundlePb, Builder> {
    public static final ProtoAdapter<EmvCaPublicKeyBundlePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "bundleChecksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String bundle_checksum;

    @WireField(adapter = "com.stripe.proto.model.payments.EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb#ADAPTER", jsonName = "capKeys", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<EmvCaPublicKeyPb> cap_keys;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "lastModifiedMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long last_modified_ms;

    public EmvCaPublicKeyBundlePb() {
        this(null, 0L, null, null, 15, null);
    }

    public /* synthetic */ EmvCaPublicKeyBundlePb(String str, long j, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmvCaPublicKeyBundlePb(String bundle_checksum, long j, List<EmvCaPublicKeyPb> cap_keys, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(bundle_checksum, "bundle_checksum");
        Intrinsics.checkNotNullParameter(cap_keys, "cap_keys");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bundle_checksum = bundle_checksum;
        this.last_modified_ms = j;
        this.cap_keys = Internal.immutableCopyOf("cap_keys", cap_keys);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bundle_checksum = this.bundle_checksum;
        builder.last_modified_ms = this.last_modified_ms;
        builder.cap_keys = this.cap_keys;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EmvCaPublicKeyBundlePb)) {
            return false;
        }
        EmvCaPublicKeyBundlePb emvCaPublicKeyBundlePb = (EmvCaPublicKeyBundlePb) other;
        return Intrinsics.areEqual(unknownFields(), emvCaPublicKeyBundlePb.unknownFields()) && Intrinsics.areEqual(this.bundle_checksum, emvCaPublicKeyBundlePb.bundle_checksum) && this.last_modified_ms == emvCaPublicKeyBundlePb.last_modified_ms && Intrinsics.areEqual(this.cap_keys, emvCaPublicKeyBundlePb.cap_keys);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.bundle_checksum.hashCode()) * 37) + Long.hashCode(this.last_modified_ms)) * 37) + this.cap_keys.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("bundle_checksum=" + Internal.sanitize(this.bundle_checksum));
        arrayList2.add("last_modified_ms=" + this.last_modified_ms);
        if (!this.cap_keys.isEmpty()) {
            arrayList2.add("cap_keys=" + this.cap_keys);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EmvCaPublicKeyBundlePb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EmvCaPublicKeyBundlePb copy$default(EmvCaPublicKeyBundlePb emvCaPublicKeyBundlePb, String str, long j, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emvCaPublicKeyBundlePb.bundle_checksum;
        }
        if ((i & 2) != 0) {
            j = emvCaPublicKeyBundlePb.last_modified_ms;
        }
        if ((i & 4) != 0) {
            list = emvCaPublicKeyBundlePb.cap_keys;
        }
        if ((i & 8) != 0) {
            byteString = emvCaPublicKeyBundlePb.unknownFields();
        }
        return emvCaPublicKeyBundlePb.copy(str, j, list, byteString);
    }

    public final EmvCaPublicKeyBundlePb copy(String bundle_checksum, long last_modified_ms, List<EmvCaPublicKeyPb> cap_keys, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(bundle_checksum, "bundle_checksum");
        Intrinsics.checkNotNullParameter(cap_keys, "cap_keys");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EmvCaPublicKeyBundlePb(bundle_checksum, last_modified_ms, cap_keys, unknownFields);
    }

    /* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;", "()V", "bundle_checksum", "", "cap_keys", "", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;", "last_modified_ms", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EmvCaPublicKeyBundlePb, Builder> {
        public String bundle_checksum = "";
        public List<EmvCaPublicKeyPb> cap_keys = CollectionsKt.emptyList();
        public long last_modified_ms;

        public final Builder bundle_checksum(String bundle_checksum) {
            Intrinsics.checkNotNullParameter(bundle_checksum, "bundle_checksum");
            this.bundle_checksum = bundle_checksum;
            return this;
        }

        public final Builder last_modified_ms(long last_modified_ms) {
            this.last_modified_ms = last_modified_ms;
            return this;
        }

        public final Builder cap_keys(List<EmvCaPublicKeyPb> cap_keys) {
            Intrinsics.checkNotNullParameter(cap_keys, "cap_keys");
            Internal.checkElementsNotNull(cap_keys);
            this.cap_keys = cap_keys;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EmvCaPublicKeyBundlePb build() {
            return new EmvCaPublicKeyBundlePb(this.bundle_checksum, this.last_modified_ms, this.cap_keys, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EmvCaPublicKeyBundlePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EmvCaPublicKeyBundlePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EmvCaPublicKeyBundlePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.EmvCaPublicKeyBundlePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EmvCaPublicKeyBundlePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.bundle_checksum, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.bundle_checksum);
                }
                if (value.last_modified_ms != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.last_modified_ms));
                }
                return size + EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.ADAPTER.asRepeated().encodedSizeWithTag(3, value.cap_keys);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EmvCaPublicKeyBundlePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.bundle_checksum, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.bundle_checksum);
                }
                if (value.last_modified_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.last_modified_ms));
                }
                EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.cap_keys);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EmvCaPublicKeyBundlePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.cap_keys);
                if (value.last_modified_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.last_modified_ms));
                }
                if (Intrinsics.areEqual(value.bundle_checksum, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.bundle_checksum);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EmvCaPublicKeyBundlePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EmvCaPublicKeyBundlePb(strDecode, jLongValue, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 3) {
                        arrayList.add(EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EmvCaPublicKeyBundlePb redact(EmvCaPublicKeyBundlePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return EmvCaPublicKeyBundlePb.copy$default(value, null, 0L, Internal.m361redactElements(value.cap_keys, EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.ADAPTER), ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb$Builder;", "aid", "", FirebaseAnalytics.Param.INDEX, "modulus", "exponent", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EmvCaPublicKeyPb extends Message<EmvCaPublicKeyPb, Builder> {
        public static final ProtoAdapter<EmvCaPublicKeyPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String aid;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int exponent;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String index;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String modulus;

        public EmvCaPublicKeyPb() {
            this(null, null, null, 0, null, 31, null);
        }

        public /* synthetic */ EmvCaPublicKeyPb(String str, String str2, String str3, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmvCaPublicKeyPb(String aid, String index, String modulus, int i, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(aid, "aid");
            Intrinsics.checkNotNullParameter(index, "index");
            Intrinsics.checkNotNullParameter(modulus, "modulus");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.aid = aid;
            this.index = index;
            this.modulus = modulus;
            this.exponent = i;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.aid = this.aid;
            builder.index = this.index;
            builder.modulus = this.modulus;
            builder.exponent = this.exponent;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof EmvCaPublicKeyPb)) {
                return false;
            }
            EmvCaPublicKeyPb emvCaPublicKeyPb = (EmvCaPublicKeyPb) other;
            return Intrinsics.areEqual(unknownFields(), emvCaPublicKeyPb.unknownFields()) && Intrinsics.areEqual(this.aid, emvCaPublicKeyPb.aid) && Intrinsics.areEqual(this.index, emvCaPublicKeyPb.index) && Intrinsics.areEqual(this.modulus, emvCaPublicKeyPb.modulus) && this.exponent == emvCaPublicKeyPb.exponent;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((unknownFields().hashCode() * 37) + this.aid.hashCode()) * 37) + this.index.hashCode()) * 37) + this.modulus.hashCode()) * 37) + Integer.hashCode(this.exponent);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("aid=" + Internal.sanitize(this.aid));
            arrayList2.add("index=" + Internal.sanitize(this.index));
            arrayList2.add("modulus=" + Internal.sanitize(this.modulus));
            arrayList2.add("exponent=" + this.exponent);
            return CollectionsKt.joinToString$default(arrayList, ", ", "EmvCaPublicKeyPb{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ EmvCaPublicKeyPb copy$default(EmvCaPublicKeyPb emvCaPublicKeyPb, String str, String str2, String str3, int i, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = emvCaPublicKeyPb.aid;
            }
            if ((i2 & 2) != 0) {
                str2 = emvCaPublicKeyPb.index;
            }
            if ((i2 & 4) != 0) {
                str3 = emvCaPublicKeyPb.modulus;
            }
            if ((i2 & 8) != 0) {
                i = emvCaPublicKeyPb.exponent;
            }
            if ((i2 & 16) != 0) {
                byteString = emvCaPublicKeyPb.unknownFields();
            }
            ByteString byteString2 = byteString;
            String str4 = str3;
            return emvCaPublicKeyPb.copy(str, str2, str4, i, byteString2);
        }

        public final EmvCaPublicKeyPb copy(String aid, String index, String modulus, int exponent, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(aid, "aid");
            Intrinsics.checkNotNullParameter(index, "index");
            Intrinsics.checkNotNullParameter(modulus, "modulus");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new EmvCaPublicKeyPb(aid, index, modulus, exponent, unknownFields);
        }

        /* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;", "()V", "aid", "", "exponent", "", FirebaseAnalytics.Param.INDEX, "modulus", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<EmvCaPublicKeyPb, Builder> {
            public int exponent;
            public String aid = "";
            public String index = "";
            public String modulus = "";

            public final Builder aid(String aid) {
                Intrinsics.checkNotNullParameter(aid, "aid");
                this.aid = aid;
                return this;
            }

            public final Builder index(String index) {
                Intrinsics.checkNotNullParameter(index, "index");
                this.index = index;
                return this;
            }

            public final Builder modulus(String modulus) {
                Intrinsics.checkNotNullParameter(modulus, "modulus");
                this.modulus = modulus;
                return this;
            }

            public final Builder exponent(int exponent) {
                this.exponent = exponent;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EmvCaPublicKeyPb build() {
                return new EmvCaPublicKeyPb(this.aid, this.index, this.modulus, this.exponent, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: EmvCaPublicKeyBundlePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ EmvCaPublicKeyPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EmvCaPublicKeyPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<EmvCaPublicKeyPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.payments.EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.aid, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.aid);
                    }
                    if (!Intrinsics.areEqual(value.index, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.index);
                    }
                    if (!Intrinsics.areEqual(value.modulus, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.modulus);
                    }
                    return value.exponent != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.exponent)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.aid, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
                    }
                    if (!Intrinsics.areEqual(value.index, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.index);
                    }
                    if (!Intrinsics.areEqual(value.modulus, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.modulus);
                    }
                    if (value.exponent != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.exponent));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.exponent != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.exponent));
                    }
                    if (!Intrinsics.areEqual(value.modulus, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.modulus);
                    }
                    if (!Intrinsics.areEqual(value.index, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.index);
                    }
                    if (Intrinsics.areEqual(value.aid, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb redact(EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb.copy$default(value, null, null, null, 0, ByteString.EMPTY, 15, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    int iIntValue = 0;
                    String strDecode3 = strDecode2;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new EmvCaPublicKeyBundlePb.EmvCaPublicKeyPb(strDecode, strDecode3, strDecode2, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
