.class public final Lcom/stripe/core/bbpos/ReaderVersionMaker;
.super Ljava/lang/Object;
.source "ReaderVersionMaker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0002\u0008\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/ReaderVersionMaker;",
        "",
        "()V",
        "CONFIG_VERSION",
        "",
        "FIRMWARE_VERSION",
        "KEY_PROFILE_NAME",
        "PIN_KEY_PROFILE_ID",
        "fromBbposData",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "data",
        "Ljava/util/Hashtable;",
        "fromBbposData$sdk_release",
        "sdk_release"
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
.field private static final CONFIG_VERSION:Ljava/lang/String; = "terminalSettingVersion"

.field private static final FIRMWARE_VERSION:Ljava/lang/String; = "firmwareVersion"

.field public static final INSTANCE:Lcom/stripe/core/bbpos/ReaderVersionMaker;

.field private static final KEY_PROFILE_NAME:Ljava/lang/String; = "keyProfileName"

.field private static final PIN_KEY_PROFILE_ID:Ljava/lang/String; = "pinKeyProfileID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/ReaderVersionMaker;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/ReaderVersionMaker;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/ReaderVersionMaker;->INSTANCE:Lcom/stripe/core/bbpos/ReaderVersionMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBbposData$sdk_release(Ljava/util/Hashtable;)Lcom/stripe/core/hardware/updates/ReaderVersion;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lcom/stripe/core/hardware/updates/ReaderVersion;

    const-string v1, "terminalSettingVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "firmwareVersion"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "keyProfileName"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "pinKeyProfileID"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
