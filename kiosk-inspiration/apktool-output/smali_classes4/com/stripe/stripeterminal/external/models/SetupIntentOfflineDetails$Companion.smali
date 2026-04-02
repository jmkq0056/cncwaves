.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;
.super Ljava/lang/Object;
.source "SetupIntentOfflineDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0007J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000eH\u00c6\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;",
        "",
        "()V",
        "make",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "id",
        "",
        "storedAtMs",
        "",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
        "requiresUpload",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;-><init>()V

    return-void
.end method

.method public static synthetic make$default(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p5

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$Companion;->make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final make(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
    .locals 6

    .line 66
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;-><init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Z)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
