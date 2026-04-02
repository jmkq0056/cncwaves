package com.stripe.proto.model.config;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.DurationPb;
import com.stripe.proto.model.common.TimeOfDayPb;
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

/* JADX INFO: compiled from: RebootTimeWindowConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/RebootTimeWindowConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig$Builder;", "start_time", "Lcom/stripe/proto/model/common/TimeOfDayPb;", TypedValues.TransitionType.S_DURATION, "Lcom/stripe/proto/model/common/DurationPb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/TimeOfDayPb;Lcom/stripe/proto/model/common/DurationPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RebootTimeWindowConfig extends Message<RebootTimeWindowConfig, Builder> {
    public static final ProtoAdapter<RebootTimeWindowConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DurationPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DurationPb duration;

    @WireField(adapter = "com.stripe.proto.model.common.TimeOfDayPb#ADAPTER", jsonName = "startTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TimeOfDayPb start_time;

    public RebootTimeWindowConfig() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ RebootTimeWindowConfig(TimeOfDayPb timeOfDayPb, DurationPb durationPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timeOfDayPb, (i & 2) != 0 ? null : durationPb, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RebootTimeWindowConfig(TimeOfDayPb timeOfDayPb, DurationPb durationPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.start_time = timeOfDayPb;
        this.duration = durationPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.start_time = this.start_time;
        builder.duration = this.duration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RebootTimeWindowConfig)) {
            return false;
        }
        RebootTimeWindowConfig rebootTimeWindowConfig = (RebootTimeWindowConfig) other;
        return Intrinsics.areEqual(unknownFields(), rebootTimeWindowConfig.unknownFields()) && Intrinsics.areEqual(this.start_time, rebootTimeWindowConfig.start_time) && Intrinsics.areEqual(this.duration, rebootTimeWindowConfig.duration);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        TimeOfDayPb timeOfDayPb = this.start_time;
        int iHashCode2 = (iHashCode + (timeOfDayPb != null ? timeOfDayPb.hashCode() : 0)) * 37;
        DurationPb durationPb = this.duration;
        int iHashCode3 = iHashCode2 + (durationPb != null ? durationPb.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.start_time != null) {
            arrayList.add("start_time=" + this.start_time);
        }
        if (this.duration != null) {
            arrayList.add("duration=" + this.duration);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RebootTimeWindowConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RebootTimeWindowConfig copy$default(RebootTimeWindowConfig rebootTimeWindowConfig, TimeOfDayPb timeOfDayPb, DurationPb durationPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timeOfDayPb = rebootTimeWindowConfig.start_time;
        }
        if ((i & 2) != 0) {
            durationPb = rebootTimeWindowConfig.duration;
        }
        if ((i & 4) != 0) {
            byteString = rebootTimeWindowConfig.unknownFields();
        }
        return rebootTimeWindowConfig.copy(timeOfDayPb, durationPb, byteString);
    }

    public final RebootTimeWindowConfig copy(TimeOfDayPb start_time, DurationPb duration, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RebootTimeWindowConfig(start_time, duration, unknownFields);
    }

    /* JADX INFO: compiled from: RebootTimeWindowConfig.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/RebootTimeWindowConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;", "()V", TypedValues.TransitionType.S_DURATION, "Lcom/stripe/proto/model/common/DurationPb;", "start_time", "Lcom/stripe/proto/model/common/TimeOfDayPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RebootTimeWindowConfig, Builder> {
        public DurationPb duration;
        public TimeOfDayPb start_time;

        public final Builder start_time(TimeOfDayPb start_time) {
            this.start_time = start_time;
            return this;
        }

        public final Builder duration(DurationPb duration) {
            this.duration = duration;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RebootTimeWindowConfig build() {
            return new RebootTimeWindowConfig(this.start_time, this.duration, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RebootTimeWindowConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/RebootTimeWindowConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/RebootTimeWindowConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RebootTimeWindowConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RebootTimeWindowConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RebootTimeWindowConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.RebootTimeWindowConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RebootTimeWindowConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.start_time != null) {
                    size += TimeOfDayPb.ADAPTER.encodedSizeWithTag(1, value.start_time);
                }
                return value.duration != null ? size + DurationPb.ADAPTER.encodedSizeWithTag(2, value.duration) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RebootTimeWindowConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.start_time != null) {
                    TimeOfDayPb.ADAPTER.encodeWithTag(writer, 1, value.start_time);
                }
                if (value.duration != null) {
                    DurationPb.ADAPTER.encodeWithTag(writer, 2, value.duration);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RebootTimeWindowConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.duration != null) {
                    DurationPb.ADAPTER.encodeWithTag(writer, 2, value.duration);
                }
                if (value.start_time != null) {
                    TimeOfDayPb.ADAPTER.encodeWithTag(writer, 1, value.start_time);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RebootTimeWindowConfig redact(RebootTimeWindowConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                TimeOfDayPb timeOfDayPb = value.start_time;
                TimeOfDayPb timeOfDayPbRedact = timeOfDayPb != null ? TimeOfDayPb.ADAPTER.redact(timeOfDayPb) : null;
                DurationPb durationPb = value.duration;
                return value.copy(timeOfDayPbRedact, durationPb != null ? DurationPb.ADAPTER.redact(durationPb) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RebootTimeWindowConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                TimeOfDayPb timeOfDayPbDecode = null;
                DurationPb durationPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RebootTimeWindowConfig(timeOfDayPbDecode, durationPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timeOfDayPbDecode = TimeOfDayPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        durationPbDecode = DurationPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
