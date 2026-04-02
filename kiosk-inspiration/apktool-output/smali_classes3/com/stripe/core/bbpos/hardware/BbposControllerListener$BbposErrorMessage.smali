.class public enum Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;
.super Ljava/lang/Enum;
.source "BbposControllerListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/BbposControllerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BbposErrorMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;,
        Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$MISSING_ENCRYPTION_KEY;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;",
        "",
        "msg",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMsg",
        "()Ljava/lang/String;",
        "matches",
        "",
        "errMsg",
        "USB_CONNECTION_WARNING_MSG",
        "SERIAL_ALREADY_CONNECTED",
        "MISSING_ENCRYPTION_KEY",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

.field public static final Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;

.field public static final enum MISSING_ENCRYPTION_KEY:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

.field public static final enum SERIAL_ALREADY_CONNECTED:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

.field public static final enum USB_CONNECTION_WARNING_MSG:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;


# instance fields
.field private final msg:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;
    .locals 3

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->USB_CONNECTION_WARNING_MSG:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->SERIAL_ALREADY_CONNECTED:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->MISSING_ENCRYPTION_KEY:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    const/4 v1, 0x0

    const-string v2, "Cannot start USB again while USB is connected"

    const-string v3, "USB_CONNECTION_WARNING_MSG"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->USB_CONNECTION_WARNING_MSG:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    .line 95
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    const/4 v1, 0x1

    const-string v2, "Cannot start serial again while serial is connected"

    const-string v3, "SERIAL_ALREADY_CONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->SERIAL_ALREADY_CONNECTED:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    .line 96
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$MISSING_ENCRYPTION_KEY;

    const-string v1, "MISSING_ENCRYPTION_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$MISSING_ENCRYPTION_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->MISSING_ENCRYPTION_KEY:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    invoke-static {}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->$values()[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->$VALUES:[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->Companion:Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->msg:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;
    .locals 1

    const-class v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;
    .locals 1

    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->$VALUES:[Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;

    return-object v0
.end method


# virtual methods
.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "errMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$BbposErrorMessage;->msg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
