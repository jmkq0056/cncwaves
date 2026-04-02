.class public final Lio/ktor/http/CacheControl$NoStore;
.super Lio/ktor/http/CacheControl;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoStore"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lio/ktor/http/CacheControl$NoStore;",
        "Lio/ktor/http/CacheControl;",
        "visibility",
        "Lio/ktor/http/CacheControl$Visibility;",
        "(Lio/ktor/http/CacheControl$Visibility;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lio/ktor/http/CacheControl$Visibility;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lio/ktor/http/CacheControl;-><init>(Lio/ktor/http/CacheControl$Visibility;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 59
    instance-of v0, p1, Lio/ktor/http/CacheControl$NoStore;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/http/CacheControl$NoStore;

    invoke-virtual {p1}, Lio/ktor/http/CacheControl$NoStore;->getVisibility()Lio/ktor/http/CacheControl$Visibility;

    move-result-object p1

    invoke-virtual {p0}, Lio/ktor/http/CacheControl$NoStore;->getVisibility()Lio/ktor/http/CacheControl$Visibility;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/ktor/http/CacheControl$NoStore;->getVisibility()Lio/ktor/http/CacheControl$Visibility;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lio/ktor/http/CacheControl$NoStore;->getVisibility()Lio/ktor/http/CacheControl$Visibility;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "no-store"

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no-store, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/ktor/http/CacheControl$NoStore;->getVisibility()Lio/ktor/http/CacheControl$Visibility;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/CacheControl$Visibility;->getHeaderValue$ktor_http()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
