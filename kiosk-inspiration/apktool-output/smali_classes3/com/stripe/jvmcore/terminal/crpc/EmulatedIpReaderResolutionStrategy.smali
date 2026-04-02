.class public final Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;
.super Ljava/lang/Object;
.source "LocalIpReaderResolutionStrategy.kt"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;",
        "()V",
        "resolve",
        "",
        "ipAddress",
        "baseUrl",
        "terminal-core"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;

    invoke-direct {v0}, Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;->INSTANCE:Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "http://"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":4443"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
