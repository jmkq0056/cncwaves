.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u001c\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e0\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nH\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e0\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "()V",
        "account_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "aid_to_offline_pin_response_auth_code",
        "",
        "",
        "enabled",
        "",
        "forwarding_jitter_ms",
        "",
        "max_transaction_amount_by_currency",
        "",
        "reader_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "supports_quick_chip",
        "supports_sca",
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
.field public account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

.field public aid_to_offline_pin_response_auth_code:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public forwarding_jitter_ms:I

.field public max_transaction_amount_by_currency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

.field public supports_quick_chip:Z

.field public supports_sca:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 217
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    .line 232
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final account_offline_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    return-object p0
.end method

.method public final aid_to_offline_pin_response_auth_code(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "aid_to_offline_pin_response_auth_code is deprecated"
    .end annotation

    const-string v0, "aid_to_offline_pin_response_auth_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
    .locals 10

    .line 298
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 299
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->enabled:Z

    .line 300
    iget v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->forwarding_jitter_ms:I

    .line 301
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    .line 302
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    .line 303
    iget-object v5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 304
    iget-boolean v6, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->supports_sca:Z

    .line 305
    iget-boolean v7, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->supports_quick_chip:Z

    .line 306
    iget-object v8, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    .line 307
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 298
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;-><init>(ZILjava/util/Map;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ZZLjava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enabled is deprecated"
    .end annotation

    .line 239
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->enabled:Z

    return-object p0
.end method

.method public final forwarding_jitter_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "forwarding_jitter_ms is deprecated"
    .end annotation

    .line 248
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->forwarding_jitter_ms:I

    return-object p0
.end method

.method public final max_transaction_amount_by_currency(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "max_transaction_amount_by_currency is deprecated"
    .end annotation

    const-string v0, "max_transaction_amount_by_currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    return-object p0
.end method

.method public final reader_offline_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    return-object p0
.end method

.method public final supports_quick_chip(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "supports_quick_chip is deprecated"
    .end annotation

    .line 285
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->supports_quick_chip:Z

    return-object p0
.end method

.method public final supports_sca(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "supports_sca is deprecated"
    .end annotation

    .line 276
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$Builder;->supports_sca:Z

    return-object p0
.end method
