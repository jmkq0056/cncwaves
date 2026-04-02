.class public final Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;
.super Ljava/lang/Object;
.source "ListLocationsParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;",
        "",
        "()V",
        "endingBefore",
        "",
        "getEndingBefore",
        "()Ljava/lang/String;",
        "setEndingBefore",
        "(Ljava/lang/String;)V",
        "limit",
        "",
        "getLimit",
        "()Ljava/lang/Integer;",
        "setLimit",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "startingAfter",
        "getStartingAfter",
        "setStartingAfter",
        "build",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "public_release"
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
.field private endingBefore:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private startingAfter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;
    .locals 4

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->limit:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->endingBefore:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->startingAfter:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEndingBefore()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->endingBefore:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartingAfter()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->startingAfter:Ljava/lang/String;

    return-object v0
.end method

.method public final setEndingBefore(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->endingBefore:Ljava/lang/String;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartingAfter(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;->startingAfter:Ljava/lang/String;

    return-void
.end method
