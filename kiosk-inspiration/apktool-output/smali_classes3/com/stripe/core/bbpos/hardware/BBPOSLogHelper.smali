.class public final Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;
.super Ljava/lang/Object;
.source "BBPOSLogHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBBPOSLogHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BBPOSLogHelper.kt\ncom/stripe/core/bbpos/hardware/BBPOSLogHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n819#2:43\n847#2,2:44\n*S KotlinDebug\n*F\n+ 1 BBPOSLogHelper.kt\ncom/stripe/core/bbpos/hardware/BBPOSLogHelper\n*L\n8#1:43\n8#1:44,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\u0005*\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nR\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;",
        "",
        "()V",
        "DebugFieldsToRedact",
        "",
        "",
        "getDebugFieldsToRedact$hardware_release$annotations",
        "getDebugFieldsToRedact$hardware_release",
        "()Ljava/util/Set;",
        "toLogString",
        "",
        "hardware_release"
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
.field private static final DebugFieldsToRedact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;

    const/16 v0, 0x16

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "encCvv"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "encPan"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "expiryDate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 21
    const-string v3, "maskedPan"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 22
    const-string v3, "maskedPAN"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 23
    const-string v3, "encryptedTrack2"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 24
    const-string v3, "ksn"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 25
    const-string v3, "serviceCode"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 26
    const-string v4, "epb"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    .line 27
    const-string v4, "epbKsn"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    .line 28
    const-string v4, "cardholderName"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    .line 29
    const-string v4, "encTrack1"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    .line 30
    const-string v4, "encTrack2"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    .line 31
    const-string v4, "encTrack3"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    .line 32
    const-string v4, "encTracks"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    .line 33
    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 34
    const-string v2, "formatID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 35
    aput-object v3, v0, v1

    const/16 v1, 0x12

    .line 36
    const-string v2, "track1Length"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 37
    const-string v2, "track2Length"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 38
    const-string v2, "track3Length"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 39
    const-string v2, "tlv"

    aput-object v2, v0, v1

    .line 17
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->DebugFieldsToRedact:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getDebugFieldsToRedact$hardware_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getDebugFieldsToRedact$hardware_release()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->DebugFieldsToRedact:Ljava/util/Set;

    return-object v0
.end method

.method public final toLogString(Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper;->DebugFieldsToRedact:Ljava/util/Set;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 43
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 9
    const-string v0, ","

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 10
    const-string v0, "{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    .line 11
    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .line 8
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper$toLogString$1$2;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/BBPOSLogHelper$toLogString$1$2;-><init>(Ljava/util/Map;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-object p1

    .line 13
    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method
