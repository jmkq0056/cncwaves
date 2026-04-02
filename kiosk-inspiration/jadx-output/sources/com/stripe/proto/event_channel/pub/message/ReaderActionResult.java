package com.stripe.proto.event_channel.pub.message;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.event_channel.pub.message.ReaderActionResult;
import com.sun.jna.platform.win32.Ddeml;
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

/* JADX INFO: compiled from: ReaderActionResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJL\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;", "failure_code", "", "failure_message", "generated_card", "refund_id", "payment_method", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", Ddeml.SZDDESYS_ITEM_STATUS, "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderActionResult extends Message<ReaderActionResult, Builder> {
    public static final ProtoAdapter<ReaderActionResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "failureCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String failure_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "failureMessage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String failure_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "generatedCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String generated_card;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String payment_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "refundId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String refund_id;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.ReaderActionResult$Status#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Status status;

    public ReaderActionResult() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ ReaderActionResult(Status status, String str, String str2, String str3, String str4, String str5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Status.STATUS_INVALID : status, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderActionResult(Status status, String failure_code, String failure_message, String generated_card, String refund_id, String payment_method, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(failure_code, "failure_code");
        Intrinsics.checkNotNullParameter(failure_message, "failure_message");
        Intrinsics.checkNotNullParameter(generated_card, "generated_card");
        Intrinsics.checkNotNullParameter(refund_id, "refund_id");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.status = status;
        this.failure_code = failure_code;
        this.failure_message = failure_message;
        this.generated_card = generated_card;
        this.refund_id = refund_id;
        this.payment_method = payment_method;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.status = this.status;
        builder.failure_code = this.failure_code;
        builder.failure_message = this.failure_message;
        builder.generated_card = this.generated_card;
        builder.refund_id = this.refund_id;
        builder.payment_method = this.payment_method;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderActionResult)) {
            return false;
        }
        ReaderActionResult readerActionResult = (ReaderActionResult) other;
        return Intrinsics.areEqual(unknownFields(), readerActionResult.unknownFields()) && this.status == readerActionResult.status && Intrinsics.areEqual(this.failure_code, readerActionResult.failure_code) && Intrinsics.areEqual(this.failure_message, readerActionResult.failure_message) && Intrinsics.areEqual(this.generated_card, readerActionResult.generated_card) && Intrinsics.areEqual(this.refund_id, readerActionResult.refund_id) && Intrinsics.areEqual(this.payment_method, readerActionResult.payment_method);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.status.hashCode()) * 37) + this.failure_code.hashCode()) * 37) + this.failure_message.hashCode()) * 37) + this.generated_card.hashCode()) * 37) + this.refund_id.hashCode()) * 37) + this.payment_method.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("status=" + this.status);
        arrayList2.add("failure_code=" + Internal.sanitize(this.failure_code));
        arrayList2.add("failure_message=" + Internal.sanitize(this.failure_message));
        arrayList2.add("generated_card=" + Internal.sanitize(this.generated_card));
        arrayList2.add("refund_id=" + Internal.sanitize(this.refund_id));
        arrayList2.add("payment_method=" + Internal.sanitize(this.payment_method));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderActionResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderActionResult copy$default(ReaderActionResult readerActionResult, Status status, String str, String str2, String str3, String str4, String str5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            status = readerActionResult.status;
        }
        if ((i & 2) != 0) {
            str = readerActionResult.failure_code;
        }
        if ((i & 4) != 0) {
            str2 = readerActionResult.failure_message;
        }
        if ((i & 8) != 0) {
            str3 = readerActionResult.generated_card;
        }
        if ((i & 16) != 0) {
            str4 = readerActionResult.refund_id;
        }
        if ((i & 32) != 0) {
            str5 = readerActionResult.payment_method;
        }
        if ((i & 64) != 0) {
            byteString = readerActionResult.unknownFields();
        }
        String str6 = str5;
        ByteString byteString2 = byteString;
        String str7 = str4;
        String str8 = str2;
        return readerActionResult.copy(status, str, str8, str3, str7, str6, byteString2);
    }

    public final ReaderActionResult copy(Status status, String failure_code, String failure_message, String generated_card, String refund_id, String payment_method, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(failure_code, "failure_code");
        Intrinsics.checkNotNullParameter(failure_message, "failure_message");
        Intrinsics.checkNotNullParameter(generated_card, "generated_card");
        Intrinsics.checkNotNullParameter(refund_id, "refund_id");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderActionResult(status, failure_code, failure_message, generated_card, refund_id, payment_method, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderActionResult.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;", "()V", "failure_code", "", "failure_message", "generated_card", "payment_method", "refund_id", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderActionResult, Builder> {
        public Status status = Status.STATUS_INVALID;
        public String failure_code = "";
        public String failure_message = "";
        public String generated_card = "";
        public String refund_id = "";
        public String payment_method = "";

        public final Builder status(Status status) {
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            return this;
        }

        public final Builder failure_code(String failure_code) {
            Intrinsics.checkNotNullParameter(failure_code, "failure_code");
            this.failure_code = failure_code;
            return this;
        }

        public final Builder failure_message(String failure_message) {
            Intrinsics.checkNotNullParameter(failure_message, "failure_message");
            this.failure_message = failure_message;
            return this;
        }

        public final Builder generated_card(String generated_card) {
            Intrinsics.checkNotNullParameter(generated_card, "generated_card");
            this.generated_card = generated_card;
            return this;
        }

        public final Builder refund_id(String refund_id) {
            Intrinsics.checkNotNullParameter(refund_id, "refund_id");
            this.refund_id = refund_id;
            return this;
        }

        public final Builder payment_method(String payment_method) {
            Intrinsics.checkNotNullParameter(payment_method, "payment_method");
            this.payment_method = payment_method;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderActionResult build() {
            return new ReaderActionResult(this.status, this.failure_code, this.failure_message, this.generated_card, this.refund_id, this.payment_method, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderActionResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderActionResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderActionResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderActionResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.ReaderActionResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderActionResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.status != ReaderActionResult.Status.STATUS_INVALID) {
                    size += ReaderActionResult.Status.ADAPTER.encodedSizeWithTag(1, value.status);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.failure_code);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.refund_id);
                }
                return !Intrinsics.areEqual(value.payment_method, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.payment_method) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderActionResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.status != ReaderActionResult.Status.STATUS_INVALID) {
                    ReaderActionResult.Status.ADAPTER.encodeWithTag(writer, 1, value.status);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.failure_code);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.refund_id);
                }
                if (!Intrinsics.areEqual(value.payment_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.payment_method);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderActionResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.payment_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.payment_method);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.refund_id);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.failure_code);
                }
                if (value.status != ReaderActionResult.Status.STATUS_INVALID) {
                    ReaderActionResult.Status.ADAPTER.encodeWithTag(writer, 1, value.status);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.event_channel.pub.message.ReaderActionResult decode(com.squareup.wire.ProtoReader r19) throws java.io.IOException {
                /*
                    r18 = this;
                    r1 = r19
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    com.stripe.proto.event_channel.pub.message.ReaderActionResult$Status r0 = com.stripe.proto.event_channel.pub.message.ReaderActionResult.Status.STATUS_INVALID
                    long r2 = r1.beginMessage()
                    java.lang.String r4 = ""
                    r5 = r4
                    r6 = r5
                    r7 = r6
                    r8 = r7
                    r9 = r8
                L14:
                    r4 = r0
                L15:
                    int r10 = r1.nextTag()
                    r0 = -1
                    if (r10 == r0) goto L60
                    switch(r10) {
                        case 1: goto L4b;
                        case 2: goto L43;
                        case 3: goto L3b;
                        case 4: goto L33;
                        case 5: goto L2b;
                        case 6: goto L23;
                        default: goto L1f;
                    }
                L1f:
                    r1.readUnknownField(r10)
                    goto L15
                L23:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r9 = r0
                    goto L15
                L2b:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r8 = r0
                    goto L15
                L33:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r7 = r0
                    goto L15
                L3b:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r6 = r0
                    goto L15
                L43:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r5 = r0
                    goto L15
                L4b:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.event_channel.pub.message.ReaderActionResult$Status> r0 = com.stripe.proto.event_channel.pub.message.ReaderActionResult.Status.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L52
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L52
                    goto L14
                L52:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r11 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r12 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r12)
                    r1.addUnknownField(r10, r11, r0)
                    goto L15
                L60:
                    okio.ByteString r17 = r1.endMessageAndGetUnknownFields(r2)
                    com.stripe.proto.event_channel.pub.message.ReaderActionResult r10 = new com.stripe.proto.event_channel.pub.message.ReaderActionResult
                    r11 = r4
                    com.stripe.proto.event_channel.pub.message.ReaderActionResult$Status r11 = (com.stripe.proto.event_channel.pub.message.ReaderActionResult.Status) r11
                    r12 = r5
                    java.lang.String r12 = (java.lang.String) r12
                    r13 = r6
                    java.lang.String r13 = (java.lang.String) r13
                    r14 = r7
                    java.lang.String r14 = (java.lang.String) r14
                    r15 = r8
                    java.lang.String r15 = (java.lang.String) r15
                    r16 = r9
                    java.lang.String r16 = (java.lang.String) r16
                    r10.<init>(r11, r12, r13, r14, r15, r16, r17)
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.event_channel.pub.message.ReaderActionResult$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.event_channel.pub.message.ReaderActionResult");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderActionResult redact(ReaderActionResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderActionResult.copy$default(value, null, null, null, null, null, null, ByteString.EMPTY, 63, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderActionResult.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STATUS_INVALID", "SUCCEEDED", "FAILED", "IN_PROGRESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Status implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final ProtoAdapter<Status> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Status FAILED;
        public static final Status IN_PROGRESS;
        public static final Status STATUS_INVALID;
        public static final Status SUCCEEDED;
        private final int value;

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{STATUS_INVALID, SUCCEEDED, FAILED, IN_PROGRESS};
        }

        @JvmStatic
        public static final Status fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Status status = new Status("STATUS_INVALID", 0, 0);
            STATUS_INVALID = status;
            SUCCEEDED = new Status("SUCCEEDED", 1, 1);
            FAILED = new Status("FAILED", 2, 2);
            IN_PROGRESS = new Status("IN_PROGRESS", 3, 3);
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Status.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Status>(orCreateKotlinClass, syntax, status) { // from class: com.stripe.proto.event_channel.pub.message.ReaderActionResult$Status$Companion$ADAPTER$1
                {
                    ReaderActionResult.Status status2 = status;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ReaderActionResult.Status fromValue(int value) {
                    return ReaderActionResult.Status.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ReaderActionResult.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Status fromValue(int value) {
                if (value == 0) {
                    return Status.STATUS_INVALID;
                }
                if (value == 1) {
                    return Status.SUCCEEDED;
                }
                if (value == 2) {
                    return Status.FAILED;
                }
                if (value != 3) {
                    return null;
                }
                return Status.IN_PROGRESS;
            }
        }
    }
}
