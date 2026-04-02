.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "()V",
        "enabled",
        "",
        "mobile_wallet_on_setup_intents_enabled",
        "setup_intents_enabled",
        "build",
        "terminal_release"
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
.field public enabled:Z

.field public mobile_wallet_on_setup_intents_enabled:Z

.field public setup_intents_enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;
    .locals 5

    .line 670
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    .line 671
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->enabled:Z

    .line 672
    iget-boolean v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->setup_intents_enabled:Z

    .line 673
    iget-boolean v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->mobile_wallet_on_setup_intents_enabled:Z

    .line 674
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 670
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;-><init>(ZZZLokio/ByteString;)V

    return-object v0
.end method

.method public final enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;
    .locals 0

    .line 651
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->enabled:Z

    return-object p0
.end method

.method public final mobile_wallet_on_setup_intents_enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "mobile_wallet_on_setup_intents_enabled is deprecated"
    .end annotation

    .line 666
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->mobile_wallet_on_setup_intents_enabled:Z

    return-object p0
.end method

.method public final setup_intents_enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "setup_intents_enabled is deprecated"
    .end annotation

    .line 660
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb$Builder;->setup_intents_enabled:Z

    return-object p0
.end method
