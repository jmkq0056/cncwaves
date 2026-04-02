.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;
.super Ljava/lang/Exception;
.source "ActivateReaderInvalidOfflineConnectionTokenException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00082\u00060\u0001j\u0002`\u0002:\u0001\u0008B\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "codeAsMessage",
        "",
        "(Ljava/lang/String;)V",
        "getCodeAsMessage",
        "()Ljava/lang/String;",
        "Companion",
        "common_publish"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;

.field private static final ERROR_MESSAGE_PREFIX:Ljava/lang/String; = "Invalid API Key provided: psst_off"


# instance fields
.field private final codeAsMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;->Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "codeAsMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;->codeAsMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCodeAsMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;->codeAsMessage:Ljava/lang/String;

    return-object v0
.end method
