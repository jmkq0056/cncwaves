.class public final Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DontRedactMeContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/test/DontRedactMeContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/test/DontRedactMeContainer;",
        "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00050\u0007J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\n0\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rJ\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/test/DontRedactMeContainer;",
        "()V",
        "dont_redact_me",
        "Lcom/stripe/proto/model/test/DontRedactMe;",
        "map_dont_redact_mes",
        "",
        "",
        "map_redact_mes",
        "Lcom/stripe/proto/model/test/RedactMe;",
        "redact_me",
        "repeated_dont_redact_mes",
        "",
        "repeated_redact_mes",
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
.field public dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

.field public map_dont_redact_mes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/DontRedactMe;",
            ">;"
        }
    .end annotation
.end field

.field public map_redact_mes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/RedactMe;",
            ">;"
        }
    .end annotation
.end field

.field public redact_me:Lcom/stripe/proto/model/test/RedactMe;

.field public repeated_dont_redact_mes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/DontRedactMe;",
            ">;"
        }
    .end annotation
.end field

.field public repeated_redact_mes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/RedactMe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 167
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_redact_mes:Ljava/util/List;

    .line 170
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_redact_mes:Ljava/util/Map;

    .line 176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_dont_redact_mes:Ljava/util/List;

    .line 179
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_dont_redact_mes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->build()Lcom/stripe/proto/model/test/DontRedactMeContainer;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/test/DontRedactMeContainer;
    .locals 8

    .line 213
    new-instance v0, Lcom/stripe/proto/model/test/DontRedactMeContainer;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    .line 215
    iget-object v2, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_redact_mes:Ljava/util/List;

    .line 216
    iget-object v3, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_redact_mes:Ljava/util/Map;

    .line 217
    iget-object v4, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    .line 218
    iget-object v5, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_dont_redact_mes:Ljava/util/List;

    .line 219
    iget-object v6, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_dont_redact_mes:Ljava/util/Map;

    .line 220
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 213
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/test/DontRedactMeContainer;-><init>(Lcom/stripe/proto/model/test/RedactMe;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/test/DontRedactMe;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final dont_redact_me(Lcom/stripe/proto/model/test/DontRedactMe;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->dont_redact_me:Lcom/stripe/proto/model/test/DontRedactMe;

    return-object p0
.end method

.method public final map_dont_redact_mes(Ljava/util/Map;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/DontRedactMe;",
            ">;)",
            "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;"
        }
    .end annotation

    const-string v0, "map_dont_redact_mes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_dont_redact_mes:Ljava/util/Map;

    return-object p0
.end method

.method public final map_redact_mes(Ljava/util/Map;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/RedactMe;",
            ">;)",
            "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;"
        }
    .end annotation

    const-string v0, "map_redact_mes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->map_redact_mes:Ljava/util/Map;

    return-object p0
.end method

.method public final redact_me(Lcom/stripe/proto/model/test/RedactMe;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->redact_me:Lcom/stripe/proto/model/test/RedactMe;

    return-object p0
.end method

.method public final repeated_dont_redact_mes(Ljava/util/List;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/DontRedactMe;",
            ">;)",
            "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;"
        }
    .end annotation

    const-string v0, "repeated_dont_redact_mes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_dont_redact_mes:Ljava/util/List;

    return-object p0
.end method

.method public final repeated_redact_mes(Ljava/util/List;)Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/RedactMe;",
            ">;)",
            "Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;"
        }
    .end annotation

    const-string v0, "repeated_redact_mes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/model/test/DontRedactMeContainer$Builder;->repeated_redact_mes:Ljava/util/List;

    return-object p0
.end method
