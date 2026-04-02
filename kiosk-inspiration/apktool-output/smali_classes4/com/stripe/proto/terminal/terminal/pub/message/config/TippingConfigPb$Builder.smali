.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TippingConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "()V",
        "localized_tipping_config",
        "",
        "",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
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
.field public localized_tipping_config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 87
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;->localized_tipping_config:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .locals 3

    .line 98
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;->localized_tipping_config:Ljava/util/Map;

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 98
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;-><init>(Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final localized_tipping_config(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "localized_tipping_config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;->localized_tipping_config:Ljava/util/Map;

    return-object p0
.end method
