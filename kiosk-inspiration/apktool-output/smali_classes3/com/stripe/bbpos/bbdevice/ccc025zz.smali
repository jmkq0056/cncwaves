.class final Lcom/stripe/bbpos/bbdevice/ccc025zz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static aaa000([B)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2
    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    .line 5
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc047zz;->aaa000([B)V

    return-void
.end method
