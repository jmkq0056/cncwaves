.class public final Lcom/stripe/ext/CellPinning$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CellPinning.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/CellPinning;",
        "Lcom/stripe/ext/CellPinning$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/CellPinning;",
        "()V",
        "bypass",
        "Lcom/stripe/ext/CellPinning$CellPinningBypass;",
        "regional_resiliency_check",
        "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;",
        "spec",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
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
.field public bypass:Lcom/stripe/ext/CellPinning$CellPinningBypass;

.field public regional_resiliency_check:Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;

.field public spec:Lcom/stripe/ext/CellPinning$CellPinningSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$Builder;->build()Lcom/stripe/ext/CellPinning;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/CellPinning;
    .locals 5

    .line 142
    new-instance v0, Lcom/stripe/ext/CellPinning;

    .line 143
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$Builder;->spec:Lcom/stripe/ext/CellPinning$CellPinningSpec;

    .line 144
    iget-object v2, p0, Lcom/stripe/ext/CellPinning$Builder;->bypass:Lcom/stripe/ext/CellPinning$CellPinningBypass;

    .line 145
    iget-object v3, p0, Lcom/stripe/ext/CellPinning$Builder;->regional_resiliency_check:Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;

    .line 146
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 142
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/ext/CellPinning;-><init>(Lcom/stripe/ext/CellPinning$CellPinningSpec;Lcom/stripe/ext/CellPinning$CellPinningBypass;Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bypass(Lcom/stripe/ext/CellPinning$CellPinningBypass;)Lcom/stripe/ext/CellPinning$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$Builder;->bypass:Lcom/stripe/ext/CellPinning$CellPinningBypass;

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$Builder;->spec:Lcom/stripe/ext/CellPinning$CellPinningSpec;

    return-object p0
.end method

.method public final regional_resiliency_check(Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;)Lcom/stripe/ext/CellPinning$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$Builder;->regional_resiliency_check:Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;

    return-object p0
.end method

.method public final spec(Lcom/stripe/ext/CellPinning$CellPinningSpec;)Lcom/stripe/ext/CellPinning$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$Builder;->spec:Lcom/stripe/ext/CellPinning$CellPinningSpec;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$Builder;->bypass:Lcom/stripe/ext/CellPinning$CellPinningBypass;

    return-object p0
.end method
