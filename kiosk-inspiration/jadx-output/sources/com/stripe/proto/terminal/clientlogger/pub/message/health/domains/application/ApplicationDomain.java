package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application;

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

/* JADX INFO: compiled from: ApplicationDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain$Builder;", "error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ErrorScope;", "lifecycle", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/LifecycleScope;", NotificationCompat.CATEGORY_NAVIGATION, "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/NavigationScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ErrorScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/LifecycleScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/NavigationScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationDomain extends Message<ApplicationDomain, Builder> {
    public static final ProtoAdapter<ApplicationDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.ErrorScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final ErrorScope error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.LifecycleScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final LifecycleScope lifecycle;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.NavigationScope#ADAPTER", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final NavigationScope navigation;

    public ApplicationDomain() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ApplicationDomain(ErrorScope errorScope, LifecycleScope lifecycleScope, NavigationScope navigationScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : errorScope, (i & 2) != 0 ? null : lifecycleScope, (i & 4) != 0 ? null : navigationScope, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationDomain(ErrorScope errorScope, LifecycleScope lifecycleScope, NavigationScope navigationScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.error = errorScope;
        this.lifecycle = lifecycleScope;
        this.navigation = navigationScope;
        if (Internal.countNonNull(errorScope, lifecycleScope, navigationScope) > 1) {
            throw new IllegalArgumentException("At most one of error, lifecycle, navigation may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.error = this.error;
        builder.lifecycle = this.lifecycle;
        builder.navigation = this.navigation;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApplicationDomain)) {
            return false;
        }
        ApplicationDomain applicationDomain = (ApplicationDomain) other;
        return Intrinsics.areEqual(unknownFields(), applicationDomain.unknownFields()) && Intrinsics.areEqual(this.error, applicationDomain.error) && Intrinsics.areEqual(this.lifecycle, applicationDomain.lifecycle) && Intrinsics.areEqual(this.navigation, applicationDomain.navigation);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ErrorScope errorScope = this.error;
        int iHashCode2 = (iHashCode + (errorScope != null ? errorScope.hashCode() : 0)) * 37;
        LifecycleScope lifecycleScope = this.lifecycle;
        int iHashCode3 = (iHashCode2 + (lifecycleScope != null ? lifecycleScope.hashCode() : 0)) * 37;
        NavigationScope navigationScope = this.navigation;
        int iHashCode4 = iHashCode3 + (navigationScope != null ? navigationScope.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.error != null) {
            arrayList.add("error=" + this.error);
        }
        if (this.lifecycle != null) {
            arrayList.add("lifecycle=" + this.lifecycle);
        }
        if (this.navigation != null) {
            arrayList.add("navigation=" + this.navigation);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApplicationDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApplicationDomain copy$default(ApplicationDomain applicationDomain, ErrorScope errorScope, LifecycleScope lifecycleScope, NavigationScope navigationScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            errorScope = applicationDomain.error;
        }
        if ((i & 2) != 0) {
            lifecycleScope = applicationDomain.lifecycle;
        }
        if ((i & 4) != 0) {
            navigationScope = applicationDomain.navigation;
        }
        if ((i & 8) != 0) {
            byteString = applicationDomain.unknownFields();
        }
        return applicationDomain.copy(errorScope, lifecycleScope, navigationScope, byteString);
    }

    public final ApplicationDomain copy(ErrorScope error, LifecycleScope lifecycle, NavigationScope navigation, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApplicationDomain(error, lifecycle, navigation, unknownFields);
    }

    /* JADX INFO: compiled from: ApplicationDomain.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;", "()V", "error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ErrorScope;", "lifecycle", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/LifecycleScope;", NotificationCompat.CATEGORY_NAVIGATION, "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/NavigationScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApplicationDomain, Builder> {
        public ErrorScope error;
        public LifecycleScope lifecycle;
        public NavigationScope navigation;

        public final Builder error(ErrorScope error) {
            this.error = error;
            this.lifecycle = null;
            this.navigation = null;
            return this;
        }

        public final Builder lifecycle(LifecycleScope lifecycle) {
            this.lifecycle = lifecycle;
            this.error = null;
            this.navigation = null;
            return this;
        }

        public final Builder navigation(NavigationScope navigation) {
            this.navigation = navigation;
            this.error = null;
            this.lifecycle = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApplicationDomain build() {
            return new ApplicationDomain(this.error, this.lifecycle, this.navigation, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApplicationDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApplicationDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApplicationDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.ApplicationDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApplicationDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ErrorScope.ADAPTER.encodedSizeWithTag(1, value.error) + LifecycleScope.ADAPTER.encodedSizeWithTag(2, value.lifecycle) + NavigationScope.ADAPTER.encodedSizeWithTag(3, value.navigation);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApplicationDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ErrorScope.ADAPTER.encodeWithTag(writer, 1, value.error);
                LifecycleScope.ADAPTER.encodeWithTag(writer, 2, value.lifecycle);
                NavigationScope.ADAPTER.encodeWithTag(writer, 3, value.navigation);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApplicationDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                NavigationScope.ADAPTER.encodeWithTag(writer, 3, value.navigation);
                LifecycleScope.ADAPTER.encodeWithTag(writer, 2, value.lifecycle);
                ErrorScope.ADAPTER.encodeWithTag(writer, 1, value.error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationDomain redact(ApplicationDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ErrorScope errorScope = value.error;
                ErrorScope errorScopeRedact = errorScope != null ? ErrorScope.ADAPTER.redact(errorScope) : null;
                LifecycleScope lifecycleScope = value.lifecycle;
                LifecycleScope lifecycleScopeRedact = lifecycleScope != null ? LifecycleScope.ADAPTER.redact(lifecycleScope) : null;
                NavigationScope navigationScope = value.navigation;
                return value.copy(errorScopeRedact, lifecycleScopeRedact, navigationScope != null ? NavigationScope.ADAPTER.redact(navigationScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ErrorScope errorScopeDecode = null;
                LifecycleScope lifecycleScopeDecode = null;
                NavigationScope navigationScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApplicationDomain(errorScopeDecode, lifecycleScopeDecode, navigationScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        errorScopeDecode = ErrorScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        lifecycleScopeDecode = LifecycleScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        navigationScopeDecode = NavigationScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
