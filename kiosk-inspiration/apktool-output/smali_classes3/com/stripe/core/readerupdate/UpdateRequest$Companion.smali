.class public final Lcom/stripe/core/readerupdate/UpdateRequest$Companion;
.super Ljava/lang/Object;
.source "UpdateRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/readerupdate/UpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004J*\u0010\r\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004J*\u0010\u000e\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004J*\u0010\u000f\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/UpdateRequest$Companion;",
        "",
        "()V",
        "CURRENT_VERSION_TAG_KEY",
        "",
        "HARDWARE_VERSION_TAG_KEY",
        "TAG_UNKNOWN",
        "TARGET_VERSION_TAG_KEY",
        "config",
        "Lcom/stripe/core/readerupdate/UpdateRequest;",
        "fromVersion",
        "toVersion",
        "hardwareVersion",
        "firmware",
        "keys",
        "settings",
        "updatePackage",
        "readerupdate_release"
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

    invoke-direct {p0}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;-><init>()V

    return-void
.end method

.method public static synthetic config$default(Lcom/stripe/core/readerupdate/UpdateRequest$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic firmware$default(Lcom/stripe/core/readerupdate/UpdateRequest$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 39
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic keys$default(Lcom/stripe/core/readerupdate/UpdateRequest$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 31
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->keys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic settings$default(Lcom/stripe/core/readerupdate/UpdateRequest$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 47
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->settings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 8

    .line 36
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "configUpdate"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 8

    .line 44
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "firmwareUpdate"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final keys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 8

    .line 32
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "keyUpdate"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final settings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 8

    .line 52
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "settingsUpdate"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final updatePackage()Lcom/stripe/core/readerupdate/UpdateRequest;
    .locals 7

    .line 28
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateRequest;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    const-string v1, "updatePackage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerupdate/UpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
