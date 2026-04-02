.class public final Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;
.super Ljava/lang/Object;
.source "OfflinePaymentMethodValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflinePaymentMethodValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflinePaymentMethodValidator.kt\ncom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1549#2:37\n1620#2,3:38\n*S KotlinDebug\n*F\n+ 1 OfflinePaymentMethodValidator.kt\ncom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion\n*L\n31#1:37\n31#1:38,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;",
        "",
        "()V",
        "AID_MISSING_ERROR_MESSAGE",
        "",
        "MAGSTRIPE_READ_METHODS",
        "",
        "getMAGSTRIPE_READ_METHODS",
        "()Ljava/util/Set;",
        "TVR_MISSING_ERROR_MESSAGE",
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
.field static final synthetic $$INSTANCE:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

.field public static final AID_MISSING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to retrieve application ID from card EMV data."

.field private static final MAGSTRIPE_READ_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TVR_MISSING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to retrieve verification results from EMV data."


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

    invoke-direct {v0}, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;->$$INSTANCE:Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    sget-object v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_FALLBACK:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    aput-object v2, v0, v1

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 31
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 37
    check-cast v1, Ljava/lang/Iterable;

    .line 31
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;->MAGSTRIPE_READ_METHODS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAGSTRIPE_READ_METHODS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator$Companion;->MAGSTRIPE_READ_METHODS:Ljava/util/Set;

    return-object v0
.end method
