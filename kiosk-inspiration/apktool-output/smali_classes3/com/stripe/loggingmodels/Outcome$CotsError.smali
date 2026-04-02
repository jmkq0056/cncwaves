.class public abstract Lcom/stripe/loggingmodels/Outcome$CotsError;
.super Ljava/lang/Object;
.source "Outcome.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/Outcome$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CotsError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$CotsError$AccessNotAllowed;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$Canceled;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$CardReadTimedOut;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$Declined;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$InsecureEnvironment;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCountry;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCurrency;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$IrrecoverableError;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$NfcIsDisabled;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$NoMutuallySupportedApplications;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$NonIsoNfcTag;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$ReaderNotActive;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$RecoverableError;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$SeePhone;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$SelectNext;,
        Lcom/stripe/loggingmodels/Outcome$CotsError$Unknown;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0010\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0010\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$CotsError;",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "outcome",
        "",
        "(Ljava/lang/String;)V",
        "getOutcome",
        "()Ljava/lang/String;",
        "AccessNotAllowed",
        "Canceled",
        "CardReadTimedOut",
        "Declined",
        "InsecureEnvironment",
        "InvalidCountry",
        "InvalidCurrency",
        "IrrecoverableError",
        "NfcIsDisabled",
        "NoMutuallySupportedApplications",
        "NonIsoNfcTag",
        "ReaderNotActive",
        "RecoverableError",
        "SeePhone",
        "SelectNext",
        "Unknown",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$AccessNotAllowed;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$Canceled;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$CardReadTimedOut;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$Declined;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$InsecureEnvironment;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCountry;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$InvalidCurrency;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$IrrecoverableError;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$NfcIsDisabled;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$NoMutuallySupportedApplications;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$NonIsoNfcTag;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$ReaderNotActive;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$RecoverableError;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$SeePhone;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$SelectNext;",
        "Lcom/stripe/loggingmodels/Outcome$CotsError$Unknown;",
        "public_release"
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
.field private final outcome:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/loggingmodels/Outcome$CotsError;->outcome:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/loggingmodels/Outcome$CotsError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOutcome()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$CotsError;->outcome:Ljava/lang/String;

    return-object v0
.end method
