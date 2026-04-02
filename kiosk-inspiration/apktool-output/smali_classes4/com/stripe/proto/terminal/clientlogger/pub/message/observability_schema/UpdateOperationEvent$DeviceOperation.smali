.class public final enum Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;
.super Ljava/lang/Enum;
.source "UpdateOperationEvent.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "DEVICE_OPERATION_INVALID",
        "DEVICE_REBOOT",
        "CLIENT_RESTART",
        "RESUME_NORMAL_OPERATION",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CLIENT_RESTART:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;

.field public static final enum DEVICE_OPERATION_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

.field public static final enum DEVICE_REBOOT:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

.field public static final enum RESUME_NORMAL_OPERATION:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;
    .locals 4

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->DEVICE_OPERATION_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->DEVICE_REBOOT:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->CLIENT_RESTART:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->RESUME_NORMAL_OPERATION:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 445
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    const-string v1, "DEVICE_OPERATION_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->DEVICE_OPERATION_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    .line 446
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    const-string v2, "DEVICE_REBOOT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->DEVICE_REBOOT:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    .line 450
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    const-string v2, "CLIENT_RESTART"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->CLIENT_RESTART:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    .line 451
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    const-string v2, "RESUME_NORMAL_OPERATION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->RESUME_NORMAL_OPERATION:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    invoke-static {}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->$values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;

    .line 456
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 458
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 456
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 443
    iput p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;->fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;
    .locals 1

    const-class v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;
    .locals 1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->value:I

    return v0
.end method
