.class public final enum Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;
.super Ljava/lang/Enum;
.source "RebootReason.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "REBOOT_REASON_INVALID",
        "REBOOT_REASON_ADB",
        "REBOOT_REASON_HARDWARE",
        "REBOOT_REASON_FACTORY_RESET",
        "REBOOT_REASON_POWER_OFF_FROM_POWER_MENU",
        "REBOOT_REASON_RESTART_FROM_POWER_MENU",
        "REBOOT_REASON_PCI",
        "REBOOT_REASON_ROM_UPDATE",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;

.field public static final enum REBOOT_REASON_ADB:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_FACTORY_RESET:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_HARDWARE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_PCI:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_POWER_OFF_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_RESTART_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public static final enum REBOOT_REASON_ROM_UPDATE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;
    .locals 8

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_ADB:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_HARDWARE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_FACTORY_RESET:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_POWER_OFF_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_RESTART_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_PCI:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    sget-object v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_ROM_UPDATE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v1, "REBOOT_REASON_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 23
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_ADB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_ADB:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 27
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_HARDWARE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_HARDWARE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 31
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_FACTORY_RESET"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_FACTORY_RESET:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 35
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_POWER_OFF_FROM_POWER_MENU"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_POWER_OFF_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 39
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_RESTART_FROM_POWER_MENU"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_RESTART_FROM_POWER_MENU:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 43
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_PCI"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_PCI:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 47
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const-string v2, "REBOOT_REASON_ROM_UPDATE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->REBOOT_REASON_ROM_UPDATE:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    invoke-static {}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->$values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;

    .line 52
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 52
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason$Companion;->fromValue(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;
    .locals 1

    const-class v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;
    .locals 1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->$VALUES:[Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;->value:I

    return v0
.end method
