.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;
.super Ljava/lang/Object;
.source "SetupIntentCancellationParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;,
        Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \n2\u00020\u0001:\u0002\t\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;)V",
        "reason",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "getReason",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;

.field private static final NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;


# instance fields
.field private final reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;->build()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    return-void
.end method

.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;->getReason$public_release()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;)V

    return-void
.end method

.method public static final synthetic access$getNULL$cp()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;
    .locals 1

    .line 14
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    return-object v0
.end method


# virtual methods
.method public final getReason()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;->reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-object v0
.end method
