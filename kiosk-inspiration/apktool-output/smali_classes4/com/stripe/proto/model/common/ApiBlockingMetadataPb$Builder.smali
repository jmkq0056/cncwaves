.class public final Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiBlockingMetadataPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;",
        "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;",
        "()V",
        "is_blocked",
        "",
        "reason",
        "",
        "time",
        "Lcom/stripe/proto/model/common/InstantPb;",
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
.field public is_blocked:Z

.field public reason:Ljava/lang/String;

.field public time:Lcom/stripe/proto/model/common/InstantPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->build()Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;
    .locals 5

    .line 129
    new-instance v0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;

    .line 130
    iget-boolean v1, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->is_blocked:Z

    .line 131
    iget-object v2, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->reason:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->time:Lcom/stripe/proto/model/common/InstantPb;

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 129
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb;-><init>(ZLjava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final is_blocked(Z)Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->is_blocked:Z

    return-object p0
.end method

.method public final reason(Ljava/lang/String;)Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final time(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/model/common/ApiBlockingMetadataPb$Builder;->time:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method
