.class public final enum Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;
.super Ljava/lang/Enum;
.source "HandoffMethods.kt"

# interfaces
.implements Lcom/stripe/core/aidlrpc/AidlMethods;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;",
        ">;",
        "Lcom/stripe/core/aidlrpc/AidlMethods;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008 \u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;",
        "",
        "Lcom/stripe/core/aidlrpc/AidlMethods;",
        "(Ljava/lang/String;I)V",
        "ACTIVATE_TERMINAL",
        "CANCEL_COLLECT",
        "CANCEL_PAYMENT_INTENT",
        "CANCEL_SETUP_INTENT",
        "CANCEL_REFUND_COLLECT",
        "CANCEL_SETUP_INTENT_COLLECT",
        "COLLECT_PAYMENT_METHOD",
        "COLLECT_REFUND_PAYMENT_METHOD",
        "COLLECT_SETUP_INTENT_PAYMENT_METHOD",
        "CONFIRM_PAYMENT",
        "CONFIRM_REFUND",
        "CONFIRM_SETUP_INTENT",
        "CREATE_PAYMENT_INTENT",
        "HANDLE_PAYMENT_INTENT_NEXT_ACTIONS",
        "CANCEL_CONFIRM_SETUP_INTENT",
        "CANCEL_CONFIRM_PAYMENT_INTENT",
        "CANCEL_CONFIRM_REFUND",
        "CREATE_JACK_RABBIT_PAYMENT_INTENT",
        "CREATE_SETUP_INTENT",
        "CREATE_JACK_RABBIT_SETUP_INTENT",
        "DISCOVER_READERS",
        "RESUME_COLLECT_PAYMENT_METHOD",
        "SET_READER_SETTINGS",
        "GET_READER_SETTINGS",
        "CREATE_CONNECTION_TOKEN",
        "TERMINAL_HEARTBEAT",
        "FETCH_READER_CONFIG",
        "ON_PAYMENT_INTENT_UPDATED",
        "COLLECT_DATA",
        "CANCEL_COLLECT_DATA",
        "aidlrpc_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum ACTIVATE_TERMINAL:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_CONFIRM_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_REFUND_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CANCEL_SETUP_INTENT_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum COLLECT_REFUND_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum COLLECT_SETUP_INTENT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CONFIRM_PAYMENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CREATE_CONNECTION_TOKEN:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CREATE_JACK_RABBIT_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CREATE_JACK_RABBIT_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CREATE_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum CREATE_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum DISCOVER_READERS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum FETCH_READER_CONFIG:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum GET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum HANDLE_PAYMENT_INTENT_NEXT_ACTIONS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum ON_PAYMENT_INTENT_UPDATED:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum RESUME_COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum SET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

.field public static final enum TERMINAL_HEARTBEAT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;
    .locals 31

    sget-object v1, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->ACTIVATE_TERMINAL:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v2, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v3, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v4, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v5, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_REFUND_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v6, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_SETUP_INTENT_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v7, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v8, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_REFUND_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v9, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_SETUP_INTENT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v10, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_PAYMENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v11, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v12, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v13, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v14, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->HANDLE_PAYMENT_INTENT_NEXT_ACTIONS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v15, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v16, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v17, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v18, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_JACK_RABBIT_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v19, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v20, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_JACK_RABBIT_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v21, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->DISCOVER_READERS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v22, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->RESUME_COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v23, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->SET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v24, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->GET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v25, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_CONNECTION_TOKEN:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v26, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->TERMINAL_HEARTBEAT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v27, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->FETCH_READER_CONFIG:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v28, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->ON_PAYMENT_INTENT_UPDATED:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v29, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    sget-object v30, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    filled-new-array/range {v1 .. v30}, [Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "ACTIVATE_TERMINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->ACTIVATE_TERMINAL:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 23
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_COLLECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 26
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_PAYMENT_INTENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 29
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_SETUP_INTENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 30
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_REFUND_COLLECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_REFUND_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 31
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_SETUP_INTENT_COLLECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_SETUP_INTENT_COLLECT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 32
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "COLLECT_PAYMENT_METHOD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 33
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "COLLECT_REFUND_PAYMENT_METHOD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_REFUND_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 34
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "COLLECT_SETUP_INTENT_PAYMENT_METHOD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_SETUP_INTENT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 35
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CONFIRM_PAYMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_PAYMENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 36
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CONFIRM_REFUND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 37
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CONFIRM_SETUP_INTENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 38
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CREATE_PAYMENT_INTENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 39
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "HANDLE_PAYMENT_INTENT_NEXT_ACTIONS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->HANDLE_PAYMENT_INTENT_NEXT_ACTIONS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 40
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_CONFIRM_SETUP_INTENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 41
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_CONFIRM_PAYMENT_INTENT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 42
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_CONFIRM_REFUND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_CONFIRM_REFUND:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 45
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CREATE_JACK_RABBIT_PAYMENT_INTENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_JACK_RABBIT_PAYMENT_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 46
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CREATE_SETUP_INTENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 49
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CREATE_JACK_RABBIT_SETUP_INTENT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_JACK_RABBIT_SETUP_INTENT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 50
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "DISCOVER_READERS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->DISCOVER_READERS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 51
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "RESUME_COLLECT_PAYMENT_METHOD"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->RESUME_COLLECT_PAYMENT_METHOD:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 52
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "SET_READER_SETTINGS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->SET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 53
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "GET_READER_SETTINGS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->GET_READER_SETTINGS:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 56
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CREATE_CONNECTION_TOKEN"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CREATE_CONNECTION_TOKEN:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 59
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "TERMINAL_HEARTBEAT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->TERMINAL_HEARTBEAT:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 62
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "FETCH_READER_CONFIG"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->FETCH_READER_CONFIG:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 65
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "ON_PAYMENT_INTENT_UPDATED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->ON_PAYMENT_INTENT_UPDATED:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 68
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "COLLECT_DATA"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    .line 69
    new-instance v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    const-string v1, "CANCEL_COLLECT_DATA"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->CANCEL_COLLECT_DATA:Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    invoke-static {}, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->$values()[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->$VALUES:[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;
    .locals 1

    const-class v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;
    .locals 1

    sget-object v0, Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;->$VALUES:[Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;

    return-object v0
.end method
