.class public final Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;
.super Ljava/lang/Object;
.source "CardPresentCaptureMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;",
        "",
        "key",
        "",
        "(Ljava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod$Companion;

.field public static final Manual:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

.field public static final ManualPreferred:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod$Companion;

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    const-string v1, "manual_preferred"

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->ManualPreferred:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    .line 26
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    const-string v1, "manual"

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->Manual:Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 10
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;->key:Ljava/lang/String;

    return-object v0
.end method
