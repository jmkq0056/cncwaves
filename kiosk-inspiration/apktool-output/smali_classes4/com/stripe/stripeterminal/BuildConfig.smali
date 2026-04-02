.class public final Lcom/stripe/stripeterminal/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/BuildConfig;",
        "",
        "()V",
        "BUILD_TYPE",
        "",
        "LIBRARY_PACKAGE_NAME",
        "MIN_SDK_VERSION",
        "",
        "SDK_VERSION_NAME",
        "core_publish"
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
.field public static final BUILD_TYPE:Ljava/lang/String; = "publish"

.field public static final INSTANCE:Lcom/stripe/stripeterminal/BuildConfig;

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.stripe.stripeterminal"

.field public static final MIN_SDK_VERSION:I = 0x1a

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "4.1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/BuildConfig;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/BuildConfig;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/BuildConfig;->INSTANCE:Lcom/stripe/stripeterminal/BuildConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
