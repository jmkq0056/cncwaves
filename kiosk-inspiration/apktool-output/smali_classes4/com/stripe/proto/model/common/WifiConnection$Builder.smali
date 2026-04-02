.class public final Lcom/stripe/proto/model/common/WifiConnection$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WifiConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/WifiConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/WifiConnection;",
        "Lcom/stripe/proto/model/common/WifiConnection$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/WifiConnection$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/WifiConnection;",
        "()V",
        "frequency",
        "",
        "ip_address",
        "",
        "signal_strength_percentage",
        "ssid",
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
.field public frequency:I

.field public ip_address:Ljava/lang/String;

.field public signal_strength_percentage:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ip_address:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ssid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/WifiConnection$Builder;->build()Lcom/stripe/proto/model/common/WifiConnection;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/WifiConnection;
    .locals 6

    .line 156
    new-instance v0, Lcom/stripe/proto/model/common/WifiConnection;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ip_address:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ssid:Ljava/lang/String;

    .line 159
    iget v3, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->frequency:I

    .line 160
    iget v4, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->signal_strength_percentage:I

    .line 161
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/WifiConnection$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/common/WifiConnection;-><init>(Ljava/lang/String;Ljava/lang/String;IILokio/ByteString;)V

    return-object v0
.end method

.method public final frequency(I)Lcom/stripe/proto/model/common/WifiConnection$Builder;
    .locals 0

    .line 143
    iput p1, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->frequency:I

    return-object p0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/common/WifiConnection$Builder;
    .locals 1

    const-string v0, "ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final signal_strength_percentage(I)Lcom/stripe/proto/model/common/WifiConnection$Builder;
    .locals 0

    .line 152
    iput p1, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->signal_strength_percentage:I

    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lcom/stripe/proto/model/common/WifiConnection$Builder;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/model/common/WifiConnection$Builder;->ssid:Ljava/lang/String;

    return-object p0
.end method
