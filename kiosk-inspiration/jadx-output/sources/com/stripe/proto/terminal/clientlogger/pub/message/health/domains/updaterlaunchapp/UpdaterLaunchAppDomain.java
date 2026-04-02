package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: UpdaterLaunchAppDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain$Builder;", "set_launch_app", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/SetLaunchAppScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/SetLaunchAppScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdaterLaunchAppDomain extends Message<UpdaterLaunchAppDomain, Builder> {
    public static final ProtoAdapter<UpdaterLaunchAppDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp.SetLaunchAppScope#ADAPTER", jsonName = "setLaunchApp", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final SetLaunchAppScope set_launch_app;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdaterLaunchAppDomain() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ UpdaterLaunchAppDomain(SetLaunchAppScope setLaunchAppScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : setLaunchAppScope, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdaterLaunchAppDomain(SetLaunchAppScope setLaunchAppScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.set_launch_app = setLaunchAppScope;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.set_launch_app = this.set_launch_app;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdaterLaunchAppDomain)) {
            return false;
        }
        UpdaterLaunchAppDomain updaterLaunchAppDomain = (UpdaterLaunchAppDomain) other;
        return Intrinsics.areEqual(unknownFields(), updaterLaunchAppDomain.unknownFields()) && Intrinsics.areEqual(this.set_launch_app, updaterLaunchAppDomain.set_launch_app);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SetLaunchAppScope setLaunchAppScope = this.set_launch_app;
        int iHashCode2 = iHashCode + (setLaunchAppScope != null ? setLaunchAppScope.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.set_launch_app != null) {
            arrayList.add("set_launch_app=" + this.set_launch_app);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdaterLaunchAppDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdaterLaunchAppDomain copy$default(UpdaterLaunchAppDomain updaterLaunchAppDomain, SetLaunchAppScope setLaunchAppScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            setLaunchAppScope = updaterLaunchAppDomain.set_launch_app;
        }
        if ((i & 2) != 0) {
            byteString = updaterLaunchAppDomain.unknownFields();
        }
        return updaterLaunchAppDomain.copy(setLaunchAppScope, byteString);
    }

    public final UpdaterLaunchAppDomain copy(SetLaunchAppScope set_launch_app, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdaterLaunchAppDomain(set_launch_app, unknownFields);
    }

    /* JADX INFO: compiled from: UpdaterLaunchAppDomain.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;", "()V", "set_launch_app", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/SetLaunchAppScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdaterLaunchAppDomain, Builder> {
        public SetLaunchAppScope set_launch_app;

        public final Builder set_launch_app(SetLaunchAppScope set_launch_app) {
            this.set_launch_app = set_launch_app;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdaterLaunchAppDomain build() {
            return new UpdaterLaunchAppDomain(this.set_launch_app, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdaterLaunchAppDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdaterLaunchAppDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdaterLaunchAppDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdaterLaunchAppDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp.UpdaterLaunchAppDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdaterLaunchAppDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + SetLaunchAppScope.ADAPTER.encodedSizeWithTag(1, value.set_launch_app);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdaterLaunchAppDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                SetLaunchAppScope.ADAPTER.encodeWithTag(writer, 1, value.set_launch_app);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdaterLaunchAppDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                SetLaunchAppScope.ADAPTER.encodeWithTag(writer, 1, value.set_launch_app);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdaterLaunchAppDomain redact(UpdaterLaunchAppDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SetLaunchAppScope setLaunchAppScope = value.set_launch_app;
                return value.copy(setLaunchAppScope != null ? SetLaunchAppScope.ADAPTER.redact(setLaunchAppScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdaterLaunchAppDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SetLaunchAppScope setLaunchAppScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdaterLaunchAppDomain(setLaunchAppScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        setLaunchAppScopeDecode = SetLaunchAppScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
