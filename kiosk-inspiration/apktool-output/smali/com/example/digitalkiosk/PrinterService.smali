.class public final Lcom/example/digitalkiosk/PrinterService;
.super Landroid/app/Service;
.source "PrinterService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/PrinterService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/example/digitalkiosk/PrinterService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/example/digitalkiosk/PrinterService$Companion;


# direct methods
.method public static synthetic $r8$lambda$NEGTZ7iy7YZQb1G0sPqp0e10F60()V
    .locals 0

    invoke-static {}, Lcom/example/digitalkiosk/PrinterService;->onStartCommand$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/digitalkiosk/PrinterService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/digitalkiosk/PrinterService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/digitalkiosk/PrinterService;->Companion:Lcom/example/digitalkiosk/PrinterService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static final onStartCommand$lambda$0()V
    .locals 3

    .line 245
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 247
    :goto_0
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance v2, Lcom/example/digitalkiosk/PrinterService$onStartCommand$1$1;

    invoke-direct {v2}, Lcom/example/digitalkiosk/PrinterService$onStartCommand$1$1;-><init>()V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->get_test_print_queue$app_release(Lretrofit2/Callback;)V

    const-wide/16 v1, 0x3e8

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 264
    sget-object v1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance v2, Lcom/example/digitalkiosk/PrinterService$onStartCommand$1$2;

    invoke-direct {v2, v0}, Lcom/example/digitalkiosk/PrinterService$onStartCommand$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->customer_receipts_queue$app_release(Lretrofit2/Callback;)V

    :cond_0
    const-wide/16 v1, 0x7d0

    .line 298
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 244
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/example/digitalkiosk/PrinterService$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/example/digitalkiosk/PrinterService$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
