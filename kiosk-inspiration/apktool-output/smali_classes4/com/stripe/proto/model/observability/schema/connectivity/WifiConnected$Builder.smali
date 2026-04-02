.class public final Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WifiConnected.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;",
        "()V",
        "custom_dns",
        "",
        "custom_ip_address",
        "custom_router",
        "custom_subnet_mask",
        "frequency",
        "",
        "num_signal_strength_levels",
        "security_type",
        "signal_strength",
        "ssid",
        "build",
        "internal_release"
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
.field public custom_dns:Ljava/lang/String;

.field public custom_ip_address:Ljava/lang/String;

.field public custom_router:Ljava/lang/String;

.field public custom_subnet_mask:Ljava/lang/String;

.field public frequency:I

.field public num_signal_strength_levels:I

.field public security_type:Ljava/lang/String;

.field public signal_strength:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->ssid:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->security_type:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_ip_address:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_subnet_mask:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_router:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_dns:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->build()Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;
    .locals 11

    .line 261
    new-instance v0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->ssid:Ljava/lang/String;

    .line 263
    iget v2, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->signal_strength:I

    .line 264
    iget v3, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->num_signal_strength_levels:I

    .line 265
    iget v4, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->frequency:I

    .line 266
    iget-object v5, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->security_type:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_ip_address:Ljava/lang/String;

    .line 268
    iget-object v7, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_subnet_mask:Ljava/lang/String;

    .line 269
    iget-object v8, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_router:Ljava/lang/String;

    .line 270
    iget-object v9, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_dns:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 261
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_dns(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "custom_dns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_dns:Ljava/lang/String;

    return-object p0
.end method

.method public final custom_ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "custom_ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final custom_router(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "custom_router"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_router:Ljava/lang/String;

    return-object p0
.end method

.method public final custom_subnet_mask(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "custom_subnet_mask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->custom_subnet_mask:Ljava/lang/String;

    return-object p0
.end method

.method public final frequency(I)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 0

    .line 232
    iput p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->frequency:I

    return-object p0
.end method

.method public final num_signal_strength_levels(I)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 0

    .line 227
    iput p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->num_signal_strength_levels:I

    return-object p0
.end method

.method public final security_type(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "security_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->security_type:Ljava/lang/String;

    return-object p0
.end method

.method public final signal_strength(I)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 0

    .line 222
    iput p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->signal_strength:I

    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;->ssid:Ljava/lang/String;

    return-object p0
.end method
