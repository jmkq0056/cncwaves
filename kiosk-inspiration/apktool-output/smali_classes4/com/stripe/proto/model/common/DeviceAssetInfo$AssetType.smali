.class public final enum Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
.super Ljava/lang/Enum;
.source "DeviceAssetInfo.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceAssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0081\u0002\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0019B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "ASSET_TYPE_INVALID",
        "P400_RACCOON",
        "P400_WARDEN",
        "RACCOON_UX_BUNDLE",
        "RACCOON_LOCALIZATION_BUNDLE",
        "EMV_CONFIG",
        "WISEPOS_READER",
        "WISEPOS_UPDATER",
        "BBPOS_FIRMWARE",
        "BBPOS_CONFIG",
        "BBPOS_KEY_PROFILE",
        "ANDROID_APK",
        "ANDROID_ROM",
        "FACTORY_IMAGE",
        "INTERNAL_ANDROID_APK",
        "UBER_LANGUAGE_PACK",
        "LANGUAGE_PACK",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum ANDROID_ROM:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum ASSET_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum BBPOS_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final Companion:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;

.field public static final enum EMV_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum FACTORY_IMAGE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum INTERNAL_ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum P400_RACCOON:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum P400_WARDEN:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum RACCOON_LOCALIZATION_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum UBER_LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum WISEPOS_READER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public static final enum WISEPOS_UPDATER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
    .locals 18

    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v2, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->P400_RACCOON:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v3, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->P400_WARDEN:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v4, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v5, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->RACCOON_LOCALIZATION_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v6, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->EMV_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v7, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->WISEPOS_READER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v8, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->WISEPOS_UPDATER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v9, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v10, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v11, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v12, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v13, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ANDROID_ROM:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v14, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->FACTORY_IMAGE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v15, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->INTERNAL_ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v16, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->UBER_LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    sget-object v17, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    filled-new-array/range {v1 .. v17}, [Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 286
    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v1, "ASSET_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 287
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "P400_RACCOON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->P400_RACCOON:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 288
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "P400_WARDEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->P400_WARDEN:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 289
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "RACCOON_UX_BUNDLE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->RACCOON_UX_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 290
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "RACCOON_LOCALIZATION_BUNDLE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->RACCOON_LOCALIZATION_BUNDLE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 291
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "EMV_CONFIG"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->EMV_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 292
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "WISEPOS_READER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->WISEPOS_READER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 293
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "WISEPOS_UPDATER"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->WISEPOS_UPDATER:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 294
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "BBPOS_FIRMWARE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 295
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "BBPOS_CONFIG"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_CONFIG:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 296
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "BBPOS_KEY_PROFILE"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 297
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "ANDROID_APK"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 298
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "ANDROID_ROM"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ANDROID_ROM:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 299
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "FACTORY_IMAGE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->FACTORY_IMAGE:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 300
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "INTERNAL_ANDROID_APK"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->INTERNAL_ANDROID_APK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 301
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "UBER_LANGUAGE_PACK"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->UBER_LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 302
    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    const-string v2, "LANGUAGE_PACK"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->LANGUAGE_PACK:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-static {}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->$values()[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->$VALUES:[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->Companion:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;

    .line 307
    const-class v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 309
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 307
    new-instance v3, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    iput p3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->Companion:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType$Companion;->fromValue(I)Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->$VALUES:[Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->value:I

    return v0
.end method
