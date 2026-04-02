.class public final Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CellPinning.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning$CellPinningBypass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/CellPinning$CellPinningBypass;",
        "Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/CellPinning$CellPinningBypass;",
        "()V",
        "reason",
        "Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;",
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
.field public reason:Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;->build()Lcom/stripe/ext/CellPinning$CellPinningBypass;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/CellPinning$CellPinningBypass;
    .locals 3

    .line 677
    new-instance v0, Lcom/stripe/ext/CellPinning$CellPinningBypass;

    .line 678
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;->reason:Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;

    .line 679
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 677
    invoke-direct {v0, v1, v2}, Lcom/stripe/ext/CellPinning$CellPinningBypass;-><init>(Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;Lokio/ByteString;)V

    return-object v0
.end method

.method public final reason(Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;)Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;->reason:Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;

    return-object p0
.end method
