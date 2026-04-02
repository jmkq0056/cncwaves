.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;
.super Ljava/lang/Object;
.source "SetupIntentCancellationParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;",
        "",
        "()V",
        "reason",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "getReason$public_release",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "setReason$public_release",
        "(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;)V",
        "build",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "setReason",
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


# instance fields
.field private reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;
    .locals 2

    .line 31
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getReason$public_release()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;->reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-object v0
.end method

.method public final setReason(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;)Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;
    .locals 1

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;

    .line 27
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;->reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-object p0
.end method

.method public final setReason$public_release(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;->reason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-void
.end method
