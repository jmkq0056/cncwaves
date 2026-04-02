.class public final Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProxyEventPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/ProxyEventPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "()V",
        "event",
        "Lcom/stripe/proto/api/gator/EventResultPb;",
        "origin_id",
        "",
        "origin_ip",
        "origin_role",
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
.field public event:Lcom/stripe/proto/api/gator/EventResultPb;

.field public origin_id:Ljava/lang/String;

.field public origin_ip:Ljava/lang/String;

.field public origin_role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_role:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_id:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->build()Lcom/stripe/proto/api/gator/ProxyEventPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/gator/ProxyEventPb;
    .locals 6

    .line 153
    new-instance v0, Lcom/stripe/proto/api/gator/ProxyEventPb;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_role:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_id:Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_ip:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->event:Lcom/stripe/proto/api/gator/EventResultPb;

    .line 158
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/gator/ProxyEventPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/EventResultPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final event(Lcom/stripe/proto/api/gator/EventResultPb;)Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->event:Lcom/stripe/proto/api/gator/EventResultPb;

    return-object p0
.end method

.method public final origin_id(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;
    .locals 1

    const-string v0, "origin_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_id:Ljava/lang/String;

    return-object p0
.end method

.method public final origin_ip(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;
    .locals 1

    const-string v0, "origin_ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_ip:Ljava/lang/String;

    return-object p0
.end method

.method public final origin_role(Ljava/lang/String;)Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;
    .locals 1

    const-string v0, "origin_role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/api/gator/ProxyEventPb$Builder;->origin_role:Ljava/lang/String;

    return-object p0
.end method
