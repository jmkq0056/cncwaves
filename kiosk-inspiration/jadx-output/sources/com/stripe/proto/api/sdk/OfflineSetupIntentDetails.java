package com.stripe.proto.api.sdk;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: OfflineSetupIntentDetails.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B;\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ<\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;", OfflineStorageConstantsKt.ID, "", "stored_at", "", "requires_upload", "", "card_present_details", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineSetupIntentDetails extends Message<OfflineSetupIntentDetails, Builder> {
    public static final ProtoAdapter<OfflineSetupIntentDetails> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineCardPresentDetails#ADAPTER", jsonName = "cardPresentDetails", schemaIndex = 3, tag = 4)
    public final OfflineCardPresentDetails card_present_details;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "requiresUpload", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean requires_upload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "storedAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long stored_at;

    public OfflineSetupIntentDetails() {
        this(null, 0L, false, null, null, 31, null);
    }

    public /* synthetic */ OfflineSetupIntentDetails(String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : offlineCardPresentDetails, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineSetupIntentDetails(String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.stored_at = j;
        this.requires_upload = z;
        this.card_present_details = offlineCardPresentDetails;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.stored_at = this.stored_at;
        builder.requires_upload = this.requires_upload;
        builder.card_present_details = this.card_present_details;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineSetupIntentDetails)) {
            return false;
        }
        OfflineSetupIntentDetails offlineSetupIntentDetails = (OfflineSetupIntentDetails) other;
        return Intrinsics.areEqual(unknownFields(), offlineSetupIntentDetails.unknownFields()) && Intrinsics.areEqual(this.id, offlineSetupIntentDetails.id) && this.stored_at == offlineSetupIntentDetails.stored_at && this.requires_upload == offlineSetupIntentDetails.requires_upload && Intrinsics.areEqual(this.card_present_details, offlineSetupIntentDetails.card_present_details);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + Long.hashCode(this.stored_at)) * 37) + Boolean.hashCode(this.requires_upload)) * 37;
        OfflineCardPresentDetails offlineCardPresentDetails = this.card_present_details;
        int iHashCode3 = iHashCode2 + (offlineCardPresentDetails != null ? offlineCardPresentDetails.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + Internal.sanitize(this.id));
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("stored_at=" + this.stored_at);
        arrayList2.add("requires_upload=" + this.requires_upload);
        if (this.card_present_details != null) {
            arrayList2.add("card_present_details=" + this.card_present_details);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineSetupIntentDetails{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ OfflineSetupIntentDetails copy$default(OfflineSetupIntentDetails offlineSetupIntentDetails, String str, long j, boolean z, OfflineCardPresentDetails offlineCardPresentDetails, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineSetupIntentDetails.id;
        }
        if ((i & 2) != 0) {
            j = offlineSetupIntentDetails.stored_at;
        }
        if ((i & 4) != 0) {
            z = offlineSetupIntentDetails.requires_upload;
        }
        if ((i & 8) != 0) {
            offlineCardPresentDetails = offlineSetupIntentDetails.card_present_details;
        }
        if ((i & 16) != 0) {
            byteString = offlineSetupIntentDetails.unknownFields();
        }
        ByteString byteString2 = byteString;
        boolean z2 = z;
        return offlineSetupIntentDetails.copy(str, j, z2, offlineCardPresentDetails, byteString2);
    }

    public final OfflineSetupIntentDetails copy(String id, long stored_at, boolean requires_upload, OfflineCardPresentDetails card_present_details, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineSetupIntentDetails(id, stored_at, requires_upload, card_present_details, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineSetupIntentDetails.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "()V", "card_present_details", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;", OfflineStorageConstantsKt.ID, "", "requires_upload", "", "stored_at", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineSetupIntentDetails, Builder> {
        public OfflineCardPresentDetails card_present_details;
        public String id;
        public boolean requires_upload;
        public long stored_at;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder stored_at(long stored_at) {
            this.stored_at = stored_at;
            return this;
        }

        public final Builder requires_upload(boolean requires_upload) {
            this.requires_upload = requires_upload;
            return this;
        }

        public final Builder card_present_details(OfflineCardPresentDetails card_present_details) {
            this.card_present_details = card_present_details;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineSetupIntentDetails build() {
            return new OfflineSetupIntentDetails(this.id, this.stored_at, this.requires_upload, this.card_present_details, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineSetupIntentDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineSetupIntentDetails build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineSetupIntentDetails.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineSetupIntentDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OfflineSetupIntentDetails$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineSetupIntentDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id);
                if (value.stored_at != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.stored_at));
                }
                if (value.requires_upload) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.requires_upload));
                }
                return size + OfflineCardPresentDetails.ADAPTER.encodedSizeWithTag(4, value.card_present_details);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineSetupIntentDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                if (value.stored_at != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.stored_at));
                }
                if (value.requires_upload) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.requires_upload));
                }
                OfflineCardPresentDetails.ADAPTER.encodeWithTag(writer, 4, value.card_present_details);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineSetupIntentDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                OfflineCardPresentDetails.ADAPTER.encodeWithTag(writer, 4, value.card_present_details);
                if (value.requires_upload) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.requires_upload));
                }
                if (value.stored_at != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.stored_at));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineSetupIntentDetails redact(OfflineSetupIntentDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineCardPresentDetails offlineCardPresentDetails = value.card_present_details;
                return OfflineSetupIntentDetails.copy$default(value, null, 0L, false, offlineCardPresentDetails != null ? OfflineCardPresentDetails.ADAPTER.redact(offlineCardPresentDetails) : null, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineSetupIntentDetails decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                long jLongValue = 0;
                boolean zBooleanValue = false;
                OfflineCardPresentDetails offlineCardPresentDetailsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new OfflineSetupIntentDetails(strDecode, jLongValue, zBooleanValue, offlineCardPresentDetailsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 3) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 4) {
                        offlineCardPresentDetailsDecode = OfflineCardPresentDetails.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
