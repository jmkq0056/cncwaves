.class public interface abstract Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
.super Ljava/lang/Object;
.source "ReaderSupportResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;,
        Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0002\t\nR\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008\u0082\u0001\u0002\u000b\u000c\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "",
        "error",
        "",
        "getError",
        "()Ljava/lang/Throwable;",
        "isSupported",
        "",
        "()Z",
        "NotSupported",
        "Supported",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;",
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


# virtual methods
.method public abstract getError()Ljava/lang/Throwable;
.end method

.method public isSupported()Z
    .locals 1

    .line 11
    invoke-interface {p0}, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
