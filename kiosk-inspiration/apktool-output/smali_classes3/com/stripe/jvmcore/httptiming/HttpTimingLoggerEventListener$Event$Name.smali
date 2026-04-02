.class public final enum Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
.super Ljava/lang/Enum;
.source "HttpTimingLoggerEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        "",
        "(Ljava/lang/String;I)V",
        "CALL",
        "DNS",
        "CONNECT",
        "SECURE_CONNECT",
        "CONNECT_FAILED",
        "CONNECTION_ACQUIRED",
        "REQUEST_HEADERS",
        "REQUEST_BODY",
        "REQUEST_FAILED",
        "RESPONSE_HEADERS",
        "RESPONSE_BODY",
        "RESPONSE_FAILED",
        "CALL_FAILED",
        "CANCELED",
        "CONNECTION_RELEASED",
        "CACHE_HIT",
        "CACHE_MISS",
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

.field private static final synthetic $VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CACHE_HIT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CACHE_MISS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CALL_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CANCELED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CONNECTION_ACQUIRED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CONNECTION_RELEASED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum CONNECT_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum REQUEST_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum RESPONSE_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

.field public static final enum SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 18

    sget-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v2, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v4, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v5, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v6, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_ACQUIRED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v7, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v8, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v9, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v10, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v11, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v12, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v13, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v14, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CANCELED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v15, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_RELEASED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v16, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CACHE_HIT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    sget-object v17, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CACHE_MISS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    filled-new-array/range {v1 .. v17}, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 53
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "DNS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->DNS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 54
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CONNECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 55
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "SECURE_CONNECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->SECURE_CONNECT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 56
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CONNECT_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECT_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 57
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CONNECTION_ACQUIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_ACQUIRED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 58
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "REQUEST_HEADERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 59
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "REQUEST_BODY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 60
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "REQUEST_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->REQUEST_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 61
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "RESPONSE_HEADERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_HEADERS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 62
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "RESPONSE_BODY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_BODY:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 63
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "RESPONSE_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->RESPONSE_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 64
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CALL_FAILED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CALL_FAILED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 65
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CANCELED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CANCELED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 66
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CONNECTION_RELEASED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CONNECTION_RELEASED:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 67
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CACHE_HIT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CACHE_HIT:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 68
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    const-string v1, "CACHE_MISS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->CACHE_MISS:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-static {}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->$values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->$VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    const-class v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object p0
.end method

.method public static values()[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->$VALUES:[Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object v0
.end method
