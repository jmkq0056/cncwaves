.class public final Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsUxConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;",
        "()V",
        "xBias",
        "",
        "yBias",
        "build",
        "proto_release"
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
.field public xBias:F

.field public yBias:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->build()Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;
    .locals 4

    .line 343
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    .line 344
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->xBias:F

    .line 345
    iget v2, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->yBias:F

    .line 346
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 343
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;-><init>(FFLokio/ByteString;)V

    return-object v0
.end method

.method public final xBias(F)Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;
    .locals 0

    .line 334
    iput p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->xBias:F

    return-object p0
.end method

.method public final yBias(F)Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;
    .locals 0

    .line 339
    iput p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->yBias:F

    return-object p0
.end method
