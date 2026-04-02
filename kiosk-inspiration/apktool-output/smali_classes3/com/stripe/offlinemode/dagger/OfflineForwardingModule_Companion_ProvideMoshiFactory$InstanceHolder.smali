.class final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideMoshiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory$InstanceHolder;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;

    return-object v0
.end method
