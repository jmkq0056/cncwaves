.class public final Lcom/stripe/loggingmodels/Outcome$GenericError;
.super Ljava/lang/Object;
.source "Outcome.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/Outcome$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u0004H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$GenericError;",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "()V",
        "outcome",
        "",
        "getOutcome",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

.field private static final outcome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/loggingmodels/Outcome$GenericError;

    invoke-direct {v0}, Lcom/stripe/loggingmodels/Outcome$GenericError;-><init>()V

    sput-object v0, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    .line 62
    const-string v0, "generic_error"

    sput-object v0, Lcom/stripe/loggingmodels/Outcome$GenericError;->outcome:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/Outcome$GenericError;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/stripe/loggingmodels/Outcome$GenericError;

    return v0
.end method

.method public getOutcome()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$GenericError;->outcome:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x3e2208da

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "GenericError"

    return-object v0
.end method
