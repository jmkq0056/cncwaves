.class public final Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;
.super Ljava/lang/Object;
.source "ApplicationInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/terminal/appinfo/ApplicationInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u008a\u0001\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "clientType",
        "",
        "clientVersion",
        "deviceOsVersion",
        "deviceModel",
        "deviceName",
        "deviceUuid",
        "Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "deviceManufacturer",
        "appId",
        "appVersion",
        "shopifyReadersEnabled",
        "",
        "wisepad3SReadersEnabled",
        "embeddedWithinStripeReactNativeSdk",
        "reactNativeSdkVersion",
        "deviceArchitecture",
        "public_release"
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 17

    const-string v0, "deviceUuid"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/stripe/terminal/appinfo/ApplicationInformation;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz p2, :cond_2

    .line 40
    invoke-static/range {p2 .. p2}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    move-object v4, v3

    :cond_3
    if-eqz p3, :cond_4

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v0

    :goto_2
    if-nez v5, :cond_5

    move-object v5, v3

    :cond_5
    if-eqz p4, :cond_6

    .line 42
    invoke-static/range {p4 .. p4}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v0

    :goto_3
    if-nez v6, :cond_7

    move-object v6, v3

    :cond_7
    if-eqz p5, :cond_8

    .line 43
    invoke-static/range {p5 .. p5}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    move-object v8, v0

    :goto_4
    if-nez v8, :cond_9

    move-object v8, v3

    :cond_9
    if-eqz p7, :cond_a

    .line 45
    invoke-static/range {p7 .. p7}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_a
    move-object v9, v0

    :goto_5
    if-nez v9, :cond_b

    move-object v9, v3

    :cond_b
    if-eqz p8, :cond_c

    .line 46
    invoke-static/range {p8 .. p8}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_c
    move-object v10, v0

    :goto_6
    if-nez v10, :cond_d

    move-object v10, v3

    :cond_d
    if-eqz p9, :cond_e

    .line 47
    invoke-static/range {p9 .. p9}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_e
    move-object v11, v0

    :goto_7
    if-nez v11, :cond_f

    move-object v11, v3

    :cond_f
    if-eqz p13, :cond_10

    .line 51
    invoke-static/range {p13 .. p13}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_10
    move-object v12, v0

    :goto_8
    if-nez v12, :cond_11

    move-object v14, v3

    goto :goto_9

    :cond_11
    move-object v14, v12

    :goto_9
    if-eqz p14, :cond_12

    .line 52
    invoke-static/range {p14 .. p14}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_13

    move-object v15, v3

    goto :goto_a

    :cond_13
    move-object v15, v0

    :goto_a
    const/16 v16, 0x0

    move/from16 v12, p11

    move/from16 v13, p12

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move/from16 v11, p10

    .line 38
    invoke-direct/range {v1 .. v16}, Lcom/stripe/terminal/appinfo/ApplicationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
