.class final Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TerminalSdkManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/TerminalSdkManager;->initTerminalSession(Landroid/content/Context;Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Lcom/stripe/stripeterminal/dagger/Dependencies;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;->INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;

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

    .line 148
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/TerminalSdkManager$initTerminalSession$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 149
    invoke-static {}, Lcom/stripe/stripeterminal/TerminalSdkManager;->access$getLOGGER$p()Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "device_rooted"

    const-string v3, "TRUE"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
