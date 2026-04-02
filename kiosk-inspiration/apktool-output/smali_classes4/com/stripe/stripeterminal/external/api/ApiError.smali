.class public final Lcom/stripe/stripeterminal/external/api/ApiError;
.super Ljava/lang/Object;
.source "ApiError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/api/ApiError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010!\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\"J\u0013\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0013\u0010\r\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0008R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "",
        "error",
        "Lcom/stripe/stripeterminal/external/serialization/InnerError;",
        "(Lcom/stripe/stripeterminal/external/serialization/InnerError;)V",
        "charge",
        "",
        "getCharge",
        "()Ljava/lang/String;",
        "code",
        "getCode",
        "declineCode",
        "getDeclineCode",
        "docUrl",
        "getDocUrl",
        "getError$public_release",
        "()Lcom/stripe/stripeterminal/external/serialization/InnerError;",
        "message",
        "getMessage",
        "param",
        "getParam",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "getPaymentIntent",
        "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "getSetupIntent",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "type",
        "Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        "getType",
        "()Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        "component1",
        "component1$public_release",
        "copy",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/api/ApiError$Companion;

.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Unknown API error"


# instance fields
.field private final error:Lcom/stripe/stripeterminal/external/serialization/InnerError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/api/ApiError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiError;->Companion:Lcom/stripe/stripeterminal/external/api/ApiError$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/serialization/InnerError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/api/ApiError;Lcom/stripe/stripeterminal/external/serialization/InnerError;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/api/ApiError;->copy(Lcom/stripe/stripeterminal/external/serialization/InnerError;)Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$public_release()Lcom/stripe/stripeterminal/external/serialization/InnerError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/serialization/InnerError;)Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/api/ApiError;-><init>(Lcom/stripe/stripeterminal/external/serialization/InnerError;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/api/ApiError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/api/ApiError;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCharge()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getCharge$public_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getCode$public_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclineCode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getDeclineCode$public_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getDocUrl$public_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getError$public_release()Lcom/stripe/stripeterminal/external/serialization/InnerError;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getMessage$public_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unknown API error"

    :cond_0
    return-object v0
.end method

.method public final getParam()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getParam$public_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getPaymentIntent$public_release()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method

.method public final getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getSetupIntent$public_release()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->getType$public_release()Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/serialization/InnerError;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApiError(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/api/ApiError;->error:Lcom/stripe/stripeterminal/external/serialization/InnerError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
