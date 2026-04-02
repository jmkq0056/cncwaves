.class public final enum Lcom/stripe/proto/model/common/ReleaseClientType;
.super Ljava/lang/Enum;
.source "ReleaseClientType.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/ReleaseClientType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/ReleaseClientType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ReleaseClientType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "INVALID_RELEASE_CLIENT_TYPE",
        "LOCALIZATION",
        "RACCOON",
        "WARDEN",
        "RACCOON_UX_BUNDLE",
        "ANDROID_READER",
        "ANDROID_READER_UPDATER",
        "BBPOS_FIRMWARE",
        "BBPOS_CONFIGURATION",
        "BBPOS_KEY_PROFILE",
        "Companion",
        "common_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/ReleaseClientType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANDROID_READER:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final Companion:Lcom/stripe/proto/model/common/ReleaseClientType$Companion;

.field public static final enum INVALID_RELEASE_CLIENT_TYPE:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum LOCALIZATION:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum RACCOON:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/ReleaseClientType;

.field public static final enum WARDEN:Lcom/stripe/proto/model/common/ReleaseClientType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/ReleaseClientType;
    .locals 10

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseClientType;->INVALID_RELEASE_CLIENT_TYPE:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->LOCALIZATION:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v2, Lcom/stripe/proto/model/common/ReleaseClientType;->RACCOON:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v3, Lcom/stripe/proto/model/common/ReleaseClientType;->WARDEN:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v4, Lcom/stripe/proto/model/common/ReleaseClientType;->RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v5, Lcom/stripe/proto/model/common/ReleaseClientType;->ANDROID_READER:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v6, Lcom/stripe/proto/model/common/ReleaseClientType;->ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v7, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v8, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/ReleaseClientType;

    sget-object v9, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/ReleaseClientType;

    filled-new-array/range {v0 .. v9}, [Lcom/stripe/proto/model/common/ReleaseClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v1, "INVALID_RELEASE_CLIENT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/ReleaseClientType;->INVALID_RELEASE_CLIENT_TYPE:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 20
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "LOCALIZATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->LOCALIZATION:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 21
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "RACCOON"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->RACCOON:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 22
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "WARDEN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->WARDEN:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "RACCOON_UX_BUNDLE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "ANDROID_READER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->ANDROID_READER:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "ANDROID_READER_UPDATER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "BBPOS_FIRMWARE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "BBPOS_CONFIGURATION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/ReleaseClientType;

    .line 28
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    const-string v2, "BBPOS_KEY_PROFILE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/ReleaseClientType;

    invoke-static {}, Lcom/stripe/proto/model/common/ReleaseClientType;->$values()[Lcom/stripe/proto/model/common/ReleaseClientType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->$VALUES:[Lcom/stripe/proto/model/common/ReleaseClientType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/ReleaseClientType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/ReleaseClientType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseClientType;->Companion:Lcom/stripe/proto/model/common/ReleaseClientType$Companion;

    .line 33
    const-class v1, Lcom/stripe/proto/model/common/ReleaseClientType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 33
    new-instance v3, Lcom/stripe/proto/model/common/ReleaseClientType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/ReleaseClientType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/ReleaseClientType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/ReleaseClientType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/proto/model/common/ReleaseClientType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/ReleaseClientType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseClientType;->Companion:Lcom/stripe/proto/model/common/ReleaseClientType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/ReleaseClientType$Companion;->fromValue(I)Lcom/stripe/proto/model/common/ReleaseClientType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/ReleaseClientType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseClientType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/ReleaseClientType;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/ReleaseClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/ReleaseClientType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/ReleaseClientType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseClientType;->$VALUES:[Lcom/stripe/proto/model/common/ReleaseClientType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/ReleaseClientType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/model/common/ReleaseClientType;->value:I

    return v0
.end method
