.class public final Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;
.super Ljava/lang/Object;
.source "EmvModule.kt"

# interfaces
.implements Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/hardware/dagger/EmvModule$Companion;->provideDefaultDomesticDebitAidsParser$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;",
        "e",
        "",
        "message",
        "",
        "throwable",
        "",
        "wiring"
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
.field final synthetic $log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;->$log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 27
    iget-object v1, p0, Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;->$log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {v1, p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void

    .line 29
    :cond_0
    iget-object p2, p0, Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;->$log:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p2, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
