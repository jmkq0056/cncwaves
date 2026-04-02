package com.stripe.proto.event_channel.pub.message;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: SetupIntentPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B;\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJA\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;", "setup_intent_id", "", "moto", "", "enable_customer_cancellation", "allow_redisplay", "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupIntentPayload extends Message<SetupIntentPayload, Builder> {
    public static final ProtoAdapter<SetupIntentPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 2, tag = 3)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 1, tag = 2)
    public final Boolean moto;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "setupIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String setup_intent_id;

    public SetupIntentPayload() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ SetupIntentPayload(String str, Boolean bool, Boolean bool2, AllowRedisplay allowRedisplay, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : bool2, (i & 8) != 0 ? AllowRedisplay.ALLOW_REDISPLAY_INVALID : allowRedisplay, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetupIntentPayload(String setup_intent_id, Boolean bool, Boolean bool2, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.setup_intent_id = setup_intent_id;
        this.moto = bool;
        this.enable_customer_cancellation = bool2;
        this.allow_redisplay = allow_redisplay;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.setup_intent_id = this.setup_intent_id;
        builder.moto = this.moto;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.allow_redisplay = this.allow_redisplay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SetupIntentPayload)) {
            return false;
        }
        SetupIntentPayload setupIntentPayload = (SetupIntentPayload) other;
        return Intrinsics.areEqual(unknownFields(), setupIntentPayload.unknownFields()) && Intrinsics.areEqual(this.setup_intent_id, setupIntentPayload.setup_intent_id) && Intrinsics.areEqual(this.moto, setupIntentPayload.moto) && Intrinsics.areEqual(this.enable_customer_cancellation, setupIntentPayload.enable_customer_cancellation) && this.allow_redisplay == setupIntentPayload.allow_redisplay;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.setup_intent_id.hashCode()) * 37;
        Boolean bool = this.moto;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.enable_customer_cancellation;
        int iHashCode3 = ((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.allow_redisplay.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("setup_intent_id=" + Internal.sanitize(this.setup_intent_id));
        if (this.moto != null) {
            arrayList2.add("moto=" + this.moto);
        }
        if (this.enable_customer_cancellation != null) {
            arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        }
        arrayList2.add("allow_redisplay=" + this.allow_redisplay);
        return CollectionsKt.joinToString$default(arrayList, ", ", "SetupIntentPayload{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SetupIntentPayload copy$default(SetupIntentPayload setupIntentPayload, String str, Boolean bool, Boolean bool2, AllowRedisplay allowRedisplay, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setupIntentPayload.setup_intent_id;
        }
        if ((i & 2) != 0) {
            bool = setupIntentPayload.moto;
        }
        if ((i & 4) != 0) {
            bool2 = setupIntentPayload.enable_customer_cancellation;
        }
        if ((i & 8) != 0) {
            allowRedisplay = setupIntentPayload.allow_redisplay;
        }
        if ((i & 16) != 0) {
            byteString = setupIntentPayload.unknownFields();
        }
        ByteString byteString2 = byteString;
        Boolean bool3 = bool2;
        return setupIntentPayload.copy(str, bool, bool3, allowRedisplay, byteString2);
    }

    public final SetupIntentPayload copy(String setup_intent_id, Boolean moto, Boolean enable_customer_cancellation, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SetupIntentPayload(setup_intent_id, moto, enable_customer_cancellation, allow_redisplay, unknownFields);
    }

    /* JADX INFO: compiled from: SetupIntentPayload.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\rJ\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\rJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0016\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "()V", "allow_redisplay", "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "moto", "setup_intent_id", "", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SetupIntentPayload, Builder> {
        public Boolean enable_customer_cancellation;
        public Boolean moto;
        public String setup_intent_id = "";
        public AllowRedisplay allow_redisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;

        public final Builder setup_intent_id(String setup_intent_id) {
            Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
            this.setup_intent_id = setup_intent_id;
            return this;
        }

        public final Builder moto(Boolean moto) {
            this.moto = moto;
            return this;
        }

        public final Builder enable_customer_cancellation(Boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder allow_redisplay(AllowRedisplay allow_redisplay) {
            Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SetupIntentPayload build() {
            return new SetupIntentPayload(this.setup_intent_id, this.moto, this.enable_customer_cancellation, this.allow_redisplay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SetupIntentPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SetupIntentPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetupIntentPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SetupIntentPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.SetupIntentPayload$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SetupIntentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.setup_intent_id);
                }
                if (value.moto != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.moto);
                }
                if (value.enable_customer_cancellation != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(3, value.enable_customer_cancellation);
                }
                return value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID ? size + AllowRedisplay.ADAPTER.encodedSizeWithTag(4, value.allow_redisplay) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SetupIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.setup_intent_id);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.moto);
                }
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.enable_customer_cancellation);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 4, value.allow_redisplay);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SetupIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 4, value.allow_redisplay);
                }
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.enable_customer_cancellation);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.moto);
                }
                if (Intrinsics.areEqual(value.setup_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.setup_intent_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SetupIntentPayload decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                AllowRedisplay allowRedisplayDecode = AllowRedisplay.ALLOW_REDISPLAY_INVALID;
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                String strDecode = "";
                while (true) {
                    AllowRedisplay allowRedisplay = allowRedisplayDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new SetupIntentPayload(strDecode, boolDecode, boolDecode2, allowRedisplay, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else if (iNextTag == 3) {
                            boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SetupIntentPayload redact(SetupIntentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.moto;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.enable_customer_cancellation;
                return SetupIntentPayload.copy$default(value, null, boolRedact, bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null, null, ByteString.EMPTY, 9, null);
            }
        };
    }
}
