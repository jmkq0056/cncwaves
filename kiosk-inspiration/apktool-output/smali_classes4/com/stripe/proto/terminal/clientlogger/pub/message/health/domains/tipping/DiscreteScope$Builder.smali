.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DiscreteScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;",
        "()V",
        "currency_mismatch_tipping_config",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "quit_custom_tipping",
        "reselect_tipping",
        "skip_tipping",
        "tip_eligible",
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
.field public currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;
    .locals 7

    .line 278
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;

    .line 279
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 280
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 281
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 282
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 283
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 284
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 278
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    return-object v0
.end method

.method public final currency_mismatch_tipping_config(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final quit_custom_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final reselect_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 240
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final skip_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final tip_eligible(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->tip_eligible:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method
