.class public final Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;
.super Ljava/lang/Object;
.source "VersionInfoPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 372
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STANDALONE_POS:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 371
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->DOTNET_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 370
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ORACLE_OPERA_MIDDLEWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 369
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 368
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 367
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 366
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RN_IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 365
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_NOT_SET:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 364
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_WPE_ROM:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 363
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_APK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 362
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_API:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 361
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_HANDOFF_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 360
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_STANDALONE_APP:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 359
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_KEY_PROFILE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 358
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_CONFIGURATION:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 357
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->BBPOS_FIRMWARE:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 356
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER_UPDATER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 355
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_READER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 354
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->STRIPE_CLI:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 353
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->WARDEN:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 352
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->RACCOON:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 351
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_QUEUE_CLIENT:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 350
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_TOOL:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 349
    :pswitch_17
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->INDEX_SERVER:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 348
    :pswitch_18
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 347
    :pswitch_19
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 346
    :pswitch_1a
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 345
    :pswitch_1b
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->TEST:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    .line 344
    :pswitch_1c
    sget-object p1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->CLIENT_TYPE_INVALID:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
