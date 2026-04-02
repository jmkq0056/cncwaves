.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HealthMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0008\u0010&\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010%R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "()V",
        "analytics",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;",
        "application",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;",
        "bbpos",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "connectivity",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "device_config",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;",
        "forms",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
        "handoff",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;",
        "http_server",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;",
        "offline",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "passthrough",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "payment_collection",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;",
        "rpc_server",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;",
        "server_driven",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;",
        "tipping",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;",
        "updater_analytics",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;",
        "updater_launch_app",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;",
        "updates",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "build",
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


# instance fields
.field public analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

.field public application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

.field public bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

.field public connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

.field public device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

.field public forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

.field public handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

.field public http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

.field public offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

.field public passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

.field public payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

.field public rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

.field public server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

.field public tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

.field public updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

.field public updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

.field public updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final analytics(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    const/4 p1, 0x0

    .line 579
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 583
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 584
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 585
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 586
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 587
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 588
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 589
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 590
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 591
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 592
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 593
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 594
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final application(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 454
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 456
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 457
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 458
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 459
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 461
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 462
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 463
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 464
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 465
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 466
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 467
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 468
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final bbpos(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const/4 p1, 0x0

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 413
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 414
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 415
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 416
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 417
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 418
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 419
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 420
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 421
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 422
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 423
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 424
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 425
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 21

    move-object/from16 v0, p0

    .line 766
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 767
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 768
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 769
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 770
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 771
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 772
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 773
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 774
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 775
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 776
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 777
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 778
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 779
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 780
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    move-object/from16 v16, v1

    .line 781
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    move-object/from16 v17, v1

    .line 782
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    move-object/from16 v18, v1

    .line 783
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    .line 784
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v19

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    .line 766
    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final connectivity(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    const/4 p1, 0x0

    .line 600
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 601
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 602
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 603
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 605
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 607
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 608
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 609
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 610
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 611
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 612
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 613
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 615
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final device_config(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    const/4 p1, 0x0

    .line 537
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 538
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 539
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 540
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 541
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 542
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 543
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 544
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 545
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 546
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 547
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 548
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 550
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final forms(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    const/4 p1, 0x0

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 708
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 709
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 710
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 718
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 720
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final handoff(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    const/4 p1, 0x0

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 729
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 731
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 732
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 734
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 736
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 737
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 738
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 739
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 740
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 741
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final http_server(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    const/4 p1, 0x0

    .line 474
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 475
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 477
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 478
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 479
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 482
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 483
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 485
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 486
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 487
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 488
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 489
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final offline(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 623
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 625
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 626
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 629
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 631
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 632
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 634
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 635
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 636
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final passthrough(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    const/4 p1, 0x0

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 752
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 753
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 754
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 761
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 762
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    return-object p0
.end method

.method public final payment_collection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    const/4 p1, 0x0

    .line 432
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 433
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 437
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 438
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 440
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 441
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 442
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 443
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 444
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 445
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 446
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 447
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final rpc_server(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 517
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 518
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 519
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 520
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 521
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 522
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 523
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 524
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 530
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 531
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final server_driven(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    const/4 p1, 0x0

    .line 663
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 664
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 665
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 666
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 667
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 668
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 669
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    const/4 p1, 0x0

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 688
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 689
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 690
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 692
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 696
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 698
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 699
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final updater_analytics(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    const/4 p1, 0x0

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 560
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 561
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 562
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 563
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 564
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 565
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 566
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 567
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 568
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 569
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 570
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 571
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 572
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final updater_launch_app(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    const/4 p1, 0x0

    .line 642
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 644
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 645
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 652
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 653
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 657
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method

.method public final updates(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    const/4 p1, 0x0

    .line 495
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 496
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 497
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 498
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 499
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 500
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 501
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 502
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 503
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 504
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 505
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 506
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 508
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 509
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 510
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    return-object p0
.end method
