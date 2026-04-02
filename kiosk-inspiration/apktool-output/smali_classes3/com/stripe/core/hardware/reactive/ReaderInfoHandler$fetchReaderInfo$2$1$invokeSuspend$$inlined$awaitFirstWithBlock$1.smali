.class public final Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;
.super Ljava/lang/Object;
.source "RxJavaHelper.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxJavaHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxJavaHelper.kt\ncom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$4\n*L\n1#1,49:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\n\u0008\u0001\u0010\u0004\u0018\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "T",
        "",
        "V",
        "",
        "it",
        "apply",
        "com/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$4"
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
.field public static final INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lcom/stripe/hardware/status/ReaderInfo;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/stripe/hardware/status/ReaderException;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 44
    :goto_0
    check-cast p1, Lio/reactivex/rxjava3/core/ObservableSource;

    return-object p1

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Observable emitted unexpected type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;->apply(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
