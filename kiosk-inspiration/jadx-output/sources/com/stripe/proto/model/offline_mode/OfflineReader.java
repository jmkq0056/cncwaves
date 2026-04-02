package com.stripe.proto.model.offline_mode;

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
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
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

/* JADX INFO: compiled from: OfflineReader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBa\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jb\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineReader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "", "stripe_id", "last_activated_at", "", OfflineStorageConstantsKt.ACCOUNT_ID, OfflineStorageConstantsKt.ID, "created_at", "reader_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "label", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineReader extends Message<OfflineReader, Builder> {
    public static final ProtoAdapter<OfflineReader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "createdAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final long created_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final long id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String label;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "lastActivatedAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long last_activated_at;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$ReaderOfflineConfigPb#ADAPTER", jsonName = "readerOfflineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final OfflineConfigPb.ReaderOfflineConfigPb reader_offline_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serialNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_id;

    public OfflineReader() {
        this(null, null, 0L, null, 0L, 0L, null, null, null, 511, null);
    }

    public /* synthetic */ OfflineReader(String str, String str2, long j, String str3, long j2, long j3, OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? 0L : j2, (i & 32) == 0 ? j3 : 0L, (i & 64) != 0 ? null : readerOfflineConfigPb, (i & 128) == 0 ? str4 : "", (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineReader(String serial_number, String stripe_id, long j, String account_id, long j2, long j3, OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb, String label, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(stripe_id, "stripe_id");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.serial_number = serial_number;
        this.stripe_id = stripe_id;
        this.last_activated_at = j;
        this.account_id = account_id;
        this.id = j2;
        this.created_at = j3;
        this.reader_offline_config = readerOfflineConfigPb;
        this.label = label;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.serial_number = this.serial_number;
        builder.stripe_id = this.stripe_id;
        builder.last_activated_at = this.last_activated_at;
        builder.account_id = this.account_id;
        builder.id = this.id;
        builder.created_at = this.created_at;
        builder.reader_offline_config = this.reader_offline_config;
        builder.label = this.label;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineReader)) {
            return false;
        }
        OfflineReader offlineReader = (OfflineReader) other;
        return Intrinsics.areEqual(unknownFields(), offlineReader.unknownFields()) && Intrinsics.areEqual(this.serial_number, offlineReader.serial_number) && Intrinsics.areEqual(this.stripe_id, offlineReader.stripe_id) && this.last_activated_at == offlineReader.last_activated_at && Intrinsics.areEqual(this.account_id, offlineReader.account_id) && this.id == offlineReader.id && this.created_at == offlineReader.created_at && Intrinsics.areEqual(this.reader_offline_config, offlineReader.reader_offline_config) && Intrinsics.areEqual(this.label, offlineReader.label);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((unknownFields().hashCode() * 37) + this.serial_number.hashCode()) * 37) + this.stripe_id.hashCode()) * 37) + Long.hashCode(this.last_activated_at)) * 37) + this.account_id.hashCode()) * 37) + Long.hashCode(this.id)) * 37) + Long.hashCode(this.created_at)) * 37;
        OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb = this.reader_offline_config;
        int iHashCode2 = ((iHashCode + (readerOfflineConfigPb != null ? readerOfflineConfigPb.hashCode() : 0)) * 37) + this.label.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("serial_number=" + Internal.sanitize(this.serial_number));
        arrayList2.add("stripe_id=" + Internal.sanitize(this.stripe_id));
        arrayList2.add("last_activated_at=" + this.last_activated_at);
        arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        arrayList2.add("id=" + this.id);
        arrayList2.add("created_at=" + this.created_at);
        if (this.reader_offline_config != null) {
            arrayList2.add("reader_offline_config=" + this.reader_offline_config);
        }
        arrayList2.add("label=" + Internal.sanitize(this.label));
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineReader{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ OfflineReader copy$default(OfflineReader offlineReader, String str, String str2, long j, String str3, long j2, long j3, OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineReader.serial_number;
        }
        if ((i & 2) != 0) {
            str2 = offlineReader.stripe_id;
        }
        if ((i & 4) != 0) {
            j = offlineReader.last_activated_at;
        }
        if ((i & 8) != 0) {
            str3 = offlineReader.account_id;
        }
        if ((i & 16) != 0) {
            j2 = offlineReader.id;
        }
        if ((i & 32) != 0) {
            j3 = offlineReader.created_at;
        }
        if ((i & 64) != 0) {
            readerOfflineConfigPb = offlineReader.reader_offline_config;
        }
        if ((i & 128) != 0) {
            str4 = offlineReader.label;
        }
        if ((i & 256) != 0) {
            byteString = offlineReader.unknownFields();
        }
        ByteString byteString2 = byteString;
        OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb2 = readerOfflineConfigPb;
        long j4 = j3;
        String str5 = str3;
        long j5 = j;
        return offlineReader.copy(str, str2, j5, str5, j2, j4, readerOfflineConfigPb2, str4, byteString2);
    }

    public final OfflineReader copy(String serial_number, String stripe_id, long last_activated_at, String account_id, long id, long created_at, OfflineConfigPb.ReaderOfflineConfigPb reader_offline_config, String label, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(stripe_id, "stripe_id");
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineReader(serial_number, stripe_id, last_activated_at, account_id, id, created_at, reader_offline_config, label, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineReader.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "created_at", "", OfflineStorageConstantsKt.ID, "label", "last_activated_at", "reader_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "stripe_id", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineReader, Builder> {
        public long created_at;
        public long id;
        public long last_activated_at;
        public OfflineConfigPb.ReaderOfflineConfigPb reader_offline_config;
        public String serial_number = "";
        public String stripe_id = "";
        public String account_id = "";
        public String label = "";

        public final Builder serial_number(String serial_number) {
            Intrinsics.checkNotNullParameter(serial_number, "serial_number");
            this.serial_number = serial_number;
            return this;
        }

        public final Builder stripe_id(String stripe_id) {
            Intrinsics.checkNotNullParameter(stripe_id, "stripe_id");
            this.stripe_id = stripe_id;
            return this;
        }

        public final Builder last_activated_at(long last_activated_at) {
            this.last_activated_at = last_activated_at;
            return this;
        }

        public final Builder account_id(String account_id) {
            Intrinsics.checkNotNullParameter(account_id, "account_id");
            this.account_id = account_id;
            return this;
        }

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder created_at(long created_at) {
            this.created_at = created_at;
            return this;
        }

        public final Builder reader_offline_config(OfflineConfigPb.ReaderOfflineConfigPb reader_offline_config) {
            this.reader_offline_config = reader_offline_config;
            return this;
        }

        public final Builder label(String label) {
            Intrinsics.checkNotNullParameter(label, "label");
            this.label = label;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineReader build() {
            return new OfflineReader(this.serial_number, this.stripe_id, this.last_activated_at, this.account_id, this.id, this.created_at, this.reader_offline_config, this.label, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineReader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineReader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/offline_mode/OfflineReader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineReader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineReader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineReader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.offline_mode.OfflineReader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.stripe_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_id);
                }
                if (value.last_activated_at != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(3, Long.valueOf(value.last_activated_at));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.account_id);
                }
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(5, Long.valueOf(value.id));
                }
                if (value.created_at != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(6, Long.valueOf(value.created_at));
                }
                if (value.reader_offline_config != null) {
                    size += OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodedSizeWithTag(7, value.reader_offline_config);
                }
                return !Intrinsics.areEqual(value.label, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.label) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.stripe_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_id);
                }
                if (value.last_activated_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.last_activated_at));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.account_id);
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.id));
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.created_at));
                }
                if (value.reader_offline_config != null) {
                    OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodeWithTag(writer, 7, value.reader_offline_config);
                }
                if (!Intrinsics.areEqual(value.label, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.label);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.label, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.label);
                }
                if (value.reader_offline_config != null) {
                    OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.encodeWithTag(writer, 7, value.reader_offline_config);
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 6, Long.valueOf(value.created_at));
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 5, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.account_id);
                }
                if (value.last_activated_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.last_activated_at));
                }
                if (!Intrinsics.areEqual(value.stripe_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_id);
                }
                if (Intrinsics.areEqual(value.serial_number, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.serial_number);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineReader redact(OfflineReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb = value.reader_offline_config;
                return OfflineReader.copy$default(value, null, null, 0L, null, 0L, 0L, readerOfflineConfigPb != null ? OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.redact(readerOfflineConfigPb) : null, null, ByteString.EMPTY, 191, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineReader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPbDecode = null;
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                jLongValue2 = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 6:
                                jLongValue3 = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 7:
                                readerOfflineConfigPbDecode = OfflineConfigPb.ReaderOfflineConfigPb.ADAPTER.decode(reader);
                                break;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new OfflineReader(strDecode, strDecode2, jLongValue, strDecode3, jLongValue2, jLongValue3, readerOfflineConfigPbDecode, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
