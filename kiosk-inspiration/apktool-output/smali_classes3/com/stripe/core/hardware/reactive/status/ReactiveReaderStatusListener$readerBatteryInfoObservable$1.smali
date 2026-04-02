.class final Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;
.super Ljava/lang/Object;
.source "ReactiveReaderStatusListener.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "test"
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
.field public static final INSTANCE:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/stripe/hardware/status/ReaderInfo;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Lcom/stripe/hardware/status/ReaderInfo;

    invoke-virtual {p0, p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener$readerBatteryInfoObservable$1;->test(Lcom/stripe/hardware/status/ReaderInfo;)Z

    move-result p1

    return p1
.end method
