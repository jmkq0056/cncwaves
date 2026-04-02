.class public final Lcom/stripe/core/hardware/status/ScanFailedFatalError;
.super Lcom/stripe/hardware/status/ReaderException;
.source "ScanFailedFatalError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/hardware/status/ScanFailedFatalError;",
        "Lcom/stripe/hardware/status/ReaderException;",
        "errorCode",
        "",
        "errorMessage",
        "",
        "cause",
        "",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "getErrorCode",
        "()I",
        "Companion",
        "hardware_release"
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
.field public static final Companion:Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/status/ScanFailedFatalError;->Companion:Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/stripe/core/hardware/status/ScanFailedFatalError;->Companion:Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;

    invoke-static {v0, p1}, Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;->access$errorCodeToString(Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/stripe/hardware/status/ReaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iput p1, p0, Lcom/stripe/core/hardware/status/ScanFailedFatalError;->errorCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/hardware/status/ScanFailedFatalError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/stripe/core/hardware/status/ScanFailedFatalError;->errorCode:I

    return v0
.end method
