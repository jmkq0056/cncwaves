package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
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

/* JADX INFO: compiled from: UpdatesFlowScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJL\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;", "check", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "download", "install", "prompt_for_update_now", "wait_battery_sufficient", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatesFlowScope extends Message<UpdatesFlowScope, Builder> {
    public static final ProtoAdapter<UpdatesFlowScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer check;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer download;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Timer install;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "promptForUpdateNow", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Timer prompt_for_update_now;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "waitBatterySufficient", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Timer wait_battery_sufficient;

    public UpdatesFlowScope() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ UpdatesFlowScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : timer2, (i & 4) != 0 ? null : timer3, (i & 8) != 0 ? null : timer4, (i & 16) != 0 ? null : timer5, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdatesFlowScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.check = timer;
        this.download = timer2;
        this.install = timer3;
        this.prompt_for_update_now = timer4;
        this.wait_battery_sufficient = timer5;
        if (Internal.countNonNull(timer, timer2, timer3, timer4, timer5) > 1) {
            throw new IllegalArgumentException("At most one of check, download, install, prompt_for_update_now, wait_battery_sufficient may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.check = this.check;
        builder.download = this.download;
        builder.install = this.install;
        builder.prompt_for_update_now = this.prompt_for_update_now;
        builder.wait_battery_sufficient = this.wait_battery_sufficient;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdatesFlowScope)) {
            return false;
        }
        UpdatesFlowScope updatesFlowScope = (UpdatesFlowScope) other;
        return Intrinsics.areEqual(unknownFields(), updatesFlowScope.unknownFields()) && Intrinsics.areEqual(this.check, updatesFlowScope.check) && Intrinsics.areEqual(this.download, updatesFlowScope.download) && Intrinsics.areEqual(this.install, updatesFlowScope.install) && Intrinsics.areEqual(this.prompt_for_update_now, updatesFlowScope.prompt_for_update_now) && Intrinsics.areEqual(this.wait_battery_sufficient, updatesFlowScope.wait_battery_sufficient);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.check;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.download;
        int iHashCode3 = (iHashCode2 + (timer2 != null ? timer2.hashCode() : 0)) * 37;
        Timer timer3 = this.install;
        int iHashCode4 = (iHashCode3 + (timer3 != null ? timer3.hashCode() : 0)) * 37;
        Timer timer4 = this.prompt_for_update_now;
        int iHashCode5 = (iHashCode4 + (timer4 != null ? timer4.hashCode() : 0)) * 37;
        Timer timer5 = this.wait_battery_sufficient;
        int iHashCode6 = iHashCode5 + (timer5 != null ? timer5.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.check != null) {
            arrayList.add("check=" + this.check);
        }
        if (this.download != null) {
            arrayList.add("download=" + this.download);
        }
        if (this.install != null) {
            arrayList.add("install=" + this.install);
        }
        if (this.prompt_for_update_now != null) {
            arrayList.add("prompt_for_update_now=" + this.prompt_for_update_now);
        }
        if (this.wait_battery_sufficient != null) {
            arrayList.add("wait_battery_sufficient=" + this.wait_battery_sufficient);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdatesFlowScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdatesFlowScope copy$default(UpdatesFlowScope updatesFlowScope, Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = updatesFlowScope.check;
        }
        if ((i & 2) != 0) {
            timer2 = updatesFlowScope.download;
        }
        if ((i & 4) != 0) {
            timer3 = updatesFlowScope.install;
        }
        if ((i & 8) != 0) {
            timer4 = updatesFlowScope.prompt_for_update_now;
        }
        if ((i & 16) != 0) {
            timer5 = updatesFlowScope.wait_battery_sufficient;
        }
        if ((i & 32) != 0) {
            byteString = updatesFlowScope.unknownFields();
        }
        Timer timer6 = timer5;
        ByteString byteString2 = byteString;
        return updatesFlowScope.copy(timer, timer2, timer3, timer4, timer6, byteString2);
    }

    public final UpdatesFlowScope copy(Timer check, Timer download, Timer install, Timer prompt_for_update_now, Timer wait_battery_sufficient, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdatesFlowScope(check, download, install, prompt_for_update_now, wait_battery_sufficient, unknownFields);
    }

    /* JADX INFO: compiled from: UpdatesFlowScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;", "()V", "check", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "download", "install", "prompt_for_update_now", "wait_battery_sufficient", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdatesFlowScope, Builder> {
        public Timer check;
        public Timer download;
        public Timer install;
        public Timer prompt_for_update_now;
        public Timer wait_battery_sufficient;

        public final Builder check(Timer check) {
            this.check = check;
            this.download = null;
            this.install = null;
            this.prompt_for_update_now = null;
            this.wait_battery_sufficient = null;
            return this;
        }

        public final Builder download(Timer download) {
            this.download = download;
            this.check = null;
            this.install = null;
            this.prompt_for_update_now = null;
            this.wait_battery_sufficient = null;
            return this;
        }

        public final Builder install(Timer install) {
            this.install = install;
            this.check = null;
            this.download = null;
            this.prompt_for_update_now = null;
            this.wait_battery_sufficient = null;
            return this;
        }

        public final Builder prompt_for_update_now(Timer prompt_for_update_now) {
            this.prompt_for_update_now = prompt_for_update_now;
            this.check = null;
            this.download = null;
            this.install = null;
            this.wait_battery_sufficient = null;
            return this;
        }

        public final Builder wait_battery_sufficient(Timer wait_battery_sufficient) {
            this.wait_battery_sufficient = wait_battery_sufficient;
            this.check = null;
            this.download = null;
            this.install = null;
            this.prompt_for_update_now = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdatesFlowScope build() {
            return new UpdatesFlowScope(this.check, this.download, this.install, this.prompt_for_update_now, this.wait_battery_sufficient, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdatesFlowScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdatesFlowScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdatesFlowScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdatesFlowScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesFlowScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdatesFlowScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.check) + Timer.ADAPTER.encodedSizeWithTag(2, value.download) + Timer.ADAPTER.encodedSizeWithTag(3, value.install) + Timer.ADAPTER.encodedSizeWithTag(4, value.prompt_for_update_now) + Timer.ADAPTER.encodedSizeWithTag(5, value.wait_battery_sufficient);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdatesFlowScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.check);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.download);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.install);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.prompt_for_update_now);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.wait_battery_sufficient);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdatesFlowScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 5, value.wait_battery_sufficient);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.prompt_for_update_now);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.install);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.download);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.check);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdatesFlowScope redact(UpdatesFlowScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.check;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Timer timer2 = value.download;
                Timer timerRedact2 = timer2 != null ? Timer.ADAPTER.redact(timer2) : null;
                Timer timer3 = value.install;
                Timer timerRedact3 = timer3 != null ? Timer.ADAPTER.redact(timer3) : null;
                Timer timer4 = value.prompt_for_update_now;
                Timer timerRedact4 = timer4 != null ? Timer.ADAPTER.redact(timer4) : null;
                Timer timer5 = value.wait_battery_sufficient;
                return value.copy(timerRedact, timerRedact2, timerRedact3, timerRedact4, timer5 != null ? Timer.ADAPTER.redact(timer5) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdatesFlowScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                Timer timerDecode3 = null;
                Timer timerDecode4 = null;
                Timer timerDecode5 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdatesFlowScope(timerDecode, timerDecode2, timerDecode3, timerDecode4, timerDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        timerDecode2 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        timerDecode3 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        timerDecode4 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        timerDecode5 = Timer.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
