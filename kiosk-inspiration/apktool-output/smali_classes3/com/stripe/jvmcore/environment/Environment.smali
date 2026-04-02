.class public abstract Lcom/stripe/jvmcore/environment/Environment;
.super Ljava/lang/Object;
.source "Environment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/environment/Environment$Certhorse;,
        Lcom/stripe/jvmcore/environment/Environment$Preprod;,
        Lcom/stripe/jvmcore/environment/Environment$Prod;,
        Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;,
        Lcom/stripe/jvmcore/environment/Environment$QA;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0013\u0014\u0015\u0016\u0017B?\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u0082\u0001\u0005\u0018\u0019\u001a\u001b\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/jvmcore/environment/Environment;",
        "",
        "stripeApiUrl",
        "",
        "filesApiUrl",
        "armadaApiUrl",
        "gatorApiUrl",
        "clientLoggerApiUrl",
        "wardenApiUrl",
        "name",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getArmadaApiUrl",
        "()Ljava/lang/String;",
        "getClientLoggerApiUrl",
        "getFilesApiUrl",
        "getGatorApiUrl",
        "getName",
        "getStripeApiUrl",
        "getWardenApiUrl",
        "Certhorse",
        "Preprod",
        "Prod",
        "ProxyGateway",
        "QA",
        "Lcom/stripe/jvmcore/environment/Environment$Certhorse;",
        "Lcom/stripe/jvmcore/environment/Environment$Preprod;",
        "Lcom/stripe/jvmcore/environment/Environment$Prod;",
        "Lcom/stripe/jvmcore/environment/Environment$ProxyGateway;",
        "Lcom/stripe/jvmcore/environment/Environment$QA;",
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


# instance fields
.field private final armadaApiUrl:Ljava/lang/String;

.field private final clientLoggerApiUrl:Ljava/lang/String;

.field private final filesApiUrl:Ljava/lang/String;

.field private final gatorApiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final stripeApiUrl:Ljava/lang/String;

.field private final wardenApiUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/environment/Environment;->stripeApiUrl:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/stripe/jvmcore/environment/Environment;->filesApiUrl:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/stripe/jvmcore/environment/Environment;->armadaApiUrl:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/stripe/jvmcore/environment/Environment;->gatorApiUrl:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/stripe/jvmcore/environment/Environment;->clientLoggerApiUrl:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/stripe/jvmcore/environment/Environment;->wardenApiUrl:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/stripe/jvmcore/environment/Environment;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/stripe/jvmcore/environment/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getArmadaApiUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->armadaApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientLoggerApiUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->clientLoggerApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesApiUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->filesApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getGatorApiUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->gatorApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStripeApiUrl()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->stripeApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWardenApiUrl()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/jvmcore/environment/Environment;->wardenApiUrl:Ljava/lang/String;

    return-object v0
.end method
