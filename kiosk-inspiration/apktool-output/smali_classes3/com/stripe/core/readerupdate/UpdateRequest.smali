.class public final Lcom/stripe/core/readerupdate/UpdateRequest;
.super Lcom/stripe/loggingmodels/ApplicationTrace;
.source "UpdateRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/UpdateRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nBC\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0002\u0010\tR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateRequest;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "method",
        "",
        "fromVersion",
        "toVersion",
        "hardwareVersion",
        "tags",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
        "Companion",
        "readerupdate_release"
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
.field public static final CURRENT_VERSION_TAG_KEY:Ljava/lang/String; = "CurrentVersion"

.field public static final Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

.field public static final HARDWARE_VERSION_TAG_KEY:Ljava/lang/String; = "HardwareVersion"

.field public static final TAG_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TARGET_VERSION_TAG_KEY:Ljava/lang/String; = "TargetVersion"


# instance fields
.field private final fromVersion:Ljava/lang/String;

.field private final hardwareVersion:Ljava/lang/String;

.field private final toVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    const-string v0, "UpdateRequest"

    .line 15
    invoke-direct {p0, v0, p1, p5}, Lcom/stripe/loggingmodels/ApplicationTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    iput-object p2, p0, Lcom/stripe/core/readerupdate/UpdateRequest;->fromVersion:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateRequest;->toVersion:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/stripe/core/readerupdate/UpdateRequest;->hardwareVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    const/4 p5, 0x3

    .line 11
    new-array p5, p5, [Lkotlin/Pair;

    const-string p6, "unknown"

    if-nez p3, :cond_0

    move-object p7, p6

    goto :goto_0

    :cond_0
    move-object p7, p3

    :goto_0
    const-string v0, "TargetVersion"

    invoke-static {v0, p7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    const/4 v0, 0x0

    aput-object p7, p5, v0

    if-nez p2, :cond_1

    move-object p7, p6

    goto :goto_1

    :cond_1
    move-object p7, p2

    .line 12
    :goto_1
    const-string v0, "CurrentVersion"

    invoke-static {v0, p7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    const/4 v0, 0x1

    aput-object p7, p5, v0

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p6, p4

    .line 13
    :goto_2
    const-string p7, "HardwareVersion"

    invoke-static {p7, p6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p6

    const/4 p7, 0x2

    aput-object p6, p5, p7

    .line 10
    invoke-static {p5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p5

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
