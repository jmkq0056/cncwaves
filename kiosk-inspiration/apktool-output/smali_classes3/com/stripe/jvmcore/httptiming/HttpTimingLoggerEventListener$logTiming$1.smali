.class final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpTimingLoggerEventListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;->logTiming(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "v",
        "invoke",
        "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;Ljava/lang/Integer;)Ljava/lang/Integer;"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;->INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 201
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$logTiming$1;->invoke(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
