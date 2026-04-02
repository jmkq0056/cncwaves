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

/* JADX INFO: compiled from: OfflineAccountConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;", OfflineStorageConstantsKt.ID, "", OfflineStorageConstantsKt.ACCOUNT_ID, "", "account_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "unknownFields", "Lokio/ByteString;", "(JLjava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineAccountConfig extends Message<OfflineAccountConfig, Builder> {
    public static final ProtoAdapter<OfflineAccountConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String account_id;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb#ADAPTER", jsonName = "accountOfflineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 7)
    public final OfflineConfigPb.AccountOfflineConfigPb account_offline_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long id;

    public OfflineAccountConfig() {
        this(0L, null, null, null, 15, null);
    }

    public /* synthetic */ OfflineAccountConfig(long j, String str, OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? null : accountOfflineConfigPb, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineAccountConfig(long j, String account_id, OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = j;
        this.account_id = account_id;
        this.account_offline_config = accountOfflineConfigPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.account_id = this.account_id;
        builder.account_offline_config = this.account_offline_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineAccountConfig)) {
            return false;
        }
        OfflineAccountConfig offlineAccountConfig = (OfflineAccountConfig) other;
        return Intrinsics.areEqual(unknownFields(), offlineAccountConfig.unknownFields()) && this.id == offlineAccountConfig.id && Intrinsics.areEqual(this.account_id, offlineAccountConfig.account_id) && Intrinsics.areEqual(this.account_offline_config, offlineAccountConfig.account_offline_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + Long.hashCode(this.id)) * 37) + this.account_id.hashCode()) * 37;
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb = this.account_offline_config;
        int iHashCode2 = iHashCode + (accountOfflineConfigPb != null ? accountOfflineConfigPb.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + this.id);
        arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        if (this.account_offline_config != null) {
            arrayList2.add("account_offline_config=" + this.account_offline_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineAccountConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ OfflineAccountConfig copy$default(OfflineAccountConfig offlineAccountConfig, long j, String str, OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = offlineAccountConfig.id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = offlineAccountConfig.account_id;
        }
        String str2 = str;
        if ((i & 4) != 0) {
            accountOfflineConfigPb = offlineAccountConfig.account_offline_config;
        }
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb2 = accountOfflineConfigPb;
        if ((i & 8) != 0) {
            byteString = offlineAccountConfig.unknownFields();
        }
        return offlineAccountConfig.copy(j2, str2, accountOfflineConfigPb2, byteString);
    }

    public final OfflineAccountConfig copy(long id, String account_id, OfflineConfigPb.AccountOfflineConfigPb account_offline_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineAccountConfig(id, account_id, account_offline_config, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineAccountConfig.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "account_offline_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", OfflineStorageConstantsKt.ID, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineAccountConfig, Builder> {
        public String account_id = "";
        public OfflineConfigPb.AccountOfflineConfigPb account_offline_config;
        public long id;

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder account_id(String account_id) {
            Intrinsics.checkNotNullParameter(account_id, "account_id");
            this.account_id = account_id;
            return this;
        }

        public final Builder account_offline_config(OfflineConfigPb.AccountOfflineConfigPb account_offline_config) {
            this.account_offline_config = account_offline_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineAccountConfig build() {
            return new OfflineAccountConfig(this.id, this.account_id, this.account_offline_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineAccountConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineAccountConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineAccountConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineAccountConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.offline_mode.OfflineAccountConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineAccountConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.account_id);
                }
                return value.account_offline_config != null ? size + OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodedSizeWithTag(7, value.account_offline_config) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineAccountConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.account_offline_config != null) {
                    OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodeWithTag(writer, 7, value.account_offline_config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineAccountConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.account_offline_config != null) {
                    OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.encodeWithTag(writer, 7, value.account_offline_config);
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineAccountConfig redact(OfflineAccountConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb = value.account_offline_config;
                return OfflineAccountConfig.copy$default(value, 0L, null, accountOfflineConfigPb != null ? OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.redact(accountOfflineConfigPb) : null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineAccountConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                String strDecode = "";
                OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPbDecode = null;
                while (true) {
                    long j = jLongValue;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new OfflineAccountConfig(j, strDecode, accountOfflineConfigPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag != 1) {
                            if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 7) {
                                accountOfflineConfigPbDecode = OfflineConfigPb.AccountOfflineConfigPb.ADAPTER.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                    jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                }
            }
        };
    }
}
