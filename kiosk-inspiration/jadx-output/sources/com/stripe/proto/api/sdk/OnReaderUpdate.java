package com.stripe.proto.api.sdk;

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
import com.stripe.proto.api.sdk.OnReaderUpdate;
import com.stripe.proto.api.sdk.TerminalHeartbeatResponse;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: OnReaderUpdate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0019\u001a\u001b\u001c\u001dBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;", "card_status_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;", "offline_status_details_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;", "reader_event", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "token_status_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;", "reader_feature_flags_bytes", "Lokio/ByteString;", "unknownFields", "(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;Lcom/stripe/proto/api/sdk/ReaderEvent;Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;Lokio/ByteString;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "OnCardStatusChanged", "OnOfflineStatusDetailsChanged", "OnTokenStatusChanged", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnReaderUpdate extends Message<OnReaderUpdate, Builder> {
    public static final ProtoAdapter<OnReaderUpdate> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnCardStatusChanged#ADAPTER", jsonName = "cardStatusChanged", oneofName = "updateMessage", schemaIndex = 0, tag = 1)
    public final OnCardStatusChanged card_status_changed;

    @WireField(adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnOfflineStatusDetailsChanged#ADAPTER", jsonName = "offlineStatusDetailsChanged", oneofName = "updateMessage", schemaIndex = 1, tag = 2)
    public final OnOfflineStatusDetailsChanged offline_status_details_changed;

    @WireField(adapter = "com.stripe.proto.api.sdk.ReaderEvent#ADAPTER", jsonName = "readerEvent", oneofName = "updateMessage", schemaIndex = 2, tag = 3)
    public final ReaderEvent reader_event;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "readerFeatureFlagsBytes", oneofName = "updateMessage", schemaIndex = 4, tag = 6)
    public final ByteString reader_feature_flags_bytes;

    @WireField(adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnTokenStatusChanged#ADAPTER", jsonName = "tokenStatusChanged", oneofName = "updateMessage", schemaIndex = 3, tag = 5)
    public final OnTokenStatusChanged token_status_changed;

    public OnReaderUpdate() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ OnReaderUpdate(OnCardStatusChanged onCardStatusChanged, OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged, ReaderEvent readerEvent, OnTokenStatusChanged onTokenStatusChanged, ByteString byteString, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : onCardStatusChanged, (i & 2) != 0 ? null : onOfflineStatusDetailsChanged, (i & 4) != 0 ? null : readerEvent, (i & 8) != 0 ? null : onTokenStatusChanged, (i & 16) != 0 ? null : byteString, (i & 32) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnReaderUpdate(OnCardStatusChanged onCardStatusChanged, OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged, ReaderEvent readerEvent, OnTokenStatusChanged onTokenStatusChanged, ByteString byteString, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.card_status_changed = onCardStatusChanged;
        this.offline_status_details_changed = onOfflineStatusDetailsChanged;
        this.reader_event = readerEvent;
        this.token_status_changed = onTokenStatusChanged;
        this.reader_feature_flags_bytes = byteString;
        if (Internal.countNonNull(onCardStatusChanged, onOfflineStatusDetailsChanged, readerEvent, onTokenStatusChanged, byteString) > 1) {
            throw new IllegalArgumentException("At most one of card_status_changed, offline_status_details_changed, reader_event, token_status_changed, reader_feature_flags_bytes may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.card_status_changed = this.card_status_changed;
        builder.offline_status_details_changed = this.offline_status_details_changed;
        builder.reader_event = this.reader_event;
        builder.token_status_changed = this.token_status_changed;
        builder.reader_feature_flags_bytes = this.reader_feature_flags_bytes;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OnReaderUpdate)) {
            return false;
        }
        OnReaderUpdate onReaderUpdate = (OnReaderUpdate) other;
        return Intrinsics.areEqual(unknownFields(), onReaderUpdate.unknownFields()) && Intrinsics.areEqual(this.card_status_changed, onReaderUpdate.card_status_changed) && Intrinsics.areEqual(this.offline_status_details_changed, onReaderUpdate.offline_status_details_changed) && Intrinsics.areEqual(this.reader_event, onReaderUpdate.reader_event) && Intrinsics.areEqual(this.token_status_changed, onReaderUpdate.token_status_changed) && Intrinsics.areEqual(this.reader_feature_flags_bytes, onReaderUpdate.reader_feature_flags_bytes);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        OnCardStatusChanged onCardStatusChanged = this.card_status_changed;
        int iHashCode2 = (iHashCode + (onCardStatusChanged != null ? onCardStatusChanged.hashCode() : 0)) * 37;
        OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged = this.offline_status_details_changed;
        int iHashCode3 = (iHashCode2 + (onOfflineStatusDetailsChanged != null ? onOfflineStatusDetailsChanged.hashCode() : 0)) * 37;
        ReaderEvent readerEvent = this.reader_event;
        int iHashCode4 = (iHashCode3 + (readerEvent != null ? readerEvent.hashCode() : 0)) * 37;
        OnTokenStatusChanged onTokenStatusChanged = this.token_status_changed;
        int iHashCode5 = (iHashCode4 + (onTokenStatusChanged != null ? onTokenStatusChanged.hashCode() : 0)) * 37;
        ByteString byteString = this.reader_feature_flags_bytes;
        int iHashCode6 = iHashCode5 + (byteString != null ? byteString.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.card_status_changed != null) {
            arrayList.add("card_status_changed=" + this.card_status_changed);
        }
        if (this.offline_status_details_changed != null) {
            arrayList.add("offline_status_details_changed=" + this.offline_status_details_changed);
        }
        if (this.reader_event != null) {
            arrayList.add("reader_event=" + this.reader_event);
        }
        if (this.token_status_changed != null) {
            arrayList.add("token_status_changed=" + this.token_status_changed);
        }
        if (this.reader_feature_flags_bytes != null) {
            arrayList.add("reader_feature_flags_bytes=" + this.reader_feature_flags_bytes);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OnReaderUpdate{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ OnReaderUpdate copy$default(OnReaderUpdate onReaderUpdate, OnCardStatusChanged onCardStatusChanged, OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged, ReaderEvent readerEvent, OnTokenStatusChanged onTokenStatusChanged, ByteString byteString, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            onCardStatusChanged = onReaderUpdate.card_status_changed;
        }
        if ((i & 2) != 0) {
            onOfflineStatusDetailsChanged = onReaderUpdate.offline_status_details_changed;
        }
        if ((i & 4) != 0) {
            readerEvent = onReaderUpdate.reader_event;
        }
        if ((i & 8) != 0) {
            onTokenStatusChanged = onReaderUpdate.token_status_changed;
        }
        if ((i & 16) != 0) {
            byteString = onReaderUpdate.reader_feature_flags_bytes;
        }
        if ((i & 32) != 0) {
            byteString2 = onReaderUpdate.unknownFields();
        }
        ByteString byteString3 = byteString;
        ByteString byteString4 = byteString2;
        return onReaderUpdate.copy(onCardStatusChanged, onOfflineStatusDetailsChanged, readerEvent, onTokenStatusChanged, byteString3, byteString4);
    }

    public final OnReaderUpdate copy(OnCardStatusChanged card_status_changed, OnOfflineStatusDetailsChanged offline_status_details_changed, ReaderEvent reader_event, OnTokenStatusChanged token_status_changed, ByteString reader_feature_flags_bytes, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OnReaderUpdate(card_status_changed, offline_status_details_changed, reader_event, token_status_changed, reader_feature_flags_bytes, unknownFields);
    }

    /* JADX INFO: compiled from: OnReaderUpdate.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate;", "()V", "card_status_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;", "offline_status_details_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;", "reader_event", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "reader_feature_flags_bytes", "Lokio/ByteString;", "token_status_changed", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OnReaderUpdate, Builder> {
        public OnCardStatusChanged card_status_changed;
        public OnOfflineStatusDetailsChanged offline_status_details_changed;
        public ReaderEvent reader_event;
        public ByteString reader_feature_flags_bytes;
        public OnTokenStatusChanged token_status_changed;

        public final Builder card_status_changed(OnCardStatusChanged card_status_changed) {
            this.card_status_changed = card_status_changed;
            this.offline_status_details_changed = null;
            this.reader_event = null;
            this.token_status_changed = null;
            this.reader_feature_flags_bytes = null;
            return this;
        }

        public final Builder offline_status_details_changed(OnOfflineStatusDetailsChanged offline_status_details_changed) {
            this.offline_status_details_changed = offline_status_details_changed;
            this.card_status_changed = null;
            this.reader_event = null;
            this.token_status_changed = null;
            this.reader_feature_flags_bytes = null;
            return this;
        }

        public final Builder reader_event(ReaderEvent reader_event) {
            this.reader_event = reader_event;
            this.card_status_changed = null;
            this.offline_status_details_changed = null;
            this.token_status_changed = null;
            this.reader_feature_flags_bytes = null;
            return this;
        }

        public final Builder token_status_changed(OnTokenStatusChanged token_status_changed) {
            this.token_status_changed = token_status_changed;
            this.card_status_changed = null;
            this.offline_status_details_changed = null;
            this.reader_event = null;
            this.reader_feature_flags_bytes = null;
            return this;
        }

        public final Builder reader_feature_flags_bytes(ByteString reader_feature_flags_bytes) {
            this.reader_feature_flags_bytes = reader_feature_flags_bytes;
            this.card_status_changed = null;
            this.offline_status_details_changed = null;
            this.reader_event = null;
            this.token_status_changed = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OnReaderUpdate build() {
            return new OnReaderUpdate(this.card_status_changed, this.offline_status_details_changed, this.reader_event, this.token_status_changed, this.reader_feature_flags_bytes, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OnReaderUpdate.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OnReaderUpdate build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OnReaderUpdate.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OnReaderUpdate>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OnReaderUpdate$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OnReaderUpdate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + OnReaderUpdate.OnCardStatusChanged.ADAPTER.encodedSizeWithTag(1, value.card_status_changed) + OnReaderUpdate.OnOfflineStatusDetailsChanged.ADAPTER.encodedSizeWithTag(2, value.offline_status_details_changed) + ReaderEvent.ADAPTER.encodedSizeWithTag(3, value.reader_event) + OnReaderUpdate.OnTokenStatusChanged.ADAPTER.encodedSizeWithTag(5, value.token_status_changed) + ProtoAdapter.BYTES.encodedSizeWithTag(6, value.reader_feature_flags_bytes);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OnReaderUpdate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                OnReaderUpdate.OnCardStatusChanged.ADAPTER.encodeWithTag(writer, 1, value.card_status_changed);
                OnReaderUpdate.OnOfflineStatusDetailsChanged.ADAPTER.encodeWithTag(writer, 2, value.offline_status_details_changed);
                ReaderEvent.ADAPTER.encodeWithTag(writer, 3, value.reader_event);
                OnReaderUpdate.OnTokenStatusChanged.ADAPTER.encodeWithTag(writer, 5, value.token_status_changed);
                ProtoAdapter.BYTES.encodeWithTag(writer, 6, value.reader_feature_flags_bytes);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OnReaderUpdate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.BYTES.encodeWithTag(writer, 6, value.reader_feature_flags_bytes);
                OnReaderUpdate.OnTokenStatusChanged.ADAPTER.encodeWithTag(writer, 5, value.token_status_changed);
                ReaderEvent.ADAPTER.encodeWithTag(writer, 3, value.reader_event);
                OnReaderUpdate.OnOfflineStatusDetailsChanged.ADAPTER.encodeWithTag(writer, 2, value.offline_status_details_changed);
                OnReaderUpdate.OnCardStatusChanged.ADAPTER.encodeWithTag(writer, 1, value.card_status_changed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OnReaderUpdate redact(OnReaderUpdate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OnReaderUpdate.OnCardStatusChanged onCardStatusChanged = value.card_status_changed;
                OnReaderUpdate.OnCardStatusChanged onCardStatusChangedRedact = onCardStatusChanged != null ? OnReaderUpdate.OnCardStatusChanged.ADAPTER.redact(onCardStatusChanged) : null;
                OnReaderUpdate.OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged = value.offline_status_details_changed;
                OnReaderUpdate.OnOfflineStatusDetailsChanged onOfflineStatusDetailsChangedRedact = onOfflineStatusDetailsChanged != null ? OnReaderUpdate.OnOfflineStatusDetailsChanged.ADAPTER.redact(onOfflineStatusDetailsChanged) : null;
                ReaderEvent readerEvent = value.reader_event;
                ReaderEvent readerEventRedact = readerEvent != null ? ReaderEvent.ADAPTER.redact(readerEvent) : null;
                OnReaderUpdate.OnTokenStatusChanged onTokenStatusChanged = value.token_status_changed;
                return OnReaderUpdate.copy$default(value, onCardStatusChangedRedact, onOfflineStatusDetailsChangedRedact, readerEventRedact, onTokenStatusChanged != null ? OnReaderUpdate.OnTokenStatusChanged.ADAPTER.redact(onTokenStatusChanged) : null, null, ByteString.EMPTY, 16, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OnReaderUpdate decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                OnReaderUpdate.OnCardStatusChanged onCardStatusChangedDecode = null;
                OnReaderUpdate.OnOfflineStatusDetailsChanged onOfflineStatusDetailsChangedDecode = null;
                ReaderEvent readerEventDecode = null;
                OnReaderUpdate.OnTokenStatusChanged onTokenStatusChangedDecode = null;
                ByteString byteStringDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new OnReaderUpdate(onCardStatusChangedDecode, onOfflineStatusDetailsChangedDecode, readerEventDecode, onTokenStatusChangedDecode, byteStringDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        onCardStatusChangedDecode = OnReaderUpdate.OnCardStatusChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        onOfflineStatusDetailsChangedDecode = OnReaderUpdate.OnOfflineStatusDetailsChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        readerEventDecode = ReaderEvent.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        onTokenStatusChangedDecode = OnReaderUpdate.OnTokenStatusChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 6) {
                        byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: OnReaderUpdate.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;", "card_status", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "CardStatus", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OnCardStatusChanged extends Message<OnCardStatusChanged, Builder> {
        public static final ProtoAdapter<OnCardStatusChanged> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.OnReaderUpdate$OnCardStatusChanged$CardStatus#ADAPTER", jsonName = "cardStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final CardStatus card_status;

        /* JADX WARN: Multi-variable type inference failed */
        public OnCardStatusChanged() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ OnCardStatusChanged(CardStatus cardStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CardStatus.CARD_INSERTED : cardStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnCardStatusChanged(CardStatus card_status, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(card_status, "card_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.card_status = card_status;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.card_status = this.card_status;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OnCardStatusChanged)) {
                return false;
            }
            OnCardStatusChanged onCardStatusChanged = (OnCardStatusChanged) other;
            return Intrinsics.areEqual(unknownFields(), onCardStatusChanged.unknownFields()) && this.card_status == onCardStatusChanged.card_status;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.card_status.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("card_status=" + this.card_status);
            return CollectionsKt.joinToString$default(arrayList, ", ", "OnCardStatusChanged{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ OnCardStatusChanged copy$default(OnCardStatusChanged onCardStatusChanged, CardStatus cardStatus, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                cardStatus = onCardStatusChanged.card_status;
            }
            if ((i & 2) != 0) {
                byteString = onCardStatusChanged.unknownFields();
            }
            return onCardStatusChanged.copy(cardStatus, byteString);
        }

        public final OnCardStatusChanged copy(CardStatus card_status, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(card_status, "card_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OnCardStatusChanged(card_status, unknownFields);
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;", "()V", "card_status", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OnCardStatusChanged, Builder> {
            public CardStatus card_status = CardStatus.CARD_INSERTED;

            public final Builder card_status(CardStatus card_status) {
                Intrinsics.checkNotNullParameter(card_status, "card_status");
                this.card_status = card_status;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OnCardStatusChanged build() {
                return new OnCardStatusChanged(this.card_status, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OnCardStatusChanged build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OnCardStatusChanged.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OnCardStatusChanged>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OnReaderUpdate$OnCardStatusChanged$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OnReaderUpdate.OnCardStatusChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.card_status != OnReaderUpdate.OnCardStatusChanged.CardStatus.CARD_INSERTED ? size + OnReaderUpdate.OnCardStatusChanged.CardStatus.ADAPTER.encodedSizeWithTag(1, value.card_status) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OnReaderUpdate.OnCardStatusChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.card_status != OnReaderUpdate.OnCardStatusChanged.CardStatus.CARD_INSERTED) {
                        OnReaderUpdate.OnCardStatusChanged.CardStatus.ADAPTER.encodeWithTag(writer, 1, value.card_status);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OnReaderUpdate.OnCardStatusChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.card_status != OnReaderUpdate.OnCardStatusChanged.CardStatus.CARD_INSERTED) {
                        OnReaderUpdate.OnCardStatusChanged.CardStatus.ADAPTER.encodeWithTag(writer, 1, value.card_status);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnCardStatusChanged decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    OnReaderUpdate.OnCardStatusChanged.CardStatus cardStatusDecode = OnReaderUpdate.OnCardStatusChanged.CardStatus.CARD_INSERTED;
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OnReaderUpdate.OnCardStatusChanged(cardStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                cardStatusDecode = OnReaderUpdate.OnCardStatusChanged.CardStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnCardStatusChanged redact(OnReaderUpdate.OnCardStatusChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OnReaderUpdate.OnCardStatusChanged.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CARD_INSERTED", "CARD_REMOVED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class CardStatus implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ CardStatus[] $VALUES;
            public static final ProtoAdapter<CardStatus> ADAPTER;
            public static final CardStatus CARD_INSERTED;
            public static final CardStatus CARD_REMOVED;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            private final int value;

            private static final /* synthetic */ CardStatus[] $values() {
                return new CardStatus[]{CARD_INSERTED, CARD_REMOVED};
            }

            @JvmStatic
            public static final CardStatus fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<CardStatus> getEntries() {
                return $ENTRIES;
            }

            public static CardStatus valueOf(String str) {
                return (CardStatus) Enum.valueOf(CardStatus.class, str);
            }

            public static CardStatus[] values() {
                return (CardStatus[]) $VALUES.clone();
            }

            private CardStatus(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final CardStatus cardStatus = new CardStatus("CARD_INSERTED", 0, 0);
                CARD_INSERTED = cardStatus;
                CARD_REMOVED = new CardStatus("CARD_REMOVED", 1, 1);
                CardStatus[] cardStatusArr$values = $values();
                $VALUES = cardStatusArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(cardStatusArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardStatus.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<CardStatus>(orCreateKotlinClass, syntax, cardStatus) { // from class: com.stripe.proto.api.sdk.OnReaderUpdate$OnCardStatusChanged$CardStatus$Companion$ADAPTER$1
                    {
                        OnReaderUpdate.OnCardStatusChanged.CardStatus cardStatus2 = cardStatus;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public OnReaderUpdate.OnCardStatusChanged.CardStatus fromValue(int value) {
                        return OnReaderUpdate.OnCardStatusChanged.CardStatus.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: OnReaderUpdate.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final CardStatus fromValue(int value) {
                    if (value == 0) {
                        return CardStatus.CARD_INSERTED;
                    }
                    if (value != 1) {
                        return null;
                    }
                    return CardStatus.CARD_REMOVED;
                }
            }
        }
    }

    /* JADX INFO: compiled from: OnReaderUpdate.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OnOfflineStatusDetailsChanged extends Message<OnOfflineStatusDetailsChanged, Builder> {
        public static final ProtoAdapter<OnOfflineStatusDetailsChanged> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.NetworkStatus#ADAPTER", jsonName = "networkStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final NetworkStatus network_status;

        @WireField(adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER", jsonName = "offlineStats", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final OfflineStats offline_stats;

        public OnOfflineStatusDetailsChanged() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ OnOfflineStatusDetailsChanged(OfflineStats offlineStats, NetworkStatus networkStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : offlineStats, (i & 2) != 0 ? NetworkStatus.NETWORK_STATUS_INVALID : networkStatus, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnOfflineStatusDetailsChanged(OfflineStats offlineStats, NetworkStatus network_status, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(network_status, "network_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.offline_stats = offlineStats;
            this.network_status = network_status;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.offline_stats = this.offline_stats;
            builder.network_status = this.network_status;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OnOfflineStatusDetailsChanged)) {
                return false;
            }
            OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged = (OnOfflineStatusDetailsChanged) other;
            return Intrinsics.areEqual(unknownFields(), onOfflineStatusDetailsChanged.unknownFields()) && Intrinsics.areEqual(this.offline_stats, onOfflineStatusDetailsChanged.offline_stats) && this.network_status == onOfflineStatusDetailsChanged.network_status;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            OfflineStats offlineStats = this.offline_stats;
            int iHashCode2 = ((iHashCode + (offlineStats != null ? offlineStats.hashCode() : 0)) * 37) + this.network_status.hashCode();
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.offline_stats != null) {
                arrayList.add("offline_stats=" + this.offline_stats);
            }
            arrayList.add("network_status=" + this.network_status);
            return CollectionsKt.joinToString$default(arrayList, ", ", "OnOfflineStatusDetailsChanged{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ OnOfflineStatusDetailsChanged copy$default(OnOfflineStatusDetailsChanged onOfflineStatusDetailsChanged, OfflineStats offlineStats, NetworkStatus networkStatus, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                offlineStats = onOfflineStatusDetailsChanged.offline_stats;
            }
            if ((i & 2) != 0) {
                networkStatus = onOfflineStatusDetailsChanged.network_status;
            }
            if ((i & 4) != 0) {
                byteString = onOfflineStatusDetailsChanged.unknownFields();
            }
            return onOfflineStatusDetailsChanged.copy(offlineStats, networkStatus, byteString);
        }

        public final OnOfflineStatusDetailsChanged copy(OfflineStats offline_stats, NetworkStatus network_status, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(network_status, "network_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OnOfflineStatusDetailsChanged(offline_stats, network_status, unknownFields);
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;", "()V", "network_status", "Lcom/stripe/proto/api/sdk/NetworkStatus;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OnOfflineStatusDetailsChanged, Builder> {
            public NetworkStatus network_status = NetworkStatus.NETWORK_STATUS_INVALID;
            public OfflineStats offline_stats;

            public final Builder offline_stats(OfflineStats offline_stats) {
                this.offline_stats = offline_stats;
                return this;
            }

            public final Builder network_status(NetworkStatus network_status) {
                Intrinsics.checkNotNullParameter(network_status, "network_status");
                this.network_status = network_status;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OnOfflineStatusDetailsChanged build() {
                return new OnOfflineStatusDetailsChanged(this.offline_stats, this.network_status, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnOfflineStatusDetailsChanged$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OnOfflineStatusDetailsChanged build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OnOfflineStatusDetailsChanged.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OnOfflineStatusDetailsChanged>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OnReaderUpdate$OnOfflineStatusDetailsChanged$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OnReaderUpdate.OnOfflineStatusDetailsChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.offline_stats != null) {
                        size += OfflineStats.ADAPTER.encodedSizeWithTag(1, value.offline_stats);
                    }
                    return value.network_status != NetworkStatus.NETWORK_STATUS_INVALID ? size + NetworkStatus.ADAPTER.encodedSizeWithTag(2, value.network_status) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OnReaderUpdate.OnOfflineStatusDetailsChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.offline_stats != null) {
                        OfflineStats.ADAPTER.encodeWithTag(writer, 1, value.offline_stats);
                    }
                    if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                        NetworkStatus.ADAPTER.encodeWithTag(writer, 2, value.network_status);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OnReaderUpdate.OnOfflineStatusDetailsChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.network_status != NetworkStatus.NETWORK_STATUS_INVALID) {
                        NetworkStatus.ADAPTER.encodeWithTag(writer, 2, value.network_status);
                    }
                    if (value.offline_stats != null) {
                        OfflineStats.ADAPTER.encodeWithTag(writer, 1, value.offline_stats);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnOfflineStatusDetailsChanged decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    NetworkStatus networkStatusDecode = NetworkStatus.NETWORK_STATUS_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    OfflineStats offlineStatsDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OnReaderUpdate.OnOfflineStatusDetailsChanged(offlineStatsDecode, networkStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            offlineStatsDecode = OfflineStats.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                networkStatusDecode = NetworkStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnOfflineStatusDetailsChanged redact(OnReaderUpdate.OnOfflineStatusDetailsChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    OfflineStats offlineStats = value.offline_stats;
                    return OnReaderUpdate.OnOfflineStatusDetailsChanged.copy$default(value, offlineStats != null ? OfflineStats.ADAPTER.redact(offlineStats) : null, null, ByteString.EMPTY, 2, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: OnReaderUpdate.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged$Builder;", "token_status", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OnTokenStatusChanged extends Message<OnTokenStatusChanged, Builder> {
        public static final ProtoAdapter<OnTokenStatusChanged> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.TerminalHeartbeatResponse$ConnectionTokenStatus#ADAPTER", jsonName = "tokenStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final TerminalHeartbeatResponse.ConnectionTokenStatus token_status;

        /* JADX WARN: Multi-variable type inference failed */
        public OnTokenStatusChanged() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ OnTokenStatusChanged(TerminalHeartbeatResponse.ConnectionTokenStatus connectionTokenStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID : connectionTokenStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnTokenStatusChanged(TerminalHeartbeatResponse.ConnectionTokenStatus token_status, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(token_status, "token_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.token_status = token_status;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.token_status = this.token_status;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof OnTokenStatusChanged)) {
                return false;
            }
            OnTokenStatusChanged onTokenStatusChanged = (OnTokenStatusChanged) other;
            return Intrinsics.areEqual(unknownFields(), onTokenStatusChanged.unknownFields()) && this.token_status == onTokenStatusChanged.token_status;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.token_status.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("token_status=" + this.token_status);
            return CollectionsKt.joinToString$default(arrayList, ", ", "OnTokenStatusChanged{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ OnTokenStatusChanged copy$default(OnTokenStatusChanged onTokenStatusChanged, TerminalHeartbeatResponse.ConnectionTokenStatus connectionTokenStatus, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                connectionTokenStatus = onTokenStatusChanged.token_status;
            }
            if ((i & 2) != 0) {
                byteString = onTokenStatusChanged.unknownFields();
            }
            return onTokenStatusChanged.copy(connectionTokenStatus, byteString);
        }

        public final OnTokenStatusChanged copy(TerminalHeartbeatResponse.ConnectionTokenStatus token_status, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(token_status, "token_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new OnTokenStatusChanged(token_status, unknownFields);
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;", "()V", "token_status", "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<OnTokenStatusChanged, Builder> {
            public TerminalHeartbeatResponse.ConnectionTokenStatus token_status = TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID;

            public final Builder token_status(TerminalHeartbeatResponse.ConnectionTokenStatus token_status) {
                Intrinsics.checkNotNullParameter(token_status, "token_status");
                this.token_status = token_status;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public OnTokenStatusChanged build() {
                return new OnTokenStatusChanged(this.token_status, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: OnReaderUpdate.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnTokenStatusChanged$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ OnTokenStatusChanged build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OnTokenStatusChanged.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<OnTokenStatusChanged>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OnReaderUpdate$OnTokenStatusChanged$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(OnReaderUpdate.OnTokenStatusChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID ? size + TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodedSizeWithTag(1, value.token_status) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, OnReaderUpdate.OnTokenStatusChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID) {
                        TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodeWithTag(writer, 1, value.token_status);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, OnReaderUpdate.OnTokenStatusChanged value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.token_status != TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID) {
                        TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.encodeWithTag(writer, 1, value.token_status);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnTokenStatusChanged decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    TerminalHeartbeatResponse.ConnectionTokenStatus connectionTokenStatusDecode = TerminalHeartbeatResponse.ConnectionTokenStatus.CONNECTION_TOKEN_STATUS_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OnReaderUpdate.OnTokenStatusChanged(connectionTokenStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                connectionTokenStatusDecode = TerminalHeartbeatResponse.ConnectionTokenStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public OnReaderUpdate.OnTokenStatusChanged redact(OnReaderUpdate.OnTokenStatusChanged value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return OnReaderUpdate.OnTokenStatusChanged.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }
    }
}
