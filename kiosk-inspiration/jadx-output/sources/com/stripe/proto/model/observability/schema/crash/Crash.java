package com.stripe.proto.model.observability.schema.crash;

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

/* JADX INFO: compiled from: Crash.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/observability/schema/crash/Crash;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;", "message", "", "stack_trace", "thread_name", "is_foreground", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Crash extends Message<Crash, Builder> {
    public static final ProtoAdapter<Crash> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isForeground", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean is_foreground;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stackTrace", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stack_trace;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "threadName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String thread_name;

    public Crash() {
        this(null, null, null, false, null, 31, null);
    }

    public /* synthetic */ Crash(String str, String str2, String str3, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? false : z, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Crash(String message, String stack_trace, String thread_name, boolean z, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(stack_trace, "stack_trace");
        Intrinsics.checkNotNullParameter(thread_name, "thread_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.message = message;
        this.stack_trace = stack_trace;
        this.thread_name = thread_name;
        this.is_foreground = z;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.message = this.message;
        builder.stack_trace = this.stack_trace;
        builder.thread_name = this.thread_name;
        builder.is_foreground = this.is_foreground;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Crash)) {
            return false;
        }
        Crash crash = (Crash) other;
        return Intrinsics.areEqual(unknownFields(), crash.unknownFields()) && Intrinsics.areEqual(this.message, crash.message) && Intrinsics.areEqual(this.stack_trace, crash.stack_trace) && Intrinsics.areEqual(this.thread_name, crash.thread_name) && this.is_foreground == crash.is_foreground;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.message.hashCode()) * 37) + this.stack_trace.hashCode()) * 37) + this.thread_name.hashCode()) * 37) + Boolean.hashCode(this.is_foreground);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("message=" + Internal.sanitize(this.message));
        arrayList2.add("stack_trace=" + Internal.sanitize(this.stack_trace));
        arrayList2.add("thread_name=" + Internal.sanitize(this.thread_name));
        arrayList2.add("is_foreground=" + this.is_foreground);
        return CollectionsKt.joinToString$default(arrayList, ", ", "Crash{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Crash copy$default(Crash crash, String str, String str2, String str3, boolean z, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = crash.message;
        }
        if ((i & 2) != 0) {
            str2 = crash.stack_trace;
        }
        if ((i & 4) != 0) {
            str3 = crash.thread_name;
        }
        if ((i & 8) != 0) {
            z = crash.is_foreground;
        }
        if ((i & 16) != 0) {
            byteString = crash.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return crash.copy(str, str2, str4, z, byteString2);
    }

    public final Crash copy(String message, String stack_trace, String thread_name, boolean is_foreground, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(stack_trace, "stack_trace");
        Intrinsics.checkNotNullParameter(thread_name, "thread_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Crash(message, stack_trace, thread_name, is_foreground, unknownFields);
    }

    /* JADX INFO: compiled from: Crash.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/crash/Crash;", "()V", "is_foreground", "", "message", "", "stack_trace", "thread_name", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Crash, Builder> {
        public boolean is_foreground;
        public String message = "";
        public String stack_trace = "";
        public String thread_name = "";

        public final Builder message(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            return this;
        }

        public final Builder stack_trace(String stack_trace) {
            Intrinsics.checkNotNullParameter(stack_trace, "stack_trace");
            this.stack_trace = stack_trace;
            return this;
        }

        public final Builder thread_name(String thread_name) {
            Intrinsics.checkNotNullParameter(thread_name, "thread_name");
            this.thread_name = thread_name;
            return this;
        }

        public final Builder is_foreground(boolean is_foreground) {
            this.is_foreground = is_foreground;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Crash build() {
            return new Crash(this.message, this.stack_trace, this.thread_name, this.is_foreground, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Crash.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/crash/Crash$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/crash/Crash;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Crash build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Crash.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Crash>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.crash.Crash$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Crash value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.message, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.message);
                }
                if (!Intrinsics.areEqual(value.stack_trace, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stack_trace);
                }
                if (!Intrinsics.areEqual(value.thread_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.thread_name);
                }
                return value.is_foreground ? size + ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.is_foreground)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Crash value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
                }
                if (!Intrinsics.areEqual(value.stack_trace, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stack_trace);
                }
                if (!Intrinsics.areEqual(value.thread_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.thread_name);
                }
                if (value.is_foreground) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_foreground));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Crash value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.is_foreground) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.is_foreground));
                }
                if (!Intrinsics.areEqual(value.thread_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.thread_name);
                }
                if (!Intrinsics.areEqual(value.stack_trace, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stack_trace);
                }
                if (Intrinsics.areEqual(value.message, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Crash redact(Crash value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Crash.copy$default(value, null, null, null, false, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Crash decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                boolean zBooleanValue = false;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Crash(strDecode, strDecode3, strDecode2, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
