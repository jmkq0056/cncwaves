.class final Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/stripeterminal/log/AndroidLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/logwriter/LogWriter;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/logwriter/LogWriter;",
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


# instance fields
.field final synthetic $message:Ljava/lang/String;

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic $throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$throwable:Ljava/lang/Throwable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {p0, p1}, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->invoke(Lcom/stripe/logwriter/LogWriter;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/logwriter/LogWriter;)V
    .locals 3

    const-string v0, "$this$logWithMinLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/core/stripeterminal/log/AndroidLog$e$2;->$throwable:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, v2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
