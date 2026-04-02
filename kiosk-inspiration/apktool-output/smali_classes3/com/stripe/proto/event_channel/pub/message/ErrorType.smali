.class public final enum Lcom/stripe/proto/event_channel/pub/message/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/event_channel/pub/message/ErrorType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/ErrorType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "ERROR_TYPE_INVALID",
        "NONE",
        "READER_IN_USE",
        "READER_UNAVAILABLE",
        "ACTION_CANCELED",
        "SERVER_DRIVEN_DISABLED",
        "INTEGRATION_MODE_MISMATCH",
        "COMMAND_NOT_SUPPORTED",
        "READER_HARDWARE_FAULT",
        "Companion",
        "terminal_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum ACTION_CANCELED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/event_channel/pub/message/ErrorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMAND_NOT_SUPPORTED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;

.field public static final enum ERROR_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum INTEGRATION_MODE_MISMATCH:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum NONE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum READER_HARDWARE_FAULT:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum READER_IN_USE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum READER_UNAVAILABLE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

.field public static final enum SERVER_DRIVEN_DISABLED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/event_channel/pub/message/ErrorType;
    .locals 9

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->ERROR_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->NONE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_IN_USE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_UNAVAILABLE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v4, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->ACTION_CANCELED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v5, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->SERVER_DRIVEN_DISABLED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v6, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->INTEGRATION_MODE_MISMATCH:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v7, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->COMMAND_NOT_SUPPORTED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    sget-object v8, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_HARDWARE_FAULT:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v1, "ERROR_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->ERROR_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 20
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->NONE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 21
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "READER_IN_USE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_IN_USE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 22
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "READER_UNAVAILABLE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_UNAVAILABLE:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 23
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "ACTION_CANCELED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->ACTION_CANCELED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 24
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "SERVER_DRIVEN_DISABLED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->SERVER_DRIVEN_DISABLED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 25
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "INTEGRATION_MODE_MISMATCH"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->INTEGRATION_MODE_MISMATCH:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 26
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "COMMAND_NOT_SUPPORTED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->COMMAND_NOT_SUPPORTED:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    .line 27
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    const-string v2, "READER_HARDWARE_FAULT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->READER_HARDWARE_FAULT:Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    invoke-static {}, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->$values()[Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->$VALUES:[Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->Companion:Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;

    .line 32
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 32
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/event_channel/pub/message/ErrorType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/event_channel/pub/message/ErrorType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->Companion:Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;->fromValue(I)Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/event_channel/pub/message/ErrorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ErrorType;
    .locals 1

    const-class v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/event_channel/pub/message/ErrorType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->$VALUES:[Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/event_channel/pub/message/ErrorType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/ErrorType;->value:I

    return v0
.end method
