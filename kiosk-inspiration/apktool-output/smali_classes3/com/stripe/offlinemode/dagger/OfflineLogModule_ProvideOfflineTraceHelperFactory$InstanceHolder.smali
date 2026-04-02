.class final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideOfflineTraceHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;

    return-object v0
.end method
