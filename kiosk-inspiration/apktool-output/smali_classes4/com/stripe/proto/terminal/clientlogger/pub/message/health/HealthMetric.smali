.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
.super Lcom/squareup/wire/Message;
.source "HealthMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 32\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000223B\u00db\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\u0008\u0008\u0002\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010\'J\u00dc\u0001\u0010(\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0008\u0002\u0010%\u001a\u00020&J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0096\u0002J\u0008\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u00020\u0002H\u0016J\u0008\u00100\u001a\u000201H\u0016R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        "bbpos",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "payment_collection",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "application",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;",
        "http_server",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;",
        "updates",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "rpc_server",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;",
        "device_config",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;",
        "updater_analytics",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;",
        "analytics",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;",
        "connectivity",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "offline",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "updater_launch_app",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;",
        "server_driven",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;",
        "tipping",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
        "forms",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
        "handoff",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;",
        "passthrough",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.analytics.AnalyticsDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.application.ApplicationDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.deviceconfig.DeviceConfigDomain#ADAPTER"
        jsonName = "deviceConfig"
        oneofName = "domain"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.handoff.HandoffDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.httpserver.HttpServerDomain#ADAPTER"
        jsonName = "httpServer"
        oneofName = "domain"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain#ADAPTER"
        jsonName = "paymentCollection"
        oneofName = "domain"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.rpcserver.RpcServerDomain#ADAPTER"
        jsonName = "rpcServer"
        oneofName = "domain"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.serverdriven.ServerDrivenDomain#ADAPTER"
        jsonName = "serverDriven"
        oneofName = "domain"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.TippingDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.UpdaterAnalyticsDomain#ADAPTER"
        jsonName = "updaterAnalytics"
        oneofName = "domain"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updaterlaunchapp.UpdaterLaunchAppDomain#ADAPTER"
        jsonName = "updaterLaunchApp"
        oneofName = "domain"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain#ADAPTER"
        oneofName = "domain"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion;

    .line 791
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 790
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 794
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 790
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    const v19, 0x3ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v20}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p18

    const-string v6, "unknownFields"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {v0, v6, v5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 90
    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 98
    iput-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 107
    iput-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 115
    iput-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    move-object/from16 v5, p5

    .line 124
    iput-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    move-object/from16 v6, p6

    .line 132
    iput-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    move-object/from16 v7, p7

    .line 141
    iput-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    move-object/from16 v8, p8

    .line 150
    iput-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    move-object/from16 v9, p9

    .line 159
    iput-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    move-object/from16 v10, p10

    .line 167
    iput-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    move-object/from16 v11, p11

    .line 175
    iput-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    move-object/from16 v12, p12

    .line 183
    iput-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    move-object/from16 v13, p13

    .line 192
    iput-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    move-object/from16 v14, p14

    .line 201
    iput-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    move-object/from16 v15, p15

    .line 209
    iput-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    move-object/from16 v5, p16

    .line 217
    iput-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    move-object/from16 v5, p17

    .line 225
    iput-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    .line 236
    filled-new-array/range {p5 .. p17}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At most one of bbpos, payment_collection, application, http_server, updates, rpc_server, device_config, updater_analytics, analytics, connectivity, offline, updater_launch_app, server_driven, tipping, forms, handoff, passthrough may be non-null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    .line 233
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p19, v0

    goto :goto_11

    :cond_11
    move-object/from16 p19, p18

    :goto_11
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    .line 89
    invoke-direct/range {p1 .. p19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 338
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 339
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 340
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 341
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 342
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 343
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 344
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 345
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 346
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 347
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 348
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 349
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 350
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 351
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 352
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p19, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 353
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p19, v16

    if-eqz v16, :cond_11

    .line 354
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p19, v16

    goto :goto_11

    :cond_11
    move-object/from16 p19, p18

    :goto_11
    move-object/from16 p17, p2

    move-object/from16 p18, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 336
    invoke-virtual/range {p1 .. p19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 20

    const-string v0, "unknownFields"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 274
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 275
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 276
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 277
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 278
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 279
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 280
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 281
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 282
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 283
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 284
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 289
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->hashCode:I

    if-nez v0, :cond_11

    .line 291
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 292
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 293
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 294
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 295
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 296
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 297
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 298
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 299
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 300
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 301
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 302
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 303
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 305
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 306
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 307
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 308
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->hashCode()I

    move-result v2

    :cond_10
    add-int/2addr v0, v2

    .line 309
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->hashCode:I

    :cond_11
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 2

    .line 242
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 245
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    .line 260
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 316
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_collection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http_server="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updates="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rpc_server="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_config="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updater_analytics="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "analytics="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectivity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updater_launch_app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server_driven="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "forms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handoff="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "passthrough="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_10
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "HealthMetric{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
