.class public final Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;
.super Lcom/stripe/jvmcore/environment/Environment;
.source "Environment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/environment/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyGateway"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;",
        "Lcom/stripe/jvmcore/environment/Environment;",
        "()V",
        "environment"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;

    invoke-direct {v0}, Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;->INSTANCE:Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 53
    const-string v7, "PROXYGATEWAY"

    const/4 v8, 0x0

    .line 46
    const-string v1, "https://preprod-terminal-proxy-gateway.stripe.com"

    const-string v2, "https://preprod-files.stripe.com"

    const-string v3, "https://preprod-armada.stripe.com"

    const-string v4, "https://preprod-gator.stripe.com"

    const-string v5, "https://preprod-gator.stripe.com"

    const-string v6, "https://preprod-armada.stripe.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/environment/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
