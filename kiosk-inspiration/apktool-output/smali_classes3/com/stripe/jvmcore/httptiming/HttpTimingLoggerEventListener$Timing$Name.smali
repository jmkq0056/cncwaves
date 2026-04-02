.class public final enum Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
.super Ljava/lang/Enum;
.source "HttpTimingLoggerEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
        "",
        "(Ljava/lang/String;I)V",
        "DNS",
        "CONNECT",
        "TLS",
        "CONNECTION_ACQUIRE",
        "REQUEST_E2E",
        "REQUEST_SEND",
        "RESPONSE_RECEIVE",
        "CALL_E2E",
        "httptiming"
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

.field private static final synthetic $VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum CALL_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum CONNECTION_ACQUIRE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum REQUEST_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum REQUEST_SEND:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum RESPONSE_RECEIVE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field public static final enum TLS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    .locals 8

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->TLS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECTION_ACQUIRE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_SEND:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->RESPONSE_RECEIVE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    sget-object v7, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CALL_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 83
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "DNS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 84
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "CONNECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 85
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "TLS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->TLS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 86
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "CONNECTION_ACQUIRE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CONNECTION_ACQUIRE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 87
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "REQUEST_E2E"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 88
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "REQUEST_SEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->REQUEST_SEND:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 89
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "RESPONSE_RECEIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->RESPONSE_RECEIVE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 90
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    const-string v1, "CALL_E2E"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->CALL_E2E:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    invoke-static {}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->$values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->$VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    .locals 1

    const-class v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    return-object p0
.end method

.method public static values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->$VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    return-object v0
.end method
