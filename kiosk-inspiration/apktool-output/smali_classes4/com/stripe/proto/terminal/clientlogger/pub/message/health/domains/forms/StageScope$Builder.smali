.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StageScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
        "()V",
        "customer_input_duration",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "end_to_end_duration",
        "end_to_end_result_by_integration",
        "interstitial_screen_duration",
        "network_call_duration",
        "render_duration",
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
.field public customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;
    .locals 8

    .line 363
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;

    .line 364
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 365
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 366
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 367
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 368
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 369
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 370
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 363
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final customer_input_duration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 279
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final end_to_end_duration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 318
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 319
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 320
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 321
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final end_to_end_result_by_integration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 338
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 342
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final interstitial_screen_duration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 356
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 358
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 359
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final network_call_duration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 300
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final render_duration(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->render_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->customer_input_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->network_call_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->interstitial_screen_duration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method
