.class final Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;

    invoke-direct {v0}, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;-><init>()V

    sput-object v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;
    .locals 1

    .line 42
    sget-object v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory$InstanceHolder;->INSTANCE:Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;

    return-object v0
.end method
