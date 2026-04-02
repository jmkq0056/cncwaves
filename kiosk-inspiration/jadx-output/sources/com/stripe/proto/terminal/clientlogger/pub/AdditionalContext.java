package com.stripe.proto.terminal.clientlogger.pub;

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

/* JADX INFO: compiled from: AdditionalContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;", "action_id", "", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "session_id", "terminal_action_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AdditionalContext extends Message<AdditionalContext, Builder> {
    public static final ProtoAdapter<AdditionalContext> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "actionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serialNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String serial_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String session_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String terminal_action_id;

    public AdditionalContext() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ AdditionalContext(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdditionalContext(String action_id, String serial_number, String session_id, String terminal_action_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.action_id = action_id;
        this.serial_number = serial_number;
        this.session_id = session_id;
        this.terminal_action_id = terminal_action_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.action_id = this.action_id;
        builder.serial_number = this.serial_number;
        builder.session_id = this.session_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AdditionalContext)) {
            return false;
        }
        AdditionalContext additionalContext = (AdditionalContext) other;
        return Intrinsics.areEqual(unknownFields(), additionalContext.unknownFields()) && Intrinsics.areEqual(this.action_id, additionalContext.action_id) && Intrinsics.areEqual(this.serial_number, additionalContext.serial_number) && Intrinsics.areEqual(this.session_id, additionalContext.session_id) && Intrinsics.areEqual(this.terminal_action_id, additionalContext.terminal_action_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.action_id.hashCode()) * 37) + this.serial_number.hashCode()) * 37) + this.session_id.hashCode()) * 37) + this.terminal_action_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("action_id=" + Internal.sanitize(this.action_id));
        arrayList2.add("serial_number=" + Internal.sanitize(this.serial_number));
        arrayList2.add("session_id=" + Internal.sanitize(this.session_id));
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "AdditionalContext{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AdditionalContext copy$default(AdditionalContext additionalContext, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = additionalContext.action_id;
        }
        if ((i & 2) != 0) {
            str2 = additionalContext.serial_number;
        }
        if ((i & 4) != 0) {
            str3 = additionalContext.session_id;
        }
        if ((i & 8) != 0) {
            str4 = additionalContext.terminal_action_id;
        }
        if ((i & 16) != 0) {
            byteString = additionalContext.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str5 = str3;
        return additionalContext.copy(str, str2, str5, str4, byteString2);
    }

    public final AdditionalContext copy(String action_id, String serial_number, String session_id, String terminal_action_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AdditionalContext(action_id, serial_number, session_id, terminal_action_id, unknownFields);
    }

    /* JADX INFO: compiled from: AdditionalContext.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;", "()V", "action_id", "", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "session_id", "terminal_action_id", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AdditionalContext, Builder> {
        public String action_id = "";
        public String serial_number = "";
        public String session_id = "";
        public String terminal_action_id = "";

        public final Builder action_id(String action_id) {
            Intrinsics.checkNotNullParameter(action_id, "action_id");
            this.action_id = action_id;
            return this;
        }

        public final Builder serial_number(String serial_number) {
            Intrinsics.checkNotNullParameter(serial_number, "serial_number");
            this.serial_number = serial_number;
            return this;
        }

        public final Builder session_id(String session_id) {
            Intrinsics.checkNotNullParameter(session_id, "session_id");
            this.session_id = session_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AdditionalContext build() {
            return new AdditionalContext(this.action_id, this.serial_number, this.session_id, this.terminal_action_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AdditionalContext.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AdditionalContext build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AdditionalContext.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AdditionalContext>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.AdditionalContext$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AdditionalContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.action_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.session_id);
                }
                return !Intrinsics.areEqual(value.terminal_action_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.terminal_action_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AdditionalContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AdditionalContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.session_id);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.serial_number);
                }
                if (Intrinsics.areEqual(value.action_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AdditionalContext redact(AdditionalContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AdditionalContext.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AdditionalContext decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AdditionalContext(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
