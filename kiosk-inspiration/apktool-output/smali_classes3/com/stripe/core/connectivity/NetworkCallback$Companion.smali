.class public final Lcom/stripe/core/connectivity/NetworkCallback$Companion;
.super Ljava/lang/Object;
.source "NetworkCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/NetworkCallback$Companion;",
        "",
        "()V",
        "SIGNAL_INTERVAL",
        "Lkotlin/time/Duration;",
        "getSIGNAL_INTERVAL-UwyO8pc",
        "()J",
        "J",
        "connectivity_release"
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
.field static final synthetic $$INSTANCE:Lcom/stripe/core/connectivity/NetworkCallback$Companion;

.field private static final SIGNAL_INTERVAL:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/connectivity/NetworkCallback$Companion;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/NetworkCallback$Companion;-><init>()V

    sput-object v0, Lcom/stripe/core/connectivity/NetworkCallback$Companion;->$$INSTANCE:Lcom/stripe/core/connectivity/NetworkCallback$Companion;

    .line 11
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x5

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/connectivity/NetworkCallback$Companion;->SIGNAL_INTERVAL:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSIGNAL_INTERVAL-UwyO8pc()J
    .locals 2

    .line 11
    sget-wide v0, Lcom/stripe/core/connectivity/NetworkCallback$Companion;->SIGNAL_INTERVAL:J

    return-wide v0
.end method
