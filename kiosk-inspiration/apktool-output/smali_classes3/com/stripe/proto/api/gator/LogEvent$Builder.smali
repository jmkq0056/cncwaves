.class public final Lcom/stripe/proto/api/gator/LogEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LogEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/gator/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "Lcom/stripe/proto/api/gator/LogEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/gator/LogEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "()V",
        "instant",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "tags",
        "",
        "",
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
.field public instant:Lcom/stripe/proto/model/common/InstantPb;

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 97
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/gator/LogEvent$Builder;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/LogEvent$Builder;->build()Lcom/stripe/proto/api/gator/LogEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/gator/LogEvent;
    .locals 4

    .line 109
    new-instance v0, Lcom/stripe/proto/api/gator/LogEvent;

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/api/gator/LogEvent$Builder;->instant:Lcom/stripe/proto/model/common/InstantPb;

    .line 111
    iget-object v2, p0, Lcom/stripe/proto/api/gator/LogEvent$Builder;->tags:Ljava/util/Map;

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/LogEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 109
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/gator/LogEvent;-><init>(Lcom/stripe/proto/model/common/InstantPb;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final instant(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/api/gator/LogEvent$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/stripe/proto/api/gator/LogEvent$Builder;->instant:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/api/gator/LogEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/gator/LogEvent$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/api/gator/LogEvent$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method
