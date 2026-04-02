.class public final Lcom/stripe/offlinemode/OfflineUUIDGenerator;
.super Ljava/lang/Object;
.source "OfflineUUIDGenerator.kt"

# interfaces
.implements Lcom/stripe/offlinemode/OfflineIdGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/OfflineUUIDGenerator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/offlinemode/OfflineUUIDGenerator;",
        "Lcom/stripe/offlinemode/OfflineIdGenerator;",
        "()V",
        "generateOfflineId",
        "",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "prefix",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/OfflineUUIDGenerator$Companion;

.field private static final DASH:Ljava/lang/String; = "-"

.field private static final PAYMENT_INTENT_PREFIX:Ljava/lang/String; = "pio_"

.field private static final SETUP_INTENT_PREFIX:Ljava/lang/String; = "setio_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/OfflineUUIDGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/OfflineUUIDGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/OfflineUUIDGenerator;->Companion:Lcom/stripe/offlinemode/OfflineUUIDGenerator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateOfflineId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "toString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateOfflineId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne p1, v0, :cond_0

    .line 10
    const-string p1, "pio_"

    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "setio_"

    .line 9
    :goto_0
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/OfflineUUIDGenerator;->generateOfflineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
