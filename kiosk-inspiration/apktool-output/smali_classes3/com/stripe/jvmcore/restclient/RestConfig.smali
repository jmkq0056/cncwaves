.class public interface abstract Lcom/stripe/jvmcore/restclient/RestConfig;
.super Ljava/lang/Object;
.source "RestConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/restclient/RestConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cJ\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "",
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
        "Companion",
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
.field public static final Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->$$INSTANCE:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    sput-object v0, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    return-void
.end method


# virtual methods
.method public abstract getMaxAttempts()I
.end method

.method public abstract getTimeoutMs()Ljava/lang/Long;
.end method

.method public abstract withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;
.end method

.method public abstract withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;
.end method
