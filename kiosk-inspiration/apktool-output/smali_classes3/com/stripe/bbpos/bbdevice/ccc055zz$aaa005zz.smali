.class Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc055zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aaa005zz"
.end annotation


# instance fields
.field aaa000:I

.field aaa001:I

.field aaa002:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;->aaa000:I

    .line 4
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;->aaa001:I

    .line 5
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;->aaa002:[B

    return-void
.end method

.method protected static aaa000([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 5
    aget-byte v3, p0, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    aget-byte v4, p0, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v3

    .line 17
    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 19
    new-instance v5, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;

    invoke-direct {v5, v3, v4, v1}, Lcom/stripe/bbpos/bbdevice/ccc055zz$aaa005zz;-><init>(II[B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
