.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdatesFlowScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;",
        "()V",
        "check",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "download",
        "install",
        "prompt_for_update_now",
        "wait_battery_sufficient",
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
.field public check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;
    .locals 7

    .line 344
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;

    .line 345
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 346
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 347
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 348
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 349
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 350
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 344
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final check(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final download(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 268
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 269
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final install(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final prompt_for_update_now(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final wait_battery_sufficient(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->wait_battery_sufficient:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->check:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesFlowScope$Builder;->prompt_for_update_now:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method
