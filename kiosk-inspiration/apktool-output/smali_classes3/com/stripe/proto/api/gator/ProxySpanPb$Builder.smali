.class public final Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProxySpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/ProxySpanPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "()V",
        "client_summary",
        "Lcom/stripe/proto/api/gator/ClientSummaryPb;",
        "origin_id",
        "",
        "origin_ip",
        "origin_role",
        "trace",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb;",
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
.field public client_summary:Lcom/stripe/proto/api/gator/ClientSummaryPb;

.field public origin_id:Ljava/lang/String;

.field public origin_ip:Ljava/lang/String;

.field public origin_role:Ljava/lang/String;

.field public trace:Lcom/stripe/proto/api/gator/ReportedSpanPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_role:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_id:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->build()Lcom/stripe/proto/api/gator/ProxySpanPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/gator/ProxySpanPb;
    .locals 7

    .line 181
    new-instance v0, Lcom/stripe/proto/api/gator/ProxySpanPb;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_role:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_id:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_ip:Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->trace:Lcom/stripe/proto/api/gator/ReportedSpanPb;

    .line 186
    iget-object v5, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->client_summary:Lcom/stripe/proto/api/gator/ClientSummaryPb;

    .line 187
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/gator/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/ReportedSpanPb;Lcom/stripe/proto/api/gator/ClientSummaryPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_summary(Lcom/stripe/proto/api/gator/ClientSummaryPb;)Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->client_summary:Lcom/stripe/proto/api/gator/ClientSummaryPb;

    return-object p0
.end method

.method public final origin_id(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
    .locals 1

    const-string v0, "origin_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_id:Ljava/lang/String;

    return-object p0
.end method

.method public final origin_ip(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
    .locals 1

    const-string v0, "origin_ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_ip:Ljava/lang/String;

    return-object p0
.end method

.method public final origin_role(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
    .locals 1

    const-string v0, "origin_role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->origin_role:Ljava/lang/String;

    return-object p0
.end method

.method public final trace(Lcom/stripe/proto/api/gator/ReportedSpanPb;)Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxySpanPb$Builder;->trace:Lcom/stripe/proto/api/gator/ReportedSpanPb;

    return-object p0
.end method
