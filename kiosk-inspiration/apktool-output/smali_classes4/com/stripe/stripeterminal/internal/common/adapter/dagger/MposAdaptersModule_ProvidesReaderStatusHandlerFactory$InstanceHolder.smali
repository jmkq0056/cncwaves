.class final Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "MposAdaptersModule_ProvidesReaderStatusHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;

    return-object v0
.end method
