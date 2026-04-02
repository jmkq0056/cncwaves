package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline;

import androidx.core.app.NotificationCompat;
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
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
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

/* JADX INFO: compiled from: StageScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "http_request", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", OfflineMetricTags.REQUEST_TYPE, "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StageScope extends Message<StageScope, Builder> {
    public static final ProtoAdapter<StageScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "httpRequest", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer http_request;

    /* JADX WARN: Multi-variable type inference failed */
    public StageScope() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ StageScope(Timer timer, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StageScope(Timer timer, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.http_request = timer;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.http_request = this.http_request;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StageScope)) {
            return false;
        }
        StageScope stageScope = (StageScope) other;
        return Intrinsics.areEqual(unknownFields(), stageScope.unknownFields()) && Intrinsics.areEqual(this.http_request, stageScope.http_request);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.http_request;
        int iHashCode2 = iHashCode + (timer != null ? timer.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.http_request != null) {
            arrayList.add("http_request=" + this.http_request);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "StageScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ StageScope copy$default(StageScope stageScope, Timer timer, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = stageScope.http_request;
        }
        if ((i & 2) != 0) {
            byteString = stageScope.unknownFields();
        }
        return stageScope.copy(timer, byteString);
    }

    public final StageScope copy(Timer http_request, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new StageScope(http_request, unknownFields);
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "()V", "http_request", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<StageScope, Builder> {
        public Timer http_request;

        public final Builder http_request(Timer http_request) {
            this.http_request = http_request;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public StageScope build() {
            return new StageScope(this.http_request, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ StageScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StageScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<StageScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(StageScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.http_request);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.http_request);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 1, value.http_request);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public StageScope redact(StageScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.http_request;
                return value.copy(timer != null ? Timer.ADAPTER.redact(timer) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public StageScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new StageScope(timerDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REQUEST_TYPE_INVALID", "CREATE_PAYMENT_INTENT", "CONFIRM_PAYMENT_INTENT", "REDEEM_FOR_OFFLINE", "CREATE_SETUP_INTENT", "CONFIRM_SETUP_INTENT", "RETRIEVE_SETUP_INTENT", "RETRIEVE_ACCOUNT_ID", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RequestType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RequestType[] $VALUES;
        public static final ProtoAdapter<RequestType> ADAPTER;
        public static final RequestType CONFIRM_PAYMENT_INTENT;
        public static final RequestType CONFIRM_SETUP_INTENT;
        public static final RequestType CREATE_PAYMENT_INTENT;
        public static final RequestType CREATE_SETUP_INTENT;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final RequestType REDEEM_FOR_OFFLINE;
        public static final RequestType REQUEST_TYPE_INVALID;
        public static final RequestType RETRIEVE_ACCOUNT_ID;
        public static final RequestType RETRIEVE_SETUP_INTENT;
        private final int value;

        private static final /* synthetic */ RequestType[] $values() {
            return new RequestType[]{REQUEST_TYPE_INVALID, CREATE_PAYMENT_INTENT, CONFIRM_PAYMENT_INTENT, REDEEM_FOR_OFFLINE, CREATE_SETUP_INTENT, CONFIRM_SETUP_INTENT, RETRIEVE_SETUP_INTENT, RETRIEVE_ACCOUNT_ID};
        }

        @JvmStatic
        public static final RequestType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<RequestType> getEntries() {
            return $ENTRIES;
        }

        public static RequestType valueOf(String str) {
            return (RequestType) Enum.valueOf(RequestType.class, str);
        }

        public static RequestType[] values() {
            return (RequestType[]) $VALUES.clone();
        }

        private RequestType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final RequestType requestType = new RequestType("REQUEST_TYPE_INVALID", 0, 0);
            REQUEST_TYPE_INVALID = requestType;
            CREATE_PAYMENT_INTENT = new RequestType("CREATE_PAYMENT_INTENT", 1, 1);
            CONFIRM_PAYMENT_INTENT = new RequestType("CONFIRM_PAYMENT_INTENT", 2, 2);
            REDEEM_FOR_OFFLINE = new RequestType("REDEEM_FOR_OFFLINE", 3, 3);
            CREATE_SETUP_INTENT = new RequestType("CREATE_SETUP_INTENT", 4, 4);
            CONFIRM_SETUP_INTENT = new RequestType("CONFIRM_SETUP_INTENT", 5, 5);
            RETRIEVE_SETUP_INTENT = new RequestType("RETRIEVE_SETUP_INTENT", 6, 6);
            RETRIEVE_ACCOUNT_ID = new RequestType("RETRIEVE_ACCOUNT_ID", 7, 7);
            RequestType[] requestTypeArr$values = $values();
            $VALUES = requestTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(requestTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<RequestType>(orCreateKotlinClass, syntax, requestType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope$RequestType$Companion$ADAPTER$1
                {
                    StageScope.RequestType requestType2 = requestType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public StageScope.RequestType fromValue(int value) {
                    return StageScope.RequestType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: StageScope.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final RequestType fromValue(int value) {
                switch (value) {
                    case 0:
                        return RequestType.REQUEST_TYPE_INVALID;
                    case 1:
                        return RequestType.CREATE_PAYMENT_INTENT;
                    case 2:
                        return RequestType.CONFIRM_PAYMENT_INTENT;
                    case 3:
                        return RequestType.REDEEM_FOR_OFFLINE;
                    case 4:
                        return RequestType.CREATE_SETUP_INTENT;
                    case 5:
                        return RequestType.CONFIRM_SETUP_INTENT;
                    case 6:
                        return RequestType.RETRIEVE_SETUP_INTENT;
                    case 7:
                        return RequestType.RETRIEVE_ACCOUNT_ID;
                    default:
                        return null;
                }
            }
        }
    }
}
