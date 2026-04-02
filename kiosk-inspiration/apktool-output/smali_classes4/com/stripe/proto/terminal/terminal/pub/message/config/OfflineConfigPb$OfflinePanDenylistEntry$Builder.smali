.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;",
        "()V",
        "cardholder_name",
        "",
        "first_six",
        "last_four",
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
.field public cardholder_name:Ljava/lang/String;

.field public first_six:Ljava/lang/String;

.field public last_four:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1745
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1747
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->cardholder_name:Ljava/lang/String;

    .line 1750
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->first_six:Ljava/lang/String;

    .line 1753
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->last_four:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1745
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;
    .locals 5

    .line 1770
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;

    .line 1771
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->cardholder_name:Ljava/lang/String;

    .line 1772
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->first_six:Ljava/lang/String;

    .line 1773
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->last_four:Ljava/lang/String;

    .line 1774
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 1770
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cardholder_name(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;
    .locals 1

    const-string v0, "cardholder_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1756
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->cardholder_name:Ljava/lang/String;

    return-object p0
.end method

.method public final first_six(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;
    .locals 1

    const-string v0, "first_six"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->first_six:Ljava/lang/String;

    return-object p0
.end method

.method public final last_four(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;
    .locals 1

    const-string v0, "last_four"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1766
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry$Builder;->last_four:Ljava/lang/String;

    return-object p0
.end method
