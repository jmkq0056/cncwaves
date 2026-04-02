.class public final enum Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;
.super Ljava/lang/Enum;
.source "UpdateStepHealthReporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
        "",
        "(Ljava/lang/String;I)V",
        "MONITOR",
        "DOWNLOAD",
        "INSTALL",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

.field public static final enum DOWNLOAD:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

.field public static final enum INSTALL:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

.field public static final enum MONITOR:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;
    .locals 3

    sget-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->MONITOR:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->DOWNLOAD:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    sget-object v2, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->INSTALL:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    const-string v1, "MONITOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->MONITOR:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->DOWNLOAD:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    const-string v1, "INSTALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->INSTALL:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    invoke-static {}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->$values()[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->$VALUES:[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;
    .locals 1

    const-class v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;
    .locals 1

    sget-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->$VALUES:[Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    return-object v0
.end method
