package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics;

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
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge;
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

/* JADX INFO: compiled from: SettingsScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;", "change_theme", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "change_brightness_level", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "change_screen_timeout", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SettingsScope extends Message<SettingsScope, Builder> {
    public static final ProtoAdapter<SettingsScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge#ADAPTER", jsonName = "changeBrightnessLevel", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Gauge change_brightness_level;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge#ADAPTER", jsonName = "changeScreenTimeout", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Gauge change_screen_timeout;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "changeTheme", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter change_theme;

    public SettingsScope() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ SettingsScope(Counter counter, Gauge gauge, Gauge gauge2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : gauge, (i & 4) != 0 ? null : gauge2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsScope(Counter counter, Gauge gauge, Gauge gauge2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.change_theme = counter;
        this.change_brightness_level = gauge;
        this.change_screen_timeout = gauge2;
        if (Internal.countNonNull(counter, gauge, gauge2) > 1) {
            throw new IllegalArgumentException("At most one of change_theme, change_brightness_level, change_screen_timeout may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.change_theme = this.change_theme;
        builder.change_brightness_level = this.change_brightness_level;
        builder.change_screen_timeout = this.change_screen_timeout;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SettingsScope)) {
            return false;
        }
        SettingsScope settingsScope = (SettingsScope) other;
        return Intrinsics.areEqual(unknownFields(), settingsScope.unknownFields()) && Intrinsics.areEqual(this.change_theme, settingsScope.change_theme) && Intrinsics.areEqual(this.change_brightness_level, settingsScope.change_brightness_level) && Intrinsics.areEqual(this.change_screen_timeout, settingsScope.change_screen_timeout);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.change_theme;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Gauge gauge = this.change_brightness_level;
        int iHashCode3 = (iHashCode2 + (gauge != null ? gauge.hashCode() : 0)) * 37;
        Gauge gauge2 = this.change_screen_timeout;
        int iHashCode4 = iHashCode3 + (gauge2 != null ? gauge2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.change_theme != null) {
            arrayList.add("change_theme=" + this.change_theme);
        }
        if (this.change_brightness_level != null) {
            arrayList.add("change_brightness_level=" + this.change_brightness_level);
        }
        if (this.change_screen_timeout != null) {
            arrayList.add("change_screen_timeout=" + this.change_screen_timeout);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SettingsScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SettingsScope copy$default(SettingsScope settingsScope, Counter counter, Gauge gauge, Gauge gauge2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            counter = settingsScope.change_theme;
        }
        if ((i & 2) != 0) {
            gauge = settingsScope.change_brightness_level;
        }
        if ((i & 4) != 0) {
            gauge2 = settingsScope.change_screen_timeout;
        }
        if ((i & 8) != 0) {
            byteString = settingsScope.unknownFields();
        }
        return settingsScope.copy(counter, gauge, gauge2, byteString);
    }

    public final SettingsScope copy(Counter change_theme, Gauge change_brightness_level, Gauge change_screen_timeout, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SettingsScope(change_theme, change_brightness_level, change_screen_timeout, unknownFields);
    }

    /* JADX INFO: compiled from: SettingsScope.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;", "()V", "change_brightness_level", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "change_screen_timeout", "change_theme", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SettingsScope, Builder> {
        public Gauge change_brightness_level;
        public Gauge change_screen_timeout;
        public Counter change_theme;

        public final Builder change_theme(Counter change_theme) {
            this.change_theme = change_theme;
            this.change_brightness_level = null;
            this.change_screen_timeout = null;
            return this;
        }

        public final Builder change_brightness_level(Gauge change_brightness_level) {
            this.change_brightness_level = change_brightness_level;
            this.change_theme = null;
            this.change_screen_timeout = null;
            return this;
        }

        public final Builder change_screen_timeout(Gauge change_screen_timeout) {
            this.change_screen_timeout = change_screen_timeout;
            this.change_theme = null;
            this.change_brightness_level = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SettingsScope build() {
            return new SettingsScope(this.change_theme, this.change_brightness_level, this.change_screen_timeout, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SettingsScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SettingsScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SettingsScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SettingsScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.SettingsScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SettingsScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.change_theme) + Gauge.ADAPTER.encodedSizeWithTag(2, value.change_brightness_level) + Gauge.ADAPTER.encodedSizeWithTag(3, value.change_screen_timeout);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SettingsScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.change_theme);
                Gauge.ADAPTER.encodeWithTag(writer, 2, value.change_brightness_level);
                Gauge.ADAPTER.encodeWithTag(writer, 3, value.change_screen_timeout);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SettingsScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Gauge.ADAPTER.encodeWithTag(writer, 3, value.change_screen_timeout);
                Gauge.ADAPTER.encodeWithTag(writer, 2, value.change_brightness_level);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.change_theme);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SettingsScope redact(SettingsScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter = value.change_theme;
                Counter counterRedact = counter != null ? Counter.ADAPTER.redact(counter) : null;
                Gauge gauge = value.change_brightness_level;
                Gauge gaugeRedact = gauge != null ? Gauge.ADAPTER.redact(gauge) : null;
                Gauge gauge2 = value.change_screen_timeout;
                return value.copy(counterRedact, gaugeRedact, gauge2 != null ? Gauge.ADAPTER.redact(gauge2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SettingsScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Counter counterDecode = null;
                Gauge gaugeDecode = null;
                Gauge gaugeDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SettingsScope(counterDecode, gaugeDecode, gaugeDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        counterDecode = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        gaugeDecode = Gauge.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        gaugeDecode2 = Gauge.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
