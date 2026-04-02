.class final Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TmsModule_ProvideTmsIngesterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;
    .locals 1

    .line 42
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory$InstanceHolder;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;

    return-object v0
.end method
