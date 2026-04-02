.class public final enum Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
.super Ljava/lang/Enum;
.source "VersionInfoPb.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/VersionInfoPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\"\u0008\u0086\u0081\u0002\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001%B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "CLIENT_TYPE_INVALID",
        "TEST",
        "IOS_SDK",
        "ANDROID_SDK",
        "JS_SDK",
        "INDEX_SERVER",
        "INDEX_TOOL",
        "JAVA_QUEUE_CLIENT",
        "RACCOON",
        "WARDEN",
        "STRIPE_CLI",
        "ANDROID_READER",
        "ANDROID_READER_UPDATER",
        "BBPOS_FIRMWARE",
        "BBPOS_CONFIGURATION",
        "BBPOS_KEY_PROFILE",
        "ANDROID_STANDALONE_APP",
        "ANDROID_HANDOFF_APP",
        "STRIPE_API",
        "ANDROID_APK",
        "BBPOS_WPE_ROM",
        "CLIENT_TYPE_NOT_SET",
        "RN_IOS_SDK",
        "RN_ANDROID_SDK",
        "RN_SDK",
        "JAVA_SDK",
        "ORACLE_OPERA_MIDDLEWARE",
        "DOTNET_SDK",
        "STANDALONE_POS",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANDROID_APK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum ANDROID_HANDOFF_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .annotation runtime Lkotlin/Deprecated;
        message = "ANDROID_HANDOFF_APP is deprecated"
    .end annotation
.end field

.field public static final enum ANDROID_READER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum ANDROID_STANDALONE_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .annotation runtime Lkotlin/Deprecated;
        message = "ANDROID_STANDALONE_APP is deprecated"
    .end annotation
.end field

.field public static final enum BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum BBPOS_WPE_ROM:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum CLIENT_TYPE_NOT_SET:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final Companion:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;

.field public static final enum DOTNET_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum INDEX_SERVER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum INDEX_TOOL:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum JAVA_QUEUE_CLIENT:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum JAVA_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum JS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum ORACLE_OPERA_MIDDLEWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum RACCOON:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum RN_IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum RN_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum STANDALONE_POS:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum STRIPE_API:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum STRIPE_CLI:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum TEST:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

.field public static final enum WARDEN:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .locals 30

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v2, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->TEST:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v3, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v4, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v5, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v6, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_SERVER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v7, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_TOOL:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v8, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_QUEUE_CLIENT:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v9, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RACCOON:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v10, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->WARDEN:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v11, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_CLI:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v12, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v13, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v14, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v15, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v16, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v17, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_STANDALONE_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v18, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_HANDOFF_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v19, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_API:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v20, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_APK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v21, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_WPE_ROM:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v22, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_NOT_SET:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v23, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v24, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v25, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v26, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v27, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ORACLE_OPERA_MIDDLEWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v28, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->DOTNET_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    sget-object v29, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STANDALONE_POS:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    filled-new-array/range {v1 .. v29}, [Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 220
    new-instance v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v1, "CLIENT_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 224
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "TEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->TEST:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 229
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "IOS_SDK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 234
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_SDK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 238
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "JS_SDK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 243
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "INDEX_SERVER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_SERVER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 248
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "INDEX_TOOL"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_TOOL:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 252
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "JAVA_QUEUE_CLIENT"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_QUEUE_CLIENT:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 256
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "RACCOON"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RACCOON:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 260
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "WARDEN"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->WARDEN:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 264
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "STRIPE_CLI"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_CLI:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 268
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_READER"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 272
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_READER_UPDATER"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 273
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "BBPOS_FIRMWARE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 274
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "BBPOS_CONFIGURATION"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 275
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "BBPOS_KEY_PROFILE"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 279
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_STANDALONE_APP"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_STANDALONE_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 284
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_HANDOFF_APP"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_HANDOFF_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 289
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "STRIPE_API"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_API:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 293
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "ANDROID_APK"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_APK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 297
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "BBPOS_WPE_ROM"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_WPE_ROM:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 301
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const-string v2, "CLIENT_TYPE_NOT_SET"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_NOT_SET:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 305
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v4, "RN_IOS_SDK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 309
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v4, "RN_ANDROID_SDK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 313
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v4, "RN_SDK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 317
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v4, "JAVA_SDK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 321
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v4, "ORACLE_OPERA_MIDDLEWARE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ORACLE_OPERA_MIDDLEWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 325
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string v4, "DOTNET_SDK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->DOTNET_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    .line 329
    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string v4, "STANDALONE_POS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STANDALONE_POS:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-static {}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->$values()[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->$VALUES:[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->Companion:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;

    .line 334
    const-class v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 336
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 334
    new-instance v3, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->Companion:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;->fromValue(I)Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->$VALUES:[Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->value:I

    return v0
.end method
