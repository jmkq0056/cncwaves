.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "()V",
        "default_value",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;",
        "description",
        "",
        "title",
        "value_",
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
.field public default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

.field public description:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1966
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1968
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    .line 1971
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    .line 1974
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 1977
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;->VALUE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1966
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;
    .locals 6

    .line 1999
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;

    .line 2000
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    .line 2001
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    .line 2002
    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2003
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    .line 2004
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 1999
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V

    return-object v0
.end method

.method public final default_value(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
    .locals 1

    const-string v0, "default_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1990
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->default_value:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1980
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final value_(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;
    .locals 1

    const-string v0, "value_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;->value_:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;

    return-object p0
.end method
