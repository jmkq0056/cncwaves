.class final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpTimingLoggerEventListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/time/Duration;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;->INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;->invoke(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;)Ljava/time/Duration;
    .locals 1

    .line 99
    invoke-virtual {p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getTimeSinceCallStart()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getTimingDuration()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method
