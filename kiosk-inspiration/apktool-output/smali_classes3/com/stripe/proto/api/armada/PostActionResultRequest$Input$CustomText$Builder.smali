.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
        "()V",
        "description",
        "",
        "skip_button",
        "submit_button",
        "title",
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
.field public description:Ljava/lang/String;

.field public skip_button:Ljava/lang/String;

.field public submit_button:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2524
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 2526
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->title:Ljava/lang/String;

    .line 2529
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->description:Ljava/lang/String;

    .line 2532
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->submit_button:Ljava/lang/String;

    .line 2535
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->skip_button:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2524
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;
    .locals 6

    .line 2557
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    .line 2558
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->title:Ljava/lang/String;

    .line 2559
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->description:Ljava/lang/String;

    .line 2560
    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->submit_button:Ljava/lang/String;

    .line 2561
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->skip_button:Ljava/lang/String;

    .line 2562
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 2557
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final description(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2543
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final skip_button(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;
    .locals 1

    const-string v0, "skip_button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2553
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->skip_button:Ljava/lang/String;

    return-object p0
.end method

.method public final submit_button(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;
    .locals 1

    const-string v0, "submit_button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2548
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->submit_button:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2538
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
