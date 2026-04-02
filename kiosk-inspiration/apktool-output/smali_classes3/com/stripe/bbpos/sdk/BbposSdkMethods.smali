.class public final enum Lcom/stripe/bbpos/sdk/BbposSdkMethods;
.super Ljava/lang/Enum;
.source "BbposSdkMethods.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/BbposSdkMethods;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/BbposSdkMethods;",
        "",
        "(Ljava/lang/String;I)V",
        "CancelCheckCard",
        "CancelPinEntry",
        "CancelSelectAccountType",
        "CancelSelectApplication",
        "CheckCard",
        "GetDeviceInfo",
        "ReadTerminalSetting",
        "SelectAccountType",
        "SelectApplication",
        "SendFinalConfirmResult",
        "SendOnlineProcessResult",
        "SetPinPadButtons",
        "StartEmv",
        "StartPinEntry",
        "sdk-protos_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum CancelCheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum CancelPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum CancelSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum CancelSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum CheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum GetDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum ReadTerminalSetting:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum SelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum SelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum SendFinalConfirmResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum SendOnlineProcessResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum SetPinPadButtons:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum StartEmv:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

.field public static final enum StartPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/BbposSdkMethods;
    .locals 14

    sget-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelCheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v1, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v2, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v3, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v4, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v5, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->GetDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v6, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->ReadTerminalSetting:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v7, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v8, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v9, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SendFinalConfirmResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v10, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SendOnlineProcessResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v11, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SetPinPadButtons:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v12, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->StartEmv:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    sget-object v13, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->StartPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    filled-new-array/range {v0 .. v13}, [Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "CancelCheckCard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelCheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 5
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "CancelPinEntry"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 6
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "CancelSelectAccountType"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 7
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "CancelSelectApplication"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CancelSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 8
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "CheckCard"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->CheckCard:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 9
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "GetDeviceInfo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->GetDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 10
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "ReadTerminalSetting"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->ReadTerminalSetting:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 11
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "SelectAccountType"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 12
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "SelectApplication"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 13
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "SendFinalConfirmResult"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SendFinalConfirmResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 14
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "SendOnlineProcessResult"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SendOnlineProcessResult:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 15
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "SetPinPadButtons"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->SetPinPadButtons:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 16
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "StartEmv"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->StartEmv:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    .line 17
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    const-string v1, "StartPinEntry"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->StartPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    invoke-static {}, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->$values()[Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->$VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/BbposSdkMethods;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/BbposSdkMethods;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/BbposSdkMethods;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/BbposSdkMethods;->$VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/BbposSdkMethods;

    return-object v0
.end method
