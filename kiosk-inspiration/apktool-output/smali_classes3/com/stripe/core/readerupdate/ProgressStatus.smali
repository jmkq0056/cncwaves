.class public abstract Lcom/stripe/core/readerupdate/ProgressStatus;
.super Ljava/lang/Object;
.source "ProgressStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/ProgressStatus$Error;,
        Lcom/stripe/core/readerupdate/ProgressStatus$Progress;,
        Lcom/stripe/core/readerupdate/ProgressStatus$Start;,
        Lcom/stripe/core/readerupdate/ProgressStatus$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "",
        "()V",
        "Error",
        "Progress",
        "Start",
        "Success",
        "Lcom/stripe/core/readerupdate/ProgressStatus$Error;",
        "Lcom/stripe/core/readerupdate/ProgressStatus$Progress;",
        "Lcom/stripe/core/readerupdate/ProgressStatus$Start;",
        "Lcom/stripe/core/readerupdate/ProgressStatus$Success;",
        "readerupdate_release"
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/readerupdate/ProgressStatus;-><init>()V

    return-void
.end method
