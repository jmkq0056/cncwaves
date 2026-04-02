.class public final Lcom/stripe/jvmcore/restclient/RestConfig$Companion;
.super Ljava/lang/Object;
.source "RestConfig.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/RestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\u0011\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0096\u0001R\u0012\u0010\u0003\u001a\u00020\u0004X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestConfig$Companion;",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "()V",
        "maxAttempts",
        "",
        "getMaxAttempts",
        "()I",
        "timeoutMs",
        "",
        "getTimeoutMs",
        "()Ljava/lang/Long;",
        "withMaxAttempts",
        "withTimeoutMs",
        "base"
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
.field static final synthetic $$INSTANCE:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    invoke-direct {v0}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$INSTANCE:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;-><init>(Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    return-void
.end method


# virtual methods
.method public getMaxAttempts()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->getMaxAttempts()I

    move-result v0

    return v0
.end method

.method public getTimeoutMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->getTimeoutMs()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    return-object p1
.end method

.method public withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$delegate_0:Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    return-object p1
.end method
