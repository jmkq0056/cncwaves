package com.stripe.proto.terminal.clientlogger.pub.message.health;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.AnalyticsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.ApplicationDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.deviceconfig.DeviceConfigDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.HandoffDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.HttpServerDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.rpcserver.RpcServerDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.ServerDrivenDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.UpdaterAnalyticsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp.UpdaterLaunchAppDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
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

/* JADX INFO: compiled from: HealthMetric.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 32\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000223BÛ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010%\u001a\u00020&¢\u0006\u0002\u0010'JÜ\u0001\u0010(\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\b\b\u0002\u0010%\u001a\u00020&J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0096\u0002J\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020\u0002H\u0016J\b\u00100\u001a\u000201H\u0016R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "bbpos", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "payment_collection", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;", "http_server", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;", "updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "rpc_server", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;", "device_config", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;", "updater_analytics", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;", "analytics", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;", "connectivity", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "offline", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "updater_launch_app", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;", "server_driven", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;", "tipping", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;", "forms", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;", "handoff", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;", "passthrough", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthMetric extends Message<HealthMetric, Builder> {
    public static final ProtoAdapter<HealthMetric> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.AnalyticsDomain#ADAPTER", oneofName = "domain", schemaIndex = 8, tag = 9)
    public final AnalyticsDomain analytics;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.ApplicationDomain#ADAPTER", oneofName = "domain", schemaIndex = 2, tag = 3)
    public final ApplicationDomain application;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain#ADAPTER", oneofName = "domain", schemaIndex = 0, tag = 1)
    public final BbposDomain bbpos;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain#ADAPTER", oneofName = "domain", schemaIndex = 9, tag = 10)
    public final ConnectivityDomain connectivity;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.deviceconfig.DeviceConfigDomain#ADAPTER", jsonName = "deviceConfig", oneofName = "domain", schemaIndex = 6, tag = 7)
    public final DeviceConfigDomain device_config;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain#ADAPTER", oneofName = "domain", schemaIndex = 14, tag = 15)
    public final FormsDomain forms;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.HandoffDomain#ADAPTER", oneofName = "domain", schemaIndex = 15, tag = 16)
    public final HandoffDomain handoff;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.HttpServerDomain#ADAPTER", jsonName = "httpServer", oneofName = "domain", schemaIndex = 3, tag = 4)
    public final HttpServerDomain http_server;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain#ADAPTER", oneofName = "domain", schemaIndex = 10, tag = 11)
    public final OfflineDomain offline;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain#ADAPTER", oneofName = "domain", schemaIndex = 16, tag = 17)
    public final PassthroughDomain passthrough;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain#ADAPTER", jsonName = "paymentCollection", oneofName = "domain", schemaIndex = 1, tag = 2)
    public final PaymentCollectionDomain payment_collection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.rpcserver.RpcServerDomain#ADAPTER", jsonName = "rpcServer", oneofName = "domain", schemaIndex = 5, tag = 6)
    public final RpcServerDomain rpc_server;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.ServerDrivenDomain#ADAPTER", jsonName = "serverDriven", oneofName = "domain", schemaIndex = 12, tag = 13)
    public final ServerDrivenDomain server_driven;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain#ADAPTER", oneofName = "domain", schemaIndex = 13, tag = 14)
    public final TippingDomain tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.UpdaterAnalyticsDomain#ADAPTER", jsonName = "updaterAnalytics", oneofName = "domain", schemaIndex = 7, tag = 8)
    public final UpdaterAnalyticsDomain updater_analytics;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp.UpdaterLaunchAppDomain#ADAPTER", jsonName = "updaterLaunchApp", oneofName = "domain", schemaIndex = 11, tag = 12)
    public final UpdaterLaunchAppDomain updater_launch_app;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain#ADAPTER", oneofName = "domain", schemaIndex = 4, tag = 5)
    public final UpdatesDomain updates;

    public HealthMetric() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public /* synthetic */ HealthMetric(BbposDomain bbposDomain, PaymentCollectionDomain paymentCollectionDomain, ApplicationDomain applicationDomain, HttpServerDomain httpServerDomain, UpdatesDomain updatesDomain, RpcServerDomain rpcServerDomain, DeviceConfigDomain deviceConfigDomain, UpdaterAnalyticsDomain updaterAnalyticsDomain, AnalyticsDomain analyticsDomain, ConnectivityDomain connectivityDomain, OfflineDomain offlineDomain, UpdaterLaunchAppDomain updaterLaunchAppDomain, ServerDrivenDomain serverDrivenDomain, TippingDomain tippingDomain, FormsDomain formsDomain, HandoffDomain handoffDomain, PassthroughDomain passthroughDomain, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bbposDomain, (i & 2) != 0 ? null : paymentCollectionDomain, (i & 4) != 0 ? null : applicationDomain, (i & 8) != 0 ? null : httpServerDomain, (i & 16) != 0 ? null : updatesDomain, (i & 32) != 0 ? null : rpcServerDomain, (i & 64) != 0 ? null : deviceConfigDomain, (i & 128) != 0 ? null : updaterAnalyticsDomain, (i & 256) != 0 ? null : analyticsDomain, (i & 512) != 0 ? null : connectivityDomain, (i & 1024) != 0 ? null : offlineDomain, (i & 2048) != 0 ? null : updaterLaunchAppDomain, (i & 4096) != 0 ? null : serverDrivenDomain, (i & 8192) != 0 ? null : tippingDomain, (i & 16384) != 0 ? null : formsDomain, (i & 32768) != 0 ? null : handoffDomain, (i & 65536) != 0 ? null : passthroughDomain, (i & 131072) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthMetric(BbposDomain bbposDomain, PaymentCollectionDomain paymentCollectionDomain, ApplicationDomain applicationDomain, HttpServerDomain httpServerDomain, UpdatesDomain updatesDomain, RpcServerDomain rpcServerDomain, DeviceConfigDomain deviceConfigDomain, UpdaterAnalyticsDomain updaterAnalyticsDomain, AnalyticsDomain analyticsDomain, ConnectivityDomain connectivityDomain, OfflineDomain offlineDomain, UpdaterLaunchAppDomain updaterLaunchAppDomain, ServerDrivenDomain serverDrivenDomain, TippingDomain tippingDomain, FormsDomain formsDomain, HandoffDomain handoffDomain, PassthroughDomain passthroughDomain, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.bbpos = bbposDomain;
        this.payment_collection = paymentCollectionDomain;
        this.application = applicationDomain;
        this.http_server = httpServerDomain;
        this.updates = updatesDomain;
        this.rpc_server = rpcServerDomain;
        this.device_config = deviceConfigDomain;
        this.updater_analytics = updaterAnalyticsDomain;
        this.analytics = analyticsDomain;
        this.connectivity = connectivityDomain;
        this.offline = offlineDomain;
        this.updater_launch_app = updaterLaunchAppDomain;
        this.server_driven = serverDrivenDomain;
        this.tipping = tippingDomain;
        this.forms = formsDomain;
        this.handoff = handoffDomain;
        this.passthrough = passthroughDomain;
        if (Internal.countNonNull(bbposDomain, paymentCollectionDomain, applicationDomain, httpServerDomain, updatesDomain, rpcServerDomain, deviceConfigDomain, updaterAnalyticsDomain, analyticsDomain, connectivityDomain, offlineDomain, updaterLaunchAppDomain, serverDrivenDomain, tippingDomain, formsDomain, handoffDomain, passthroughDomain) > 1) {
            throw new IllegalArgumentException("At most one of bbpos, payment_collection, application, http_server, updates, rpc_server, device_config, updater_analytics, analytics, connectivity, offline, updater_launch_app, server_driven, tipping, forms, handoff, passthrough may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.bbpos = this.bbpos;
        builder.payment_collection = this.payment_collection;
        builder.application = this.application;
        builder.http_server = this.http_server;
        builder.updates = this.updates;
        builder.rpc_server = this.rpc_server;
        builder.device_config = this.device_config;
        builder.updater_analytics = this.updater_analytics;
        builder.analytics = this.analytics;
        builder.connectivity = this.connectivity;
        builder.offline = this.offline;
        builder.updater_launch_app = this.updater_launch_app;
        builder.server_driven = this.server_driven;
        builder.tipping = this.tipping;
        builder.forms = this.forms;
        builder.handoff = this.handoff;
        builder.passthrough = this.passthrough;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HealthMetric)) {
            return false;
        }
        HealthMetric healthMetric = (HealthMetric) other;
        return Intrinsics.areEqual(unknownFields(), healthMetric.unknownFields()) && Intrinsics.areEqual(this.bbpos, healthMetric.bbpos) && Intrinsics.areEqual(this.payment_collection, healthMetric.payment_collection) && Intrinsics.areEqual(this.application, healthMetric.application) && Intrinsics.areEqual(this.http_server, healthMetric.http_server) && Intrinsics.areEqual(this.updates, healthMetric.updates) && Intrinsics.areEqual(this.rpc_server, healthMetric.rpc_server) && Intrinsics.areEqual(this.device_config, healthMetric.device_config) && Intrinsics.areEqual(this.updater_analytics, healthMetric.updater_analytics) && Intrinsics.areEqual(this.analytics, healthMetric.analytics) && Intrinsics.areEqual(this.connectivity, healthMetric.connectivity) && Intrinsics.areEqual(this.offline, healthMetric.offline) && Intrinsics.areEqual(this.updater_launch_app, healthMetric.updater_launch_app) && Intrinsics.areEqual(this.server_driven, healthMetric.server_driven) && Intrinsics.areEqual(this.tipping, healthMetric.tipping) && Intrinsics.areEqual(this.forms, healthMetric.forms) && Intrinsics.areEqual(this.handoff, healthMetric.handoff) && Intrinsics.areEqual(this.passthrough, healthMetric.passthrough);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BbposDomain bbposDomain = this.bbpos;
        int iHashCode2 = (iHashCode + (bbposDomain != null ? bbposDomain.hashCode() : 0)) * 37;
        PaymentCollectionDomain paymentCollectionDomain = this.payment_collection;
        int iHashCode3 = (iHashCode2 + (paymentCollectionDomain != null ? paymentCollectionDomain.hashCode() : 0)) * 37;
        ApplicationDomain applicationDomain = this.application;
        int iHashCode4 = (iHashCode3 + (applicationDomain != null ? applicationDomain.hashCode() : 0)) * 37;
        HttpServerDomain httpServerDomain = this.http_server;
        int iHashCode5 = (iHashCode4 + (httpServerDomain != null ? httpServerDomain.hashCode() : 0)) * 37;
        UpdatesDomain updatesDomain = this.updates;
        int iHashCode6 = (iHashCode5 + (updatesDomain != null ? updatesDomain.hashCode() : 0)) * 37;
        RpcServerDomain rpcServerDomain = this.rpc_server;
        int iHashCode7 = (iHashCode6 + (rpcServerDomain != null ? rpcServerDomain.hashCode() : 0)) * 37;
        DeviceConfigDomain deviceConfigDomain = this.device_config;
        int iHashCode8 = (iHashCode7 + (deviceConfigDomain != null ? deviceConfigDomain.hashCode() : 0)) * 37;
        UpdaterAnalyticsDomain updaterAnalyticsDomain = this.updater_analytics;
        int iHashCode9 = (iHashCode8 + (updaterAnalyticsDomain != null ? updaterAnalyticsDomain.hashCode() : 0)) * 37;
        AnalyticsDomain analyticsDomain = this.analytics;
        int iHashCode10 = (iHashCode9 + (analyticsDomain != null ? analyticsDomain.hashCode() : 0)) * 37;
        ConnectivityDomain connectivityDomain = this.connectivity;
        int iHashCode11 = (iHashCode10 + (connectivityDomain != null ? connectivityDomain.hashCode() : 0)) * 37;
        OfflineDomain offlineDomain = this.offline;
        int iHashCode12 = (iHashCode11 + (offlineDomain != null ? offlineDomain.hashCode() : 0)) * 37;
        UpdaterLaunchAppDomain updaterLaunchAppDomain = this.updater_launch_app;
        int iHashCode13 = (iHashCode12 + (updaterLaunchAppDomain != null ? updaterLaunchAppDomain.hashCode() : 0)) * 37;
        ServerDrivenDomain serverDrivenDomain = this.server_driven;
        int iHashCode14 = (iHashCode13 + (serverDrivenDomain != null ? serverDrivenDomain.hashCode() : 0)) * 37;
        TippingDomain tippingDomain = this.tipping;
        int iHashCode15 = (iHashCode14 + (tippingDomain != null ? tippingDomain.hashCode() : 0)) * 37;
        FormsDomain formsDomain = this.forms;
        int iHashCode16 = (iHashCode15 + (formsDomain != null ? formsDomain.hashCode() : 0)) * 37;
        HandoffDomain handoffDomain = this.handoff;
        int iHashCode17 = (iHashCode16 + (handoffDomain != null ? handoffDomain.hashCode() : 0)) * 37;
        PassthroughDomain passthroughDomain = this.passthrough;
        int iHashCode18 = iHashCode17 + (passthroughDomain != null ? passthroughDomain.hashCode() : 0);
        this.hashCode = iHashCode18;
        return iHashCode18;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.bbpos != null) {
            arrayList.add("bbpos=" + this.bbpos);
        }
        if (this.payment_collection != null) {
            arrayList.add("payment_collection=" + this.payment_collection);
        }
        if (this.application != null) {
            arrayList.add("application=" + this.application);
        }
        if (this.http_server != null) {
            arrayList.add("http_server=" + this.http_server);
        }
        if (this.updates != null) {
            arrayList.add("updates=" + this.updates);
        }
        if (this.rpc_server != null) {
            arrayList.add("rpc_server=" + this.rpc_server);
        }
        if (this.device_config != null) {
            arrayList.add("device_config=" + this.device_config);
        }
        if (this.updater_analytics != null) {
            arrayList.add("updater_analytics=" + this.updater_analytics);
        }
        if (this.analytics != null) {
            arrayList.add("analytics=" + this.analytics);
        }
        if (this.connectivity != null) {
            arrayList.add("connectivity=" + this.connectivity);
        }
        if (this.offline != null) {
            arrayList.add("offline=" + this.offline);
        }
        if (this.updater_launch_app != null) {
            arrayList.add("updater_launch_app=" + this.updater_launch_app);
        }
        if (this.server_driven != null) {
            arrayList.add("server_driven=" + this.server_driven);
        }
        if (this.tipping != null) {
            arrayList.add("tipping=" + this.tipping);
        }
        if (this.forms != null) {
            arrayList.add("forms=" + this.forms);
        }
        if (this.handoff != null) {
            arrayList.add("handoff=" + this.handoff);
        }
        if (this.passthrough != null) {
            arrayList.add("passthrough=" + this.passthrough);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "HealthMetric{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HealthMetric copy$default(HealthMetric healthMetric, BbposDomain bbposDomain, PaymentCollectionDomain paymentCollectionDomain, ApplicationDomain applicationDomain, HttpServerDomain httpServerDomain, UpdatesDomain updatesDomain, RpcServerDomain rpcServerDomain, DeviceConfigDomain deviceConfigDomain, UpdaterAnalyticsDomain updaterAnalyticsDomain, AnalyticsDomain analyticsDomain, ConnectivityDomain connectivityDomain, OfflineDomain offlineDomain, UpdaterLaunchAppDomain updaterLaunchAppDomain, ServerDrivenDomain serverDrivenDomain, TippingDomain tippingDomain, FormsDomain formsDomain, HandoffDomain handoffDomain, PassthroughDomain passthroughDomain, ByteString byteString, int i, Object obj) {
        BbposDomain bbposDomain2 = (i & 1) != 0 ? healthMetric.bbpos : bbposDomain;
        return healthMetric.copy(bbposDomain2, (i & 2) != 0 ? healthMetric.payment_collection : paymentCollectionDomain, (i & 4) != 0 ? healthMetric.application : applicationDomain, (i & 8) != 0 ? healthMetric.http_server : httpServerDomain, (i & 16) != 0 ? healthMetric.updates : updatesDomain, (i & 32) != 0 ? healthMetric.rpc_server : rpcServerDomain, (i & 64) != 0 ? healthMetric.device_config : deviceConfigDomain, (i & 128) != 0 ? healthMetric.updater_analytics : updaterAnalyticsDomain, (i & 256) != 0 ? healthMetric.analytics : analyticsDomain, (i & 512) != 0 ? healthMetric.connectivity : connectivityDomain, (i & 1024) != 0 ? healthMetric.offline : offlineDomain, (i & 2048) != 0 ? healthMetric.updater_launch_app : updaterLaunchAppDomain, (i & 4096) != 0 ? healthMetric.server_driven : serverDrivenDomain, (i & 8192) != 0 ? healthMetric.tipping : tippingDomain, (i & 16384) != 0 ? healthMetric.forms : formsDomain, (i & 32768) != 0 ? healthMetric.handoff : handoffDomain, (i & 65536) != 0 ? healthMetric.passthrough : passthroughDomain, (i & 131072) != 0 ? healthMetric.unknownFields() : byteString);
    }

    public final HealthMetric copy(BbposDomain bbpos, PaymentCollectionDomain payment_collection, ApplicationDomain application, HttpServerDomain http_server, UpdatesDomain updates, RpcServerDomain rpc_server, DeviceConfigDomain device_config, UpdaterAnalyticsDomain updater_analytics, AnalyticsDomain analytics, ConnectivityDomain connectivity, OfflineDomain offline, UpdaterLaunchAppDomain updater_launch_app, ServerDrivenDomain server_driven, TippingDomain tipping, FormsDomain forms, HandoffDomain handoff, PassthroughDomain passthrough, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HealthMetric(bbpos, payment_collection, application, http_server, updates, rpc_server, device_config, updater_analytics, analytics, connectivity, offline, updater_launch_app, server_driven, tipping, forms, handoff, passthrough, unknownFields);
    }

    /* JADX INFO: compiled from: HealthMetric.kt */
    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\b\u0010&\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010%R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "()V", "analytics", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;", "application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;", "bbpos", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "connectivity", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "device_config", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;", "forms", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;", "handoff", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;", "http_server", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;", "offline", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "passthrough", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "payment_collection", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "rpc_server", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;", "server_driven", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;", "tipping", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;", "updater_analytics", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;", "updater_launch_app", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;", "updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HealthMetric, Builder> {
        public AnalyticsDomain analytics;
        public ApplicationDomain application;
        public BbposDomain bbpos;
        public ConnectivityDomain connectivity;
        public DeviceConfigDomain device_config;
        public FormsDomain forms;
        public HandoffDomain handoff;
        public HttpServerDomain http_server;
        public OfflineDomain offline;
        public PassthroughDomain passthrough;
        public PaymentCollectionDomain payment_collection;
        public RpcServerDomain rpc_server;
        public ServerDrivenDomain server_driven;
        public TippingDomain tipping;
        public UpdaterAnalyticsDomain updater_analytics;
        public UpdaterLaunchAppDomain updater_launch_app;
        public UpdatesDomain updates;

        public final Builder bbpos(BbposDomain bbpos) {
            this.bbpos = bbpos;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder payment_collection(PaymentCollectionDomain payment_collection) {
            this.payment_collection = payment_collection;
            this.bbpos = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder application(ApplicationDomain application) {
            this.application = application;
            this.bbpos = null;
            this.payment_collection = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder http_server(HttpServerDomain http_server) {
            this.http_server = http_server;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder updates(UpdatesDomain updates) {
            this.updates = updates;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder rpc_server(RpcServerDomain rpc_server) {
            this.rpc_server = rpc_server;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder device_config(DeviceConfigDomain device_config) {
            this.device_config = device_config;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder updater_analytics(UpdaterAnalyticsDomain updater_analytics) {
            this.updater_analytics = updater_analytics;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder analytics(AnalyticsDomain analytics) {
            this.analytics = analytics;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder connectivity(ConnectivityDomain connectivity) {
            this.connectivity = connectivity;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder offline(OfflineDomain offline) {
            this.offline = offline;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder updater_launch_app(UpdaterLaunchAppDomain updater_launch_app) {
            this.updater_launch_app = updater_launch_app;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder server_driven(ServerDrivenDomain server_driven) {
            this.server_driven = server_driven;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder tipping(TippingDomain tipping) {
            this.tipping = tipping;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.forms = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder forms(FormsDomain forms) {
            this.forms = forms;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.handoff = null;
            this.passthrough = null;
            return this;
        }

        public final Builder handoff(HandoffDomain handoff) {
            this.handoff = handoff;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.passthrough = null;
            return this;
        }

        public final Builder passthrough(PassthroughDomain passthrough) {
            this.passthrough = passthrough;
            this.bbpos = null;
            this.payment_collection = null;
            this.application = null;
            this.http_server = null;
            this.updates = null;
            this.rpc_server = null;
            this.device_config = null;
            this.updater_analytics = null;
            this.analytics = null;
            this.connectivity = null;
            this.offline = null;
            this.updater_launch_app = null;
            this.server_driven = null;
            this.tipping = null;
            this.forms = null;
            this.handoff = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HealthMetric build() {
            return new HealthMetric(this.bbpos, this.payment_collection, this.application, this.http_server, this.updates, this.rpc_server, this.device_config, this.updater_analytics, this.analytics, this.connectivity, this.offline, this.updater_launch_app, this.server_driven, this.tipping, this.forms, this.handoff, this.passthrough, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HealthMetric.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HealthMetric build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HealthMetric.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HealthMetric>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HealthMetric value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + BbposDomain.ADAPTER.encodedSizeWithTag(1, value.bbpos) + PaymentCollectionDomain.ADAPTER.encodedSizeWithTag(2, value.payment_collection) + ApplicationDomain.ADAPTER.encodedSizeWithTag(3, value.application) + HttpServerDomain.ADAPTER.encodedSizeWithTag(4, value.http_server) + UpdatesDomain.ADAPTER.encodedSizeWithTag(5, value.updates) + RpcServerDomain.ADAPTER.encodedSizeWithTag(6, value.rpc_server) + DeviceConfigDomain.ADAPTER.encodedSizeWithTag(7, value.device_config) + UpdaterAnalyticsDomain.ADAPTER.encodedSizeWithTag(8, value.updater_analytics) + AnalyticsDomain.ADAPTER.encodedSizeWithTag(9, value.analytics) + ConnectivityDomain.ADAPTER.encodedSizeWithTag(10, value.connectivity) + OfflineDomain.ADAPTER.encodedSizeWithTag(11, value.offline) + UpdaterLaunchAppDomain.ADAPTER.encodedSizeWithTag(12, value.updater_launch_app) + ServerDrivenDomain.ADAPTER.encodedSizeWithTag(13, value.server_driven) + TippingDomain.ADAPTER.encodedSizeWithTag(14, value.tipping) + FormsDomain.ADAPTER.encodedSizeWithTag(15, value.forms) + HandoffDomain.ADAPTER.encodedSizeWithTag(16, value.handoff) + PassthroughDomain.ADAPTER.encodedSizeWithTag(17, value.passthrough);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HealthMetric value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                BbposDomain.ADAPTER.encodeWithTag(writer, 1, value.bbpos);
                PaymentCollectionDomain.ADAPTER.encodeWithTag(writer, 2, value.payment_collection);
                ApplicationDomain.ADAPTER.encodeWithTag(writer, 3, value.application);
                HttpServerDomain.ADAPTER.encodeWithTag(writer, 4, value.http_server);
                UpdatesDomain.ADAPTER.encodeWithTag(writer, 5, value.updates);
                RpcServerDomain.ADAPTER.encodeWithTag(writer, 6, value.rpc_server);
                DeviceConfigDomain.ADAPTER.encodeWithTag(writer, 7, value.device_config);
                UpdaterAnalyticsDomain.ADAPTER.encodeWithTag(writer, 8, value.updater_analytics);
                AnalyticsDomain.ADAPTER.encodeWithTag(writer, 9, value.analytics);
                ConnectivityDomain.ADAPTER.encodeWithTag(writer, 10, value.connectivity);
                OfflineDomain.ADAPTER.encodeWithTag(writer, 11, value.offline);
                UpdaterLaunchAppDomain.ADAPTER.encodeWithTag(writer, 12, value.updater_launch_app);
                ServerDrivenDomain.ADAPTER.encodeWithTag(writer, 13, value.server_driven);
                TippingDomain.ADAPTER.encodeWithTag(writer, 14, value.tipping);
                FormsDomain.ADAPTER.encodeWithTag(writer, 15, value.forms);
                HandoffDomain.ADAPTER.encodeWithTag(writer, 16, value.handoff);
                PassthroughDomain.ADAPTER.encodeWithTag(writer, 17, value.passthrough);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HealthMetric value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                PassthroughDomain.ADAPTER.encodeWithTag(writer, 17, value.passthrough);
                HandoffDomain.ADAPTER.encodeWithTag(writer, 16, value.handoff);
                FormsDomain.ADAPTER.encodeWithTag(writer, 15, value.forms);
                TippingDomain.ADAPTER.encodeWithTag(writer, 14, value.tipping);
                ServerDrivenDomain.ADAPTER.encodeWithTag(writer, 13, value.server_driven);
                UpdaterLaunchAppDomain.ADAPTER.encodeWithTag(writer, 12, value.updater_launch_app);
                OfflineDomain.ADAPTER.encodeWithTag(writer, 11, value.offline);
                ConnectivityDomain.ADAPTER.encodeWithTag(writer, 10, value.connectivity);
                AnalyticsDomain.ADAPTER.encodeWithTag(writer, 9, value.analytics);
                UpdaterAnalyticsDomain.ADAPTER.encodeWithTag(writer, 8, value.updater_analytics);
                DeviceConfigDomain.ADAPTER.encodeWithTag(writer, 7, value.device_config);
                RpcServerDomain.ADAPTER.encodeWithTag(writer, 6, value.rpc_server);
                UpdatesDomain.ADAPTER.encodeWithTag(writer, 5, value.updates);
                HttpServerDomain.ADAPTER.encodeWithTag(writer, 4, value.http_server);
                ApplicationDomain.ADAPTER.encodeWithTag(writer, 3, value.application);
                PaymentCollectionDomain.ADAPTER.encodeWithTag(writer, 2, value.payment_collection);
                BbposDomain.ADAPTER.encodeWithTag(writer, 1, value.bbpos);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetric redact(HealthMetric value) {
                HandoffDomain handoffDomain;
                BbposDomain bbposDomain;
                PassthroughDomain passthroughDomainRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                BbposDomain bbposDomain2 = value.bbpos;
                BbposDomain bbposDomainRedact = bbposDomain2 != null ? BbposDomain.ADAPTER.redact(bbposDomain2) : null;
                PaymentCollectionDomain paymentCollectionDomain = value.payment_collection;
                PaymentCollectionDomain paymentCollectionDomainRedact = paymentCollectionDomain != null ? PaymentCollectionDomain.ADAPTER.redact(paymentCollectionDomain) : null;
                ApplicationDomain applicationDomain = value.application;
                ApplicationDomain applicationDomainRedact = applicationDomain != null ? ApplicationDomain.ADAPTER.redact(applicationDomain) : null;
                HttpServerDomain httpServerDomain = value.http_server;
                HttpServerDomain httpServerDomainRedact = httpServerDomain != null ? HttpServerDomain.ADAPTER.redact(httpServerDomain) : null;
                UpdatesDomain updatesDomain = value.updates;
                UpdatesDomain updatesDomainRedact = updatesDomain != null ? UpdatesDomain.ADAPTER.redact(updatesDomain) : null;
                RpcServerDomain rpcServerDomain = value.rpc_server;
                RpcServerDomain rpcServerDomainRedact = rpcServerDomain != null ? RpcServerDomain.ADAPTER.redact(rpcServerDomain) : null;
                DeviceConfigDomain deviceConfigDomain = value.device_config;
                DeviceConfigDomain deviceConfigDomainRedact = deviceConfigDomain != null ? DeviceConfigDomain.ADAPTER.redact(deviceConfigDomain) : null;
                UpdaterAnalyticsDomain updaterAnalyticsDomain = value.updater_analytics;
                UpdaterAnalyticsDomain updaterAnalyticsDomainRedact = updaterAnalyticsDomain != null ? UpdaterAnalyticsDomain.ADAPTER.redact(updaterAnalyticsDomain) : null;
                AnalyticsDomain analyticsDomain = value.analytics;
                AnalyticsDomain analyticsDomainRedact = analyticsDomain != null ? AnalyticsDomain.ADAPTER.redact(analyticsDomain) : null;
                ConnectivityDomain connectivityDomain = value.connectivity;
                ConnectivityDomain connectivityDomainRedact = connectivityDomain != null ? ConnectivityDomain.ADAPTER.redact(connectivityDomain) : null;
                OfflineDomain offlineDomain = value.offline;
                OfflineDomain offlineDomainRedact = offlineDomain != null ? OfflineDomain.ADAPTER.redact(offlineDomain) : null;
                UpdaterLaunchAppDomain updaterLaunchAppDomain = value.updater_launch_app;
                UpdaterLaunchAppDomain updaterLaunchAppDomainRedact = updaterLaunchAppDomain != null ? UpdaterLaunchAppDomain.ADAPTER.redact(updaterLaunchAppDomain) : null;
                ServerDrivenDomain serverDrivenDomain = value.server_driven;
                ServerDrivenDomain serverDrivenDomainRedact = serverDrivenDomain != null ? ServerDrivenDomain.ADAPTER.redact(serverDrivenDomain) : null;
                TippingDomain tippingDomain = value.tipping;
                TippingDomain tippingDomainRedact = tippingDomain != null ? TippingDomain.ADAPTER.redact(tippingDomain) : null;
                FormsDomain formsDomain = value.forms;
                BbposDomain bbposDomain3 = bbposDomainRedact;
                FormsDomain formsDomainRedact = formsDomain != null ? FormsDomain.ADAPTER.redact(formsDomain) : null;
                HandoffDomain handoffDomain2 = value.handoff;
                FormsDomain formsDomain2 = formsDomainRedact;
                HandoffDomain handoffDomainRedact = handoffDomain2 != null ? HandoffDomain.ADAPTER.redact(handoffDomain2) : null;
                PassthroughDomain passthroughDomain = value.passthrough;
                if (passthroughDomain != null) {
                    HandoffDomain handoffDomain3 = handoffDomainRedact;
                    passthroughDomainRedact = PassthroughDomain.ADAPTER.redact(passthroughDomain);
                    bbposDomain = bbposDomain3;
                    handoffDomain = handoffDomain3;
                } else {
                    handoffDomain = handoffDomainRedact;
                    bbposDomain = bbposDomain3;
                    passthroughDomainRedact = null;
                }
                return value.copy(bbposDomain, paymentCollectionDomainRedact, applicationDomainRedact, httpServerDomainRedact, updatesDomainRedact, rpcServerDomainRedact, deviceConfigDomainRedact, updaterAnalyticsDomainRedact, analyticsDomainRedact, connectivityDomainRedact, offlineDomainRedact, updaterLaunchAppDomainRedact, serverDrivenDomainRedact, tippingDomainRedact, formsDomain2, handoffDomain, passthroughDomainRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HealthMetric decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PaymentCollectionDomain paymentCollectionDomainDecode = null;
                ApplicationDomain applicationDomainDecode = null;
                HttpServerDomain httpServerDomainDecode = null;
                UpdatesDomain updatesDomainDecode = null;
                RpcServerDomain rpcServerDomainDecode = null;
                DeviceConfigDomain deviceConfigDomainDecode = null;
                UpdaterAnalyticsDomain updaterAnalyticsDomainDecode = null;
                AnalyticsDomain analyticsDomainDecode = null;
                ConnectivityDomain connectivityDomainDecode = null;
                OfflineDomain offlineDomainDecode = null;
                UpdaterLaunchAppDomain updaterLaunchAppDomainDecode = null;
                ServerDrivenDomain serverDrivenDomainDecode = null;
                TippingDomain tippingDomainDecode = null;
                FormsDomain formsDomainDecode = null;
                HandoffDomain handoffDomainDecode = null;
                PassthroughDomain passthroughDomainDecode = null;
                BbposDomain bbposDomainDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    PaymentCollectionDomain paymentCollectionDomain = paymentCollectionDomainDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                bbposDomainDecode = BbposDomain.ADAPTER.decode(reader);
                                break;
                            case 2:
                                paymentCollectionDomainDecode = PaymentCollectionDomain.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                applicationDomainDecode = ApplicationDomain.ADAPTER.decode(reader);
                                break;
                            case 4:
                                httpServerDomainDecode = HttpServerDomain.ADAPTER.decode(reader);
                                break;
                            case 5:
                                updatesDomainDecode = UpdatesDomain.ADAPTER.decode(reader);
                                break;
                            case 6:
                                rpcServerDomainDecode = RpcServerDomain.ADAPTER.decode(reader);
                                break;
                            case 7:
                                deviceConfigDomainDecode = DeviceConfigDomain.ADAPTER.decode(reader);
                                break;
                            case 8:
                                updaterAnalyticsDomainDecode = UpdaterAnalyticsDomain.ADAPTER.decode(reader);
                                break;
                            case 9:
                                analyticsDomainDecode = AnalyticsDomain.ADAPTER.decode(reader);
                                break;
                            case 10:
                                connectivityDomainDecode = ConnectivityDomain.ADAPTER.decode(reader);
                                break;
                            case 11:
                                offlineDomainDecode = OfflineDomain.ADAPTER.decode(reader);
                                break;
                            case 12:
                                updaterLaunchAppDomainDecode = UpdaterLaunchAppDomain.ADAPTER.decode(reader);
                                break;
                            case 13:
                                serverDrivenDomainDecode = ServerDrivenDomain.ADAPTER.decode(reader);
                                break;
                            case 14:
                                tippingDomainDecode = TippingDomain.ADAPTER.decode(reader);
                                break;
                            case 15:
                                formsDomainDecode = FormsDomain.ADAPTER.decode(reader);
                                break;
                            case 16:
                                handoffDomainDecode = HandoffDomain.ADAPTER.decode(reader);
                                break;
                            case 17:
                                passthroughDomainDecode = PassthroughDomain.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        paymentCollectionDomainDecode = paymentCollectionDomain;
                    } else {
                        return new HealthMetric(bbposDomainDecode, paymentCollectionDomain, applicationDomainDecode, httpServerDomainDecode, updatesDomainDecode, rpcServerDomainDecode, deviceConfigDomainDecode, updaterAnalyticsDomainDecode, analyticsDomainDecode, connectivityDomainDecode, offlineDomainDecode, updaterLaunchAppDomainDecode, serverDrivenDomainDecode, tippingDomainDecode, formsDomainDecode, handoffDomainDecode, passthroughDomainDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
