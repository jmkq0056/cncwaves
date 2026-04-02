.class public final Lcom/stripe/hardware/status/IntegrityCheckError;
.super Lcom/stripe/hardware/status/ReaderException;
.source "IntegrityCheckError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/status/IntegrityCheckError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/hardware/status/IntegrityCheckError;",
        "Lcom/stripe/hardware/status/ReaderException;",
        "error",
        "",
        "mode",
        "Lcom/stripe/hardware/status/BbposErrorMode;",
        "(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)V",
        "getError",
        "()Ljava/lang/String;",
        "getMode",
        "()Lcom/stripe/hardware/status/BbposErrorMode;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/stripe/hardware/status/IntegrityCheckError$Companion;

.field private static final INTEGRITY_ERROR_REGEX:Lkotlin/text/Regex;


# instance fields
.field private final error:Ljava/lang/String;

.field private final mode:Lcom/stripe/hardware/status/BbposErrorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/hardware/status/IntegrityCheckError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/status/IntegrityCheckError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/status/IntegrityCheckError;->Companion:Lcom/stripe/hardware/status/IntegrityCheckError$Companion;

    .line 9
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Integrity Check Error Code: ([0-9]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/status/IntegrityCheckError;->INTEGRITY_ERROR_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 6
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/stripe/hardware/status/ReaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    return-void
.end method

.method public static final synthetic access$getINTEGRITY_ERROR_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 3
    sget-object v0, Lcom/stripe/hardware/status/IntegrityCheckError;->INTEGRITY_ERROR_REGEX:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/status/IntegrityCheckError;Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;ILjava/lang/Object;)Lcom/stripe/hardware/status/IntegrityCheckError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/hardware/status/IntegrityCheckError;->copy(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)Lcom/stripe/hardware/status/IntegrityCheckError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/status/BbposErrorMode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)Lcom/stripe/hardware/status/IntegrityCheckError;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/status/IntegrityCheckError;

    invoke-direct {v0, p1, p2}, Lcom/stripe/hardware/status/IntegrityCheckError;-><init>(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/status/IntegrityCheckError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/status/IntegrityCheckError;

    iget-object v1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    iget-object p1, p1, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()Lcom/stripe/hardware/status/BbposErrorMode;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    invoke-virtual {v1}, Lcom/stripe/hardware/status/BbposErrorMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntegrityCheckError(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/status/IntegrityCheckError;->mode:Lcom/stripe/hardware/status/BbposErrorMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
