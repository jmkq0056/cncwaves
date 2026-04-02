.class public final Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;
.super Ljava/lang/Object;
.source "ReadReusableCardParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;,
        Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0002\u000b\u000cB\'\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "",
        "customer",
        "",
        "metadata",
        "",
        "(Ljava/lang/String;Ljava/util/Map;)V",
        "getCustomer",
        "()Ljava/lang/String;",
        "getMetadata",
        "()Ljava/util/Map;",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;

.field private static final NULL:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;


# instance fields
.field private final synthetic customer:Ljava/lang/String;

.field private final synthetic metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->Companion:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;

    .line 92
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;

    invoke-direct {v0, v1, v1}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->NULL:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->customer:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$getNULL$cp()Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;
    .locals 1

    .line 30
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->NULL:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;

    return-object v0
.end method

.method public static final getNULL()Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->Companion:Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;->getNULL()Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;->metadata:Ljava/util/Map;

    return-object v0
.end method
