.class public final Lcom/stripe/core/aidlrpc/AidlServers$Reader;
.super Ljava/lang/Object;
.source "AidlServers.kt"

# interfaces
.implements Lcom/stripe/core/aidlrpc/AidlServers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/aidlrpc/AidlServers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0006H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/AidlServers$Reader;",
        "Lcom/stripe/core/aidlrpc/AidlServers;",
        "appPackageName",
        "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;",
        "(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)V",
        "className",
        "",
        "getClassName",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "aidlrpc_release"
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
.field private final appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)V
    .locals 1

    const-string v0, "appPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    .line 16
    const-string v0, "com.stripe.reader.services.AidlServerService"

    iput-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->className:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->packageName:Ljava/lang/String;

    return-void
.end method

.method private final component1()Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/core/aidlrpc/AidlServers$Reader;Lcom/stripe/core/aidlrpc/AppPackageName$Reader;ILjava/lang/Object;)Lcom/stripe/core/aidlrpc/AidlServers$Reader;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->copy(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)Lcom/stripe/core/aidlrpc/AidlServers$Reader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)Lcom/stripe/core/aidlrpc/AidlServers$Reader;
    .locals 1

    const-string v0, "appPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/aidlrpc/AidlServers$Reader;-><init>(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/aidlrpc/AidlServers$Reader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/aidlrpc/AidlServers$Reader;

    iget-object v1, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    iget-object p1, p1, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    invoke-virtual {v0}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reader(appPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;->appPackageName:Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
