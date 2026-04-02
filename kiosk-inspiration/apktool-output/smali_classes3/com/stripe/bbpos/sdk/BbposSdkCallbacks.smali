.class public final enum Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;
.super Ljava/lang/Enum;
.source "BbposSdkCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0017\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;",
        "",
        "(Ljava/lang/String;I)V",
        "OnError",
        "OnRequestDisplayAsterisk",
        "OnRequestDisplayText",
        "OnRequestFinalConfirm",
        "OnRequestManualPanEntry",
        "OnRequestOnlineProcess",
        "OnRequestPinEntry",
        "OnRequestProduceAudioTone",
        "OnRequestSelectAccountType",
        "OnRequestSelectApplication",
        "OnReturnAccessiblePINPadTouchEvent",
        "OnReturnBatchData",
        "OnReturnCheckCardResult",
        "OnReturnCancelCheckCardResult",
        "OnReturnDeviceInfo",
        "OnReturnPinEntryResult",
        "OnReturnReadTerminalSettingResult",
        "OnReturnReversalData",
        "OnReturnTransactionResult",
        "OnReturnSetPinPadButtonsResult",
        "OnWaitingForCard",
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnError:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestDisplayAsterisk:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestDisplayText:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestFinalConfirm:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestManualPanEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestOnlineProcess:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestProduceAudioTone:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnRequestSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnAccessiblePINPadTouchEvent:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnBatchData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnCancelCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnPinEntryResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnReadTerminalSettingResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnReversalData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnSetPinPadButtonsResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnReturnTransactionResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

.field public static final enum OnWaitingForCard:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;
    .locals 22

    sget-object v1, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnError:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v2, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestDisplayAsterisk:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v3, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestDisplayText:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v4, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestFinalConfirm:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v5, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestManualPanEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v6, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestOnlineProcess:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v7, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v8, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestProduceAudioTone:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v9, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v10, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v11, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnAccessiblePINPadTouchEvent:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v12, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnBatchData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v13, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v14, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnCancelCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v15, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v16, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnPinEntryResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v17, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnReadTerminalSettingResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v18, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnReversalData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v19, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnTransactionResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v20, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnSetPinPadButtonsResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    sget-object v21, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnWaitingForCard:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    filled-new-array/range {v1 .. v21}, [Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnError:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 5
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestDisplayAsterisk"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestDisplayAsterisk:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 6
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestDisplayText"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestDisplayText:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 7
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestFinalConfirm"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestFinalConfirm:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 8
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestManualPanEntry"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestManualPanEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 9
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestOnlineProcess"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestOnlineProcess:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 10
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestPinEntry"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestPinEntry:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 11
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestProduceAudioTone"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestProduceAudioTone:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 12
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestSelectAccountType"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestSelectAccountType:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 13
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnRequestSelectApplication"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnRequestSelectApplication:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 14
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnAccessiblePINPadTouchEvent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnAccessiblePINPadTouchEvent:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 15
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnBatchData"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnBatchData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 16
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnCheckCardResult"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 17
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnCancelCheckCardResult"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnCancelCheckCardResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 18
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnDeviceInfo"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnDeviceInfo:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 19
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnPinEntryResult"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnPinEntryResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 20
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnReadTerminalSettingResult"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnReadTerminalSettingResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 21
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnReversalData"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnReversalData:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 22
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnTransactionResult"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnTransactionResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 23
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnReturnSetPinPadButtonsResult"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnReturnSetPinPadButtonsResult:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    .line 24
    new-instance v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    const-string v1, "OnWaitingForCard"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->OnWaitingForCard:Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    invoke-static {}, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->$values()[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->$VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;->$VALUES:[Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;

    return-object v0
.end method
