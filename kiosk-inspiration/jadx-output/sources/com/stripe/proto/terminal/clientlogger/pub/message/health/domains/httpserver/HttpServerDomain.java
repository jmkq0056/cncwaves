package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver;

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

/* JADX INFO: compiled from: HttpServerDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;", "certificate_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;", "startup_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;", "request_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HttpServerDomain extends Message<HttpServerDomain, Builder> {
    public static final ProtoAdapter<HttpServerDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.CertificateScope#ADAPTER", jsonName = "certificateScope", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final CertificateScope certificate_scope;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.RequestScope#ADAPTER", jsonName = "requestScope", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final RequestScope request_scope;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.StartupScope#ADAPTER", jsonName = "startupScope", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final StartupScope startup_scope;

    public HttpServerDomain() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ HttpServerDomain(CertificateScope certificateScope, StartupScope startupScope, RequestScope requestScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : certificateScope, (i & 2) != 0 ? null : startupScope, (i & 4) != 0 ? null : requestScope, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpServerDomain(CertificateScope certificateScope, StartupScope startupScope, RequestScope requestScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.certificate_scope = certificateScope;
        this.startup_scope = startupScope;
        this.request_scope = requestScope;
        if (Internal.countNonNull(certificateScope, startupScope, requestScope) > 1) {
            throw new IllegalArgumentException("At most one of certificate_scope, startup_scope, request_scope may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.certificate_scope = this.certificate_scope;
        builder.startup_scope = this.startup_scope;
        builder.request_scope = this.request_scope;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HttpServerDomain)) {
            return false;
        }
        HttpServerDomain httpServerDomain = (HttpServerDomain) other;
        return Intrinsics.areEqual(unknownFields(), httpServerDomain.unknownFields()) && Intrinsics.areEqual(this.certificate_scope, httpServerDomain.certificate_scope) && Intrinsics.areEqual(this.startup_scope, httpServerDomain.startup_scope) && Intrinsics.areEqual(this.request_scope, httpServerDomain.request_scope);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CertificateScope certificateScope = this.certificate_scope;
        int iHashCode2 = (iHashCode + (certificateScope != null ? certificateScope.hashCode() : 0)) * 37;
        StartupScope startupScope = this.startup_scope;
        int iHashCode3 = (iHashCode2 + (startupScope != null ? startupScope.hashCode() : 0)) * 37;
        RequestScope requestScope = this.request_scope;
        int iHashCode4 = iHashCode3 + (requestScope != null ? requestScope.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.certificate_scope != null) {
            arrayList.add("certificate_scope=" + this.certificate_scope);
        }
        if (this.startup_scope != null) {
            arrayList.add("startup_scope=" + this.startup_scope);
        }
        if (this.request_scope != null) {
            arrayList.add("request_scope=" + this.request_scope);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "HttpServerDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HttpServerDomain copy$default(HttpServerDomain httpServerDomain, CertificateScope certificateScope, StartupScope startupScope, RequestScope requestScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            certificateScope = httpServerDomain.certificate_scope;
        }
        if ((i & 2) != 0) {
            startupScope = httpServerDomain.startup_scope;
        }
        if ((i & 4) != 0) {
            requestScope = httpServerDomain.request_scope;
        }
        if ((i & 8) != 0) {
            byteString = httpServerDomain.unknownFields();
        }
        return httpServerDomain.copy(certificateScope, startupScope, requestScope, byteString);
    }

    public final HttpServerDomain copy(CertificateScope certificate_scope, StartupScope startup_scope, RequestScope request_scope, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HttpServerDomain(certificate_scope, startup_scope, request_scope, unknownFields);
    }

    /* JADX INFO: compiled from: HttpServerDomain.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;", "()V", "certificate_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/CertificateScope;", "request_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/RequestScope;", "startup_scope", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/StartupScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HttpServerDomain, Builder> {
        public CertificateScope certificate_scope;
        public RequestScope request_scope;
        public StartupScope startup_scope;

        public final Builder certificate_scope(CertificateScope certificate_scope) {
            this.certificate_scope = certificate_scope;
            this.startup_scope = null;
            this.request_scope = null;
            return this;
        }

        public final Builder startup_scope(StartupScope startup_scope) {
            this.startup_scope = startup_scope;
            this.certificate_scope = null;
            this.request_scope = null;
            return this;
        }

        public final Builder request_scope(RequestScope request_scope) {
            this.request_scope = request_scope;
            this.certificate_scope = null;
            this.startup_scope = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HttpServerDomain build() {
            return new HttpServerDomain(this.certificate_scope, this.startup_scope, this.request_scope, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HttpServerDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HttpServerDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HttpServerDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HttpServerDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.HttpServerDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HttpServerDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CertificateScope.ADAPTER.encodedSizeWithTag(1, value.certificate_scope) + StartupScope.ADAPTER.encodedSizeWithTag(2, value.startup_scope) + RequestScope.ADAPTER.encodedSizeWithTag(3, value.request_scope);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HttpServerDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CertificateScope.ADAPTER.encodeWithTag(writer, 1, value.certificate_scope);
                StartupScope.ADAPTER.encodeWithTag(writer, 2, value.startup_scope);
                RequestScope.ADAPTER.encodeWithTag(writer, 3, value.request_scope);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HttpServerDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                RequestScope.ADAPTER.encodeWithTag(writer, 3, value.request_scope);
                StartupScope.ADAPTER.encodeWithTag(writer, 2, value.startup_scope);
                CertificateScope.ADAPTER.encodeWithTag(writer, 1, value.certificate_scope);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HttpServerDomain redact(HttpServerDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CertificateScope certificateScope = value.certificate_scope;
                CertificateScope certificateScopeRedact = certificateScope != null ? CertificateScope.ADAPTER.redact(certificateScope) : null;
                StartupScope startupScope = value.startup_scope;
                StartupScope startupScopeRedact = startupScope != null ? StartupScope.ADAPTER.redact(startupScope) : null;
                RequestScope requestScope = value.request_scope;
                return value.copy(certificateScopeRedact, startupScopeRedact, requestScope != null ? RequestScope.ADAPTER.redact(requestScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HttpServerDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CertificateScope certificateScopeDecode = null;
                StartupScope startupScopeDecode = null;
                RequestScope requestScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HttpServerDomain(certificateScopeDecode, startupScopeDecode, requestScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        certificateScopeDecode = CertificateScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        startupScopeDecode = StartupScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        requestScopeDecode = RequestScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
