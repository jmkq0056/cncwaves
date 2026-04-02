.class public final Lcom/stripe/hardware/status/BbposTamper;
.super Lcom/stripe/hardware/status/ReaderException;
.source "BbposTamper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/status/BbposTamper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00c6\u0003JA\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/hardware/status/BbposTamper;",
        "Lcom/stripe/hardware/status/ReaderException;",
        "error",
        "",
        "mode",
        "status",
        "time",
        "tamperType",
        "Lcom/stripe/hardware/status/TamperType;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)V",
        "getError",
        "()Ljava/lang/String;",
        "getMode",
        "getStatus",
        "getTamperType",
        "()Lcom/stripe/hardware/status/TamperType;",
        "getTime",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field public static final Companion:Lcom/stripe/hardware/status/BbposTamper$Companion;

.field private static final TAMPER_MODE_REGEX:Lkotlin/text/Regex;

.field private static final TAMPER_STATUS_REGEX:Lkotlin/text/Regex;

.field private static final TAMPER_TIME_REGEX:Lkotlin/text/Regex;


# instance fields
.field private final error:Ljava/lang/String;

.field private final mode:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final tamperType:Lcom/stripe/hardware/status/TamperType;

.field private final time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/hardware/status/BbposTamper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/status/BbposTamper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/status/BbposTamper;->Companion:Lcom/stripe/hardware/status/BbposTamper$Companion;

    .line 35
    const-string v1, "Mode"

    invoke-static {v0, v1}, Lcom/stripe/hardware/status/BbposTamper$Companion;->access$getTamperRegex(Lcom/stripe/hardware/status/BbposTamper$Companion;Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_MODE_REGEX:Lkotlin/text/Regex;

    .line 36
    const-string v1, "Status"

    invoke-static {v0, v1}, Lcom/stripe/hardware/status/BbposTamper$Companion;->access$getTamperRegex(Lcom/stripe/hardware/status/BbposTamper$Companion;Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v1

    sput-object v1, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_STATUS_REGEX:Lkotlin/text/Regex;

    .line 37
    const-string v1, "Time"

    invoke-static {v0, v1}, Lcom/stripe/hardware/status/BbposTamper$Companion;->access$getTamperRegex(Lcom/stripe/hardware/status/BbposTamper$Companion;Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_TIME_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tamperType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/stripe/hardware/status/ReaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    iput-object p1, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    return-void
.end method

.method public static final synthetic access$getTAMPER_MODE_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_MODE_REGEX:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getTAMPER_STATUS_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_STATUS_REGEX:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getTAMPER_TIME_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/hardware/status/BbposTamper;->TAMPER_TIME_REGEX:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/status/BbposTamper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;ILjava/lang/Object;)Lcom/stripe/hardware/status/BbposTamper;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/hardware/status/BbposTamper;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)Lcom/stripe/hardware/status/BbposTamper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/stripe/hardware/status/TamperType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)Lcom/stripe/hardware/status/BbposTamper;
    .locals 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tamperType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/status/BbposTamper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/hardware/status/BbposTamper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/status/BbposTamper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/status/BbposTamper;

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    iget-object p1, p1, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTamperType()Lcom/stripe/hardware/status/TamperType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    invoke-virtual {v1}, Lcom/stripe/hardware/status/TamperType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BbposTamper(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tamperType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/status/BbposTamper;->tamperType:Lcom/stripe/hardware/status/TamperType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
