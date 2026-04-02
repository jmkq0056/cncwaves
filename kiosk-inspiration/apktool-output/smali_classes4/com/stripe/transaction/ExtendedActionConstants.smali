.class public final Lcom/stripe/transaction/ExtendedActionConstants;
.super Ljava/lang/Object;
.source "ExtendedActionConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/transaction/ExtendedActionConstants;",
        "",
        "()V",
        "ERROR_CODES_REQUIRING_EXTENDED_ACTION",
        "",
        "",
        "MOBILE_DEVICE_AUTH_REQUIRED",
        "OFFLINE_PIN_REQUIRED",
        "ONLINE_OR_OFFLINE_PIN_REQUIRED",
        "isExtendedActionError",
        "",
        "code",
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


# static fields
.field private static final ERROR_CODES_REQUIRING_EXTENDED_ACTION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stripe/transaction/ExtendedActionConstants;

.field public static final MOBILE_DEVICE_AUTH_REQUIRED:Ljava/lang/String; = "mobile_device_authentication_required"

.field public static final OFFLINE_PIN_REQUIRED:Ljava/lang/String; = "offline_pin_required"

.field public static final ONLINE_OR_OFFLINE_PIN_REQUIRED:Ljava/lang/String; = "online_or_offline_pin_required"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/transaction/ExtendedActionConstants;

    invoke-direct {v0}, Lcom/stripe/transaction/ExtendedActionConstants;-><init>()V

    sput-object v0, Lcom/stripe/transaction/ExtendedActionConstants;->INSTANCE:Lcom/stripe/transaction/ExtendedActionConstants;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mobile_device_authentication_required"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "offline_pin_required"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "online_or_offline_pin_required"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/transaction/ExtendedActionConstants;->ERROR_CODES_REQUIRING_EXTENDED_ACTION:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isExtendedActionError(Ljava/lang/String;)Z
    .locals 1

    .line 17
    sget-object v0, Lcom/stripe/transaction/ExtendedActionConstants;->ERROR_CODES_REQUIRING_EXTENDED_ACTION:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
