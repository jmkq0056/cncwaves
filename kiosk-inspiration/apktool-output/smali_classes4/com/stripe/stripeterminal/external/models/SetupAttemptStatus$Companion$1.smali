.class final Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SetupAttemptStatus.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;->invoke()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/serialization/KSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->values()[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "requires_confirmation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "requires_action"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "processing"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "succeeded"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "failed"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "abandoned"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    aput-object v3, v1, v7

    aput-object v3, v1, v8

    aput-object v3, v1, v9

    const-string v4, "com.stripe.stripeterminal.external.models.SetupAttemptStatus"

    invoke-static {v4, v0, v2, v1, v3}, Lkotlinx/serialization/internal/EnumsKt;->createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
