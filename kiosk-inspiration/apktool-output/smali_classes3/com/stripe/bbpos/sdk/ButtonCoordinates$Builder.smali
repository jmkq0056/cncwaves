.class public final Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ButtonCoordinates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/ButtonCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "()V",
        "bottom",
        "",
        "left",
        "right",
        "top",
        "build",
        "sdk-protos_release"
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
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bottom(I)Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->bottom:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->build()Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .locals 6

    .line 145
    new-instance v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 146
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->top:I

    .line 147
    iget v2, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->bottom:I

    .line 148
    iget v3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->left:I

    .line 149
    iget v4, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->right:I

    .line 150
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;-><init>(IIIILokio/ByteString;)V

    return-object v0
.end method

.method public final left(I)Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
    .locals 0

    .line 136
    iput p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->left:I

    return-object p0
.end method

.method public final right(I)Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
    .locals 0

    .line 141
    iput p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->right:I

    return-object p0
.end method

.method public final top(I)Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
    .locals 0

    .line 126
    iput p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->top:I

    return-object p0
.end method
