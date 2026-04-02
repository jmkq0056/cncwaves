.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiWifiConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;",
        "()V",
        "ca_certificate_file",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;",
        "password",
        "",
        "ssid",
        "username",
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
.field public ca_certificate_file:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 534
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->ssid:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->username:Ljava/lang/String;

    .line 540
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;
    .locals 6

    .line 565
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    .line 566
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->ssid:Ljava/lang/String;

    .line 567
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->username:Ljava/lang/String;

    .line 568
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->password:Ljava/lang/String;

    .line 569
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->ca_certificate_file:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;

    .line 570
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;Lokio/ByteString;)V

    return-object v0
.end method

.method public final ca_certificate_file(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->ca_certificate_file:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;

    return-object p0
.end method

.method public final password(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;->username:Ljava/lang/String;

    return-object p0
.end method
