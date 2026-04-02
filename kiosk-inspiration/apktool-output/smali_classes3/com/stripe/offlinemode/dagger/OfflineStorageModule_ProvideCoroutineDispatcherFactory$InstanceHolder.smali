.class final Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "OfflineStorageModule_ProvideCoroutineDispatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;

    return-object v0
.end method
