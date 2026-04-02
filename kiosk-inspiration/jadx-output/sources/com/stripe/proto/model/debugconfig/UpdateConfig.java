package com.stripe.proto.model.debugconfig;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.debugconfig.UpdateConfig;
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

/* JADX INFO: compiled from: UpdateConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJD\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;", "channel", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;", "disabled", "", "forceTms", "debugLogging", "bypassAppInstall", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;ZZZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Channel", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateConfig extends Message<UpdateConfig, Builder> {
    public static final ProtoAdapter<UpdateConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean bypassAppInstall;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.UpdateConfig$Channel#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Channel channel;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean debugLogging;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean disabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean forceTms;

    public UpdateConfig() {
        this(null, false, false, false, false, null, 63, null);
    }

    public /* synthetic */ UpdateConfig(Channel channel, boolean z, boolean z2, boolean z3, boolean z4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : channel, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) != 0 ? false : z4, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateConfig(Channel channel, boolean z, boolean z2, boolean z3, boolean z4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.channel = channel;
        this.disabled = z;
        this.forceTms = z2;
        this.debugLogging = z3;
        this.bypassAppInstall = z4;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.channel = this.channel;
        builder.disabled = this.disabled;
        builder.forceTms = this.forceTms;
        builder.debugLogging = this.debugLogging;
        builder.bypassAppInstall = this.bypassAppInstall;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdateConfig)) {
            return false;
        }
        UpdateConfig updateConfig = (UpdateConfig) other;
        return Intrinsics.areEqual(unknownFields(), updateConfig.unknownFields()) && Intrinsics.areEqual(this.channel, updateConfig.channel) && this.disabled == updateConfig.disabled && this.forceTms == updateConfig.forceTms && this.debugLogging == updateConfig.debugLogging && this.bypassAppInstall == updateConfig.bypassAppInstall;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Channel channel = this.channel;
        int iHashCode2 = ((((((((iHashCode + (channel != null ? channel.hashCode() : 0)) * 37) + Boolean.hashCode(this.disabled)) * 37) + Boolean.hashCode(this.forceTms)) * 37) + Boolean.hashCode(this.debugLogging)) * 37) + Boolean.hashCode(this.bypassAppInstall);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.channel != null) {
            arrayList.add("channel=" + this.channel);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("disabled=" + this.disabled);
        arrayList2.add("forceTms=" + this.forceTms);
        arrayList2.add("debugLogging=" + this.debugLogging);
        arrayList2.add("bypassAppInstall=" + this.bypassAppInstall);
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdateConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdateConfig copy$default(UpdateConfig updateConfig, Channel channel, boolean z, boolean z2, boolean z3, boolean z4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            channel = updateConfig.channel;
        }
        if ((i & 2) != 0) {
            z = updateConfig.disabled;
        }
        if ((i & 4) != 0) {
            z2 = updateConfig.forceTms;
        }
        if ((i & 8) != 0) {
            z3 = updateConfig.debugLogging;
        }
        if ((i & 16) != 0) {
            z4 = updateConfig.bypassAppInstall;
        }
        if ((i & 32) != 0) {
            byteString = updateConfig.unknownFields();
        }
        boolean z5 = z4;
        ByteString byteString2 = byteString;
        return updateConfig.copy(channel, z, z2, z3, z5, byteString2);
    }

    public final UpdateConfig copy(Channel channel, boolean disabled, boolean forceTms, boolean debugLogging, boolean bypassAppInstall, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdateConfig(channel, disabled, forceTms, debugLogging, bypassAppInstall, unknownFields);
    }

    /* JADX INFO: compiled from: UpdateConfig.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig;", "()V", "bypassAppInstall", "", "channel", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;", "debugLogging", "disabled", "forceTms", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdateConfig, Builder> {
        public boolean bypassAppInstall;
        public Channel channel;
        public boolean debugLogging;
        public boolean disabled;
        public boolean forceTms;

        public final Builder channel(Channel channel) {
            this.channel = channel;
            return this;
        }

        public final Builder disabled(boolean disabled) {
            this.disabled = disabled;
            return this;
        }

        public final Builder forceTms(boolean forceTms) {
            this.forceTms = forceTms;
            return this;
        }

        public final Builder debugLogging(boolean debugLogging) {
            this.debugLogging = debugLogging;
            return this;
        }

        public final Builder bypassAppInstall(boolean bypassAppInstall) {
            this.bypassAppInstall = bypassAppInstall;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdateConfig build() {
            return new UpdateConfig(this.channel, this.disabled, this.forceTms, this.debugLogging, this.bypassAppInstall, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdateConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdateConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdateConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdateConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.UpdateConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdateConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.channel != null) {
                    size += UpdateConfig.Channel.ADAPTER.encodedSizeWithTag(1, value.channel);
                }
                if (value.disabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.disabled));
                }
                if (value.forceTms) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.forceTms));
                }
                if (value.debugLogging) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.debugLogging));
                }
                return value.bypassAppInstall ? size + ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.bypassAppInstall)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdateConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.channel != null) {
                    UpdateConfig.Channel.ADAPTER.encodeWithTag(writer, 1, value.channel);
                }
                if (value.disabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.disabled));
                }
                if (value.forceTms) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.forceTms));
                }
                if (value.debugLogging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.debugLogging));
                }
                if (value.bypassAppInstall) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.bypassAppInstall));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdateConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bypassAppInstall) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.bypassAppInstall));
                }
                if (value.debugLogging) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.debugLogging));
                }
                if (value.forceTms) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.forceTms));
                }
                if (value.disabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.disabled));
                }
                if (value.channel != null) {
                    UpdateConfig.Channel.ADAPTER.encodeWithTag(writer, 1, value.channel);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdateConfig redact(UpdateConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                UpdateConfig.Channel channel = value.channel;
                return UpdateConfig.copy$default(value, channel != null ? UpdateConfig.Channel.ADAPTER.redact(channel) : null, false, false, false, false, ByteString.EMPTY, 30, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdateConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                UpdateConfig.Channel channelDecode = null;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                boolean zBooleanValue4 = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdateConfig(channelDecode, zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        channelDecode = UpdateConfig.Channel.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 3) {
                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 4) {
                        zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 5) {
                        zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: UpdateConfig.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Builder;", "release", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;", "debug", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Debug", "Release", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Channel extends Message<Channel, Builder> {
        public static final ProtoAdapter<Channel> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.UpdateConfig$Channel$Debug#ADAPTER", oneofName = "channel", schemaIndex = 1, tag = 2)
        public final Debug debug;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.UpdateConfig$Channel$Release#ADAPTER", oneofName = "channel", schemaIndex = 0, tag = 1)
        public final Release release;

        public Channel() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ Channel(Release release, Debug debug, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : release, (i & 2) != 0 ? null : debug, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Channel(Release release, Debug debug, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.release = release;
            this.debug = debug;
            if (Internal.countNonNull(release, debug) > 1) {
                throw new IllegalArgumentException("At most one of release, debug may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.release = this.release;
            builder.debug = this.debug;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Channel)) {
                return false;
            }
            Channel channel = (Channel) other;
            return Intrinsics.areEqual(unknownFields(), channel.unknownFields()) && Intrinsics.areEqual(this.release, channel.release) && Intrinsics.areEqual(this.debug, channel.debug);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Release release = this.release;
            int iHashCode2 = (iHashCode + (release != null ? release.hashCode() : 0)) * 37;
            Debug debug = this.debug;
            int iHashCode3 = iHashCode2 + (debug != null ? debug.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.release != null) {
                arrayList.add("release=" + this.release);
            }
            if (this.debug != null) {
                arrayList.add("debug=" + this.debug);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Channel{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Channel copy$default(Channel channel, Release release, Debug debug, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                release = channel.release;
            }
            if ((i & 2) != 0) {
                debug = channel.debug;
            }
            if ((i & 4) != 0) {
                byteString = channel.unknownFields();
            }
            return channel.copy(release, debug, byteString);
        }

        public final Channel copy(Release release, Debug debug, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Channel(release, debug, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;", "()V", "debug", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;", "release", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Channel, Builder> {
            public Debug debug;
            public Release release;

            public final Builder release(Release release) {
                this.release = release;
                this.debug = null;
                return this;
            }

            public final Builder debug(Debug debug) {
                this.debug = debug;
                this.release = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Channel build() {
                return new Channel(this.release, this.debug, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Channel build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Channel.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Channel>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.UpdateConfig$Channel$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateConfig.Channel value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + UpdateConfig.Channel.Release.ADAPTER.encodedSizeWithTag(1, value.release) + UpdateConfig.Channel.Debug.ADAPTER.encodedSizeWithTag(2, value.debug);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateConfig.Channel value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    UpdateConfig.Channel.Release.ADAPTER.encodeWithTag(writer, 1, value.release);
                    UpdateConfig.Channel.Debug.ADAPTER.encodeWithTag(writer, 2, value.debug);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateConfig.Channel value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    UpdateConfig.Channel.Debug.ADAPTER.encodeWithTag(writer, 2, value.debug);
                    UpdateConfig.Channel.Release.ADAPTER.encodeWithTag(writer, 1, value.release);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateConfig.Channel redact(UpdateConfig.Channel value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    UpdateConfig.Channel.Release release = value.release;
                    UpdateConfig.Channel.Release releaseRedact = release != null ? UpdateConfig.Channel.Release.ADAPTER.redact(release) : null;
                    UpdateConfig.Channel.Debug debug = value.debug;
                    return value.copy(releaseRedact, debug != null ? UpdateConfig.Channel.Debug.ADAPTER.redact(debug) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateConfig.Channel decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    UpdateConfig.Channel.Release releaseDecode = null;
                    UpdateConfig.Channel.Debug debugDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateConfig.Channel(releaseDecode, debugDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            releaseDecode = UpdateConfig.Channel.Release.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            debugDecode = UpdateConfig.Channel.Debug.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: UpdateConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Release extends Message<Release, Builder> {
            public static final ProtoAdapter<Release> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public Release() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Release(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Release(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof Release) && Intrinsics.areEqual(unknownFields(), ((Release) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "Release{}";
            }

            public static /* synthetic */ Release copy$default(Release release, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = release.unknownFields();
                }
                return release.copy(byteString);
            }

            public final Release copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Release(unknownFields);
            }

            /* JADX INFO: compiled from: UpdateConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Release, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public Release build() {
                    return new Release(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Release$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Release build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Release.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Release>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.UpdateConfig$Channel$Release$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateConfig.Channel.Release value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateConfig.Channel.Release value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateConfig.Channel.Release value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateConfig.Channel.Release redact(UpdateConfig.Channel.Release value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateConfig.Channel.Release decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new UpdateConfig.Channel.Release(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Debug extends Message<Debug, Builder> {
            public static final ProtoAdapter<Debug> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public Debug() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Debug(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Debug(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof Debug) && Intrinsics.areEqual(unknownFields(), ((Debug) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "Debug{}";
            }

            public static /* synthetic */ Debug copy$default(Debug debug, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = debug.unknownFields();
                }
                return debug.copy(byteString);
            }

            public final Debug copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Debug(unknownFields);
            }

            /* JADX INFO: compiled from: UpdateConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Debug, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public Debug build() {
                    return new Debug(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/UpdateConfig$Channel$Debug$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Debug build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Debug.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Debug>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.UpdateConfig$Channel$Debug$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateConfig.Channel.Debug value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateConfig.Channel.Debug value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateConfig.Channel.Debug value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateConfig.Channel.Debug redact(UpdateConfig.Channel.Debug value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateConfig.Channel.Debug decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new UpdateConfig.Channel.Debug(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }
    }
}
