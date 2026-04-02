.class public final Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;
.super Ljava/lang/Object;
.source "ReaderSupportResult.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Supported"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "()V",
        "error",
        "",
        "getError",
        "()Ljava/lang/Throwable;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

.field private static final error:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
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
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    return v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x6eb779f7

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Supported"

    return-object v0
.end method
