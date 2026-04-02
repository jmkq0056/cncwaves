package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos;

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

/* JADX INFO: compiled from: BbposDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001c\u001dBW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JX\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "reader_", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/UpdatesScope;", "payments", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "android", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/AndroidScope;", "sdk_proxy", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;", "bbpos_sdk_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/UpdatesScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/AndroidScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposDomain extends Message<BbposDomain, Builder> {
    public static final ProtoAdapter<BbposDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.AndroidScope#ADAPTER", oneofName = "scope", schemaIndex = 3, tag = 4)
    public final AndroidScope android;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposSdkScope#ADAPTER", jsonName = "bbposSdkScope", oneofName = "scope", schemaIndex = 5, tag = 6)
    public final BbposSdkScope bbpos_sdk_scope;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope#ADAPTER", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final PaymentsScope payments;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope#ADAPTER", declaredName = OfflineStorageConstantsKt.READER, oneofName = "scope", schemaIndex = 0, tag = 1)
    public final ReaderScope reader_;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.SdkProxyScope#ADAPTER", jsonName = "sdkProxy", oneofName = "scope", schemaIndex = 4, tag = 5)
    public final SdkProxyScope sdk_proxy;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.UpdatesScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final UpdatesScope updates;

    public BbposDomain() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ BbposDomain(ReaderScope readerScope, UpdatesScope updatesScope, PaymentsScope paymentsScope, AndroidScope androidScope, SdkProxyScope sdkProxyScope, BbposSdkScope bbposSdkScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : readerScope, (i & 2) != 0 ? null : updatesScope, (i & 4) != 0 ? null : paymentsScope, (i & 8) != 0 ? null : androidScope, (i & 16) != 0 ? null : sdkProxyScope, (i & 32) != 0 ? null : bbposSdkScope, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposDomain(ReaderScope readerScope, UpdatesScope updatesScope, PaymentsScope paymentsScope, AndroidScope androidScope, SdkProxyScope sdkProxyScope, BbposSdkScope bbposSdkScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reader_ = readerScope;
        this.updates = updatesScope;
        this.payments = paymentsScope;
        this.android = androidScope;
        this.sdk_proxy = sdkProxyScope;
        this.bbpos_sdk_scope = bbposSdkScope;
        if (Internal.countNonNull(readerScope, updatesScope, paymentsScope, androidScope, sdkProxyScope, bbposSdkScope) > 1) {
            throw new IllegalArgumentException("At most one of reader_, updates, payments, android, sdk_proxy, bbpos_sdk_scope may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reader_ = this.reader_;
        builder.updates = this.updates;
        builder.payments = this.payments;
        builder.android = this.android;
        builder.sdk_proxy = this.sdk_proxy;
        builder.bbpos_sdk_scope = this.bbpos_sdk_scope;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BbposDomain)) {
            return false;
        }
        BbposDomain bbposDomain = (BbposDomain) other;
        return Intrinsics.areEqual(unknownFields(), bbposDomain.unknownFields()) && Intrinsics.areEqual(this.reader_, bbposDomain.reader_) && Intrinsics.areEqual(this.updates, bbposDomain.updates) && Intrinsics.areEqual(this.payments, bbposDomain.payments) && Intrinsics.areEqual(this.android, bbposDomain.android) && Intrinsics.areEqual(this.sdk_proxy, bbposDomain.sdk_proxy) && Intrinsics.areEqual(this.bbpos_sdk_scope, bbposDomain.bbpos_sdk_scope);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ReaderScope readerScope = this.reader_;
        int iHashCode2 = (iHashCode + (readerScope != null ? readerScope.hashCode() : 0)) * 37;
        UpdatesScope updatesScope = this.updates;
        int iHashCode3 = (iHashCode2 + (updatesScope != null ? updatesScope.hashCode() : 0)) * 37;
        PaymentsScope paymentsScope = this.payments;
        int iHashCode4 = (iHashCode3 + (paymentsScope != null ? paymentsScope.hashCode() : 0)) * 37;
        AndroidScope androidScope = this.android;
        int iHashCode5 = (iHashCode4 + (androidScope != null ? androidScope.hashCode() : 0)) * 37;
        SdkProxyScope sdkProxyScope = this.sdk_proxy;
        int iHashCode6 = (iHashCode5 + (sdkProxyScope != null ? sdkProxyScope.hashCode() : 0)) * 37;
        BbposSdkScope bbposSdkScope = this.bbpos_sdk_scope;
        int iHashCode7 = iHashCode6 + (bbposSdkScope != null ? bbposSdkScope.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reader_ != null) {
            arrayList.add("reader_=" + this.reader_);
        }
        if (this.updates != null) {
            arrayList.add("updates=" + this.updates);
        }
        if (this.payments != null) {
            arrayList.add("payments=" + this.payments);
        }
        if (this.android != null) {
            arrayList.add("android=" + this.android);
        }
        if (this.sdk_proxy != null) {
            arrayList.add("sdk_proxy=" + this.sdk_proxy);
        }
        if (this.bbpos_sdk_scope != null) {
            arrayList.add("bbpos_sdk_scope=" + this.bbpos_sdk_scope);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BbposDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BbposDomain copy$default(BbposDomain bbposDomain, ReaderScope readerScope, UpdatesScope updatesScope, PaymentsScope paymentsScope, AndroidScope androidScope, SdkProxyScope sdkProxyScope, BbposSdkScope bbposSdkScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            readerScope = bbposDomain.reader_;
        }
        if ((i & 2) != 0) {
            updatesScope = bbposDomain.updates;
        }
        if ((i & 4) != 0) {
            paymentsScope = bbposDomain.payments;
        }
        if ((i & 8) != 0) {
            androidScope = bbposDomain.android;
        }
        if ((i & 16) != 0) {
            sdkProxyScope = bbposDomain.sdk_proxy;
        }
        if ((i & 32) != 0) {
            bbposSdkScope = bbposDomain.bbpos_sdk_scope;
        }
        if ((i & 64) != 0) {
            byteString = bbposDomain.unknownFields();
        }
        BbposSdkScope bbposSdkScope2 = bbposSdkScope;
        ByteString byteString2 = byteString;
        SdkProxyScope sdkProxyScope2 = sdkProxyScope;
        PaymentsScope paymentsScope2 = paymentsScope;
        return bbposDomain.copy(readerScope, updatesScope, paymentsScope2, androidScope, sdkProxyScope2, bbposSdkScope2, byteString2);
    }

    public final BbposDomain copy(ReaderScope reader_, UpdatesScope updates, PaymentsScope payments, AndroidScope android2, SdkProxyScope sdk_proxy, BbposSdkScope bbpos_sdk_scope, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BbposDomain(reader_, updates, payments, android2, sdk_proxy, bbpos_sdk_scope, unknownFields);
    }

    /* JADX INFO: compiled from: BbposDomain.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "()V", "android", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/AndroidScope;", "bbpos_sdk_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;", "payments", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "reader_", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "sdk_proxy", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;", "updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/UpdatesScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BbposDomain, Builder> {
        public AndroidScope android;
        public BbposSdkScope bbpos_sdk_scope;
        public PaymentsScope payments;
        public ReaderScope reader_;
        public SdkProxyScope sdk_proxy;
        public UpdatesScope updates;

        public final Builder reader_(ReaderScope reader_) {
            this.reader_ = reader_;
            this.updates = null;
            this.payments = null;
            this.android = null;
            this.sdk_proxy = null;
            this.bbpos_sdk_scope = null;
            return this;
        }

        public final Builder updates(UpdatesScope updates) {
            this.updates = updates;
            this.reader_ = null;
            this.payments = null;
            this.android = null;
            this.sdk_proxy = null;
            this.bbpos_sdk_scope = null;
            return this;
        }

        public final Builder payments(PaymentsScope payments) {
            this.payments = payments;
            this.reader_ = null;
            this.updates = null;
            this.android = null;
            this.sdk_proxy = null;
            this.bbpos_sdk_scope = null;
            return this;
        }

        public final Builder android(AndroidScope android2) {
            this.android = android2;
            this.reader_ = null;
            this.updates = null;
            this.payments = null;
            this.sdk_proxy = null;
            this.bbpos_sdk_scope = null;
            return this;
        }

        public final Builder sdk_proxy(SdkProxyScope sdk_proxy) {
            this.sdk_proxy = sdk_proxy;
            this.reader_ = null;
            this.updates = null;
            this.payments = null;
            this.android = null;
            this.bbpos_sdk_scope = null;
            return this;
        }

        public final Builder bbpos_sdk_scope(BbposSdkScope bbpos_sdk_scope) {
            this.bbpos_sdk_scope = bbpos_sdk_scope;
            this.reader_ = null;
            this.updates = null;
            this.payments = null;
            this.android = null;
            this.sdk_proxy = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BbposDomain build() {
            return new BbposDomain(this.reader_, this.updates, this.payments, this.android, this.sdk_proxy, this.bbpos_sdk_scope, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BbposDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BbposDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BbposDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BbposDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BbposDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ReaderScope.ADAPTER.encodedSizeWithTag(1, value.reader_) + UpdatesScope.ADAPTER.encodedSizeWithTag(2, value.updates) + PaymentsScope.ADAPTER.encodedSizeWithTag(3, value.payments) + AndroidScope.ADAPTER.encodedSizeWithTag(4, value.android) + SdkProxyScope.ADAPTER.encodedSizeWithTag(5, value.sdk_proxy) + BbposSdkScope.ADAPTER.encodedSizeWithTag(6, value.bbpos_sdk_scope);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BbposDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderScope.ADAPTER.encodeWithTag(writer, 1, value.reader_);
                UpdatesScope.ADAPTER.encodeWithTag(writer, 2, value.updates);
                PaymentsScope.ADAPTER.encodeWithTag(writer, 3, value.payments);
                AndroidScope.ADAPTER.encodeWithTag(writer, 4, value.android);
                SdkProxyScope.ADAPTER.encodeWithTag(writer, 5, value.sdk_proxy);
                BbposSdkScope.ADAPTER.encodeWithTag(writer, 6, value.bbpos_sdk_scope);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BbposDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                BbposSdkScope.ADAPTER.encodeWithTag(writer, 6, value.bbpos_sdk_scope);
                SdkProxyScope.ADAPTER.encodeWithTag(writer, 5, value.sdk_proxy);
                AndroidScope.ADAPTER.encodeWithTag(writer, 4, value.android);
                PaymentsScope.ADAPTER.encodeWithTag(writer, 3, value.payments);
                UpdatesScope.ADAPTER.encodeWithTag(writer, 2, value.updates);
                ReaderScope.ADAPTER.encodeWithTag(writer, 1, value.reader_);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BbposDomain redact(BbposDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderScope readerScope = value.reader_;
                ReaderScope readerScopeRedact = readerScope != null ? ReaderScope.ADAPTER.redact(readerScope) : null;
                UpdatesScope updatesScope = value.updates;
                UpdatesScope updatesScopeRedact = updatesScope != null ? UpdatesScope.ADAPTER.redact(updatesScope) : null;
                PaymentsScope paymentsScope = value.payments;
                PaymentsScope paymentsScopeRedact = paymentsScope != null ? PaymentsScope.ADAPTER.redact(paymentsScope) : null;
                AndroidScope androidScope = value.android;
                AndroidScope androidScopeRedact = androidScope != null ? AndroidScope.ADAPTER.redact(androidScope) : null;
                SdkProxyScope sdkProxyScope = value.sdk_proxy;
                SdkProxyScope sdkProxyScopeRedact = sdkProxyScope != null ? SdkProxyScope.ADAPTER.redact(sdkProxyScope) : null;
                BbposSdkScope bbposSdkScope = value.bbpos_sdk_scope;
                return value.copy(readerScopeRedact, updatesScopeRedact, paymentsScopeRedact, androidScopeRedact, sdkProxyScopeRedact, bbposSdkScope != null ? BbposSdkScope.ADAPTER.redact(bbposSdkScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BbposDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ReaderScope readerScopeDecode = null;
                UpdatesScope updatesScopeDecode = null;
                PaymentsScope paymentsScopeDecode = null;
                AndroidScope androidScopeDecode = null;
                SdkProxyScope sdkProxyScopeDecode = null;
                BbposSdkScope bbposSdkScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                readerScopeDecode = ReaderScope.ADAPTER.decode(reader);
                                break;
                            case 2:
                                updatesScopeDecode = UpdatesScope.ADAPTER.decode(reader);
                                break;
                            case 3:
                                paymentsScopeDecode = PaymentsScope.ADAPTER.decode(reader);
                                break;
                            case 4:
                                androidScopeDecode = AndroidScope.ADAPTER.decode(reader);
                                break;
                            case 5:
                                sdkProxyScopeDecode = SdkProxyScope.ADAPTER.decode(reader);
                                break;
                            case 6:
                                bbposSdkScopeDecode = BbposSdkScope.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new BbposDomain(readerScopeDecode, updatesScopeDecode, paymentsScopeDecode, androidScopeDecode, sdkProxyScopeDecode, bbposSdkScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
