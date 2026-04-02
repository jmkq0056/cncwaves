.class public final enum Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;
.super Ljava/lang/Enum;
.source "TerminalSettingValue.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/TerminalSettingValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TERMINAL_SETTING_STATUS_UNKNOWN",
        "SUCCESS",
        "TLV_INCORRECT",
        "TAG_NOT_FOUND",
        "LENGTH_INCORRECT",
        "BOOTLOADER_NOT_SUPPORT",
        "TAG_NOT_ALLOWED_TO_ACCESS",
        "TAG_NOT_WRITTEN_CORRECTLY",
        "INVALID_VALUE",
        "USER_DEFINED_DATA_NOT_ENALBLED",
        "TAG_NOT_UPDATED",
        "UNKNOWN",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final Companion:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;

.field public static final enum INVALID_VALUE:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum LENGTH_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum SUCCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TAG_NOT_FOUND:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TAG_NOT_UPDATED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TERMINAL_SETTING_STATUS_UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum TLV_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

.field public static final enum USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;
    .locals 12

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TERMINAL_SETTING_STATUS_UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->SUCCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v2, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TLV_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_FOUND:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v4, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->LENGTH_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v5, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v6, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v7, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v8, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->INVALID_VALUE:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v9, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v10, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    sget-object v11, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    filled-new-array/range {v0 .. v11}, [Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 188
    new-instance v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v1, "TERMINAL_SETTING_STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TERMINAL_SETTING_STATUS_UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 189
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->SUCCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 190
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "TLV_INCORRECT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TLV_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 191
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "TAG_NOT_FOUND"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_FOUND:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 192
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "LENGTH_INCORRECT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->LENGTH_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 193
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "BOOTLOADER_NOT_SUPPORT"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 194
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "TAG_NOT_ALLOWED_TO_ACCESS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 195
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "TAG_NOT_WRITTEN_CORRECTLY"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 196
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "INVALID_VALUE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->INVALID_VALUE:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 197
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "USER_DEFINED_DATA_NOT_ENALBLED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 198
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "TAG_NOT_UPDATED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 199
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const-string v2, "UNKNOWN"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    invoke-static {}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->$values()[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->$VALUES:[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->Companion:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;

    .line 204
    const-class v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 204
    new-instance v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput p3, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->Companion:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;->fromValue(I)Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;
    .locals 1

    const-class v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;
    .locals 1

    sget-object v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->$VALUES:[Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->value:I

    return v0
.end method
