.class public final Lcom/stripe/core/aidlrpc/AidlServers$Updater;
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
    name = "Updater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0004H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/AidlServers$Updater;",
        "Lcom/stripe/core/aidlrpc/AidlServers;",
        "()V",
        "className",
        "",
        "getClassName",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/core/aidlrpc/AidlServers$Updater;

.field private static final className:Ljava/lang/String;

.field private static final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;

    invoke-direct {v0}, Lcom/stripe/core/aidlrpc/AidlServers$Updater;-><init>()V

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;->INSTANCE:Lcom/stripe/core/aidlrpc/AidlServers$Updater;

    .line 22
    const-string v0, "com.stripe.updater.service.UpdaterService"

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;->className:Ljava/lang/String;

    .line 24
    const-string v0, "com.stripe.updater"

    sput-object v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;->packageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/aidlrpc/AidlServers$Updater;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/stripe/core/aidlrpc/AidlServers$Updater;

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/stripe/core/aidlrpc/AidlServers$Updater;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x26ebb67

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Updater"

    return-object v0
.end method
