package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven;

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

/* JADX INFO: compiled from: ServerDrivenDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain$Builder;", "polling", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/PollingScope;", "iot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;", "commands", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/CommandsScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/PollingScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/CommandsScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ServerDrivenDomain extends Message<ServerDrivenDomain, Builder> {
    public static final ProtoAdapter<ServerDrivenDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.CommandsScope#ADAPTER", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final CommandsScope commands;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.IotScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final IotScope iot;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.PollingScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final PollingScope polling;

    public ServerDrivenDomain() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ServerDrivenDomain(PollingScope pollingScope, IotScope iotScope, CommandsScope commandsScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : pollingScope, (i & 2) != 0 ? null : iotScope, (i & 4) != 0 ? null : commandsScope, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerDrivenDomain(PollingScope pollingScope, IotScope iotScope, CommandsScope commandsScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.polling = pollingScope;
        this.iot = iotScope;
        this.commands = commandsScope;
        if (Internal.countNonNull(pollingScope, iotScope, commandsScope) > 1) {
            throw new IllegalArgumentException("At most one of polling, iot, commands may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.polling = this.polling;
        builder.iot = this.iot;
        builder.commands = this.commands;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ServerDrivenDomain)) {
            return false;
        }
        ServerDrivenDomain serverDrivenDomain = (ServerDrivenDomain) other;
        return Intrinsics.areEqual(unknownFields(), serverDrivenDomain.unknownFields()) && Intrinsics.areEqual(this.polling, serverDrivenDomain.polling) && Intrinsics.areEqual(this.iot, serverDrivenDomain.iot) && Intrinsics.areEqual(this.commands, serverDrivenDomain.commands);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PollingScope pollingScope = this.polling;
        int iHashCode2 = (iHashCode + (pollingScope != null ? pollingScope.hashCode() : 0)) * 37;
        IotScope iotScope = this.iot;
        int iHashCode3 = (iHashCode2 + (iotScope != null ? iotScope.hashCode() : 0)) * 37;
        CommandsScope commandsScope = this.commands;
        int iHashCode4 = iHashCode3 + (commandsScope != null ? commandsScope.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.polling != null) {
            arrayList.add("polling=" + this.polling);
        }
        if (this.iot != null) {
            arrayList.add("iot=" + this.iot);
        }
        if (this.commands != null) {
            arrayList.add("commands=" + this.commands);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ServerDrivenDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ServerDrivenDomain copy$default(ServerDrivenDomain serverDrivenDomain, PollingScope pollingScope, IotScope iotScope, CommandsScope commandsScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            pollingScope = serverDrivenDomain.polling;
        }
        if ((i & 2) != 0) {
            iotScope = serverDrivenDomain.iot;
        }
        if ((i & 4) != 0) {
            commandsScope = serverDrivenDomain.commands;
        }
        if ((i & 8) != 0) {
            byteString = serverDrivenDomain.unknownFields();
        }
        return serverDrivenDomain.copy(pollingScope, iotScope, commandsScope, byteString);
    }

    public final ServerDrivenDomain copy(PollingScope polling, IotScope iot, CommandsScope commands, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ServerDrivenDomain(polling, iot, commands, unknownFields);
    }

    /* JADX INFO: compiled from: ServerDrivenDomain.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;", "()V", "commands", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/CommandsScope;", "iot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/IotScope;", "polling", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/PollingScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ServerDrivenDomain, Builder> {
        public CommandsScope commands;
        public IotScope iot;
        public PollingScope polling;

        public final Builder polling(PollingScope polling) {
            this.polling = polling;
            this.iot = null;
            this.commands = null;
            return this;
        }

        public final Builder iot(IotScope iot) {
            this.iot = iot;
            this.polling = null;
            this.commands = null;
            return this;
        }

        public final Builder commands(CommandsScope commands) {
            this.commands = commands;
            this.polling = null;
            this.iot = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ServerDrivenDomain build() {
            return new ServerDrivenDomain(this.polling, this.iot, this.commands, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ServerDrivenDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ServerDrivenDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ServerDrivenDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ServerDrivenDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.ServerDrivenDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ServerDrivenDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + PollingScope.ADAPTER.encodedSizeWithTag(1, value.polling) + IotScope.ADAPTER.encodedSizeWithTag(2, value.iot) + CommandsScope.ADAPTER.encodedSizeWithTag(3, value.commands);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ServerDrivenDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                PollingScope.ADAPTER.encodeWithTag(writer, 1, value.polling);
                IotScope.ADAPTER.encodeWithTag(writer, 2, value.iot);
                CommandsScope.ADAPTER.encodeWithTag(writer, 3, value.commands);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ServerDrivenDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CommandsScope.ADAPTER.encodeWithTag(writer, 3, value.commands);
                IotScope.ADAPTER.encodeWithTag(writer, 2, value.iot);
                PollingScope.ADAPTER.encodeWithTag(writer, 1, value.polling);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ServerDrivenDomain redact(ServerDrivenDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PollingScope pollingScope = value.polling;
                PollingScope pollingScopeRedact = pollingScope != null ? PollingScope.ADAPTER.redact(pollingScope) : null;
                IotScope iotScope = value.iot;
                IotScope iotScopeRedact = iotScope != null ? IotScope.ADAPTER.redact(iotScope) : null;
                CommandsScope commandsScope = value.commands;
                return value.copy(pollingScopeRedact, iotScopeRedact, commandsScope != null ? CommandsScope.ADAPTER.redact(commandsScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ServerDrivenDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PollingScope pollingScopeDecode = null;
                IotScope iotScopeDecode = null;
                CommandsScope commandsScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ServerDrivenDomain(pollingScopeDecode, iotScopeDecode, commandsScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        pollingScopeDecode = PollingScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        iotScopeDecode = IotScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        commandsScopeDecode = CommandsScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
