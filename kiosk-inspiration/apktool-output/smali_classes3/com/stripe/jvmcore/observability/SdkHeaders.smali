.class public final Lcom/stripe/jvmcore/observability/SdkHeaders;
.super Ljava/lang/Object;
.source "SdkHeaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/jvmcore/observability/SdkHeaders;",
        "",
        "()V",
        "ACCOUNT_ID",
        "",
        "ACTION_ID",
        "SESSION_ID",
        "SESSION_TOKEN",
        "observability"
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
.field public static final ACCOUNT_ID:Ljava/lang/String; = "Stripe-Account"

.field public static final ACTION_ID:Ljava/lang/String; = "X-Stripe-Action-Id"

.field public static final INSTANCE:Lcom/stripe/jvmcore/observability/SdkHeaders;

.field public static final SESSION_ID:Ljava/lang/String; = "X-Stripe-Session-Id"

.field public static final SESSION_TOKEN:Ljava/lang/String; = "X-Stripe-Session-Token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/observability/SdkHeaders;

    invoke-direct {v0}, Lcom/stripe/jvmcore/observability/SdkHeaders;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/observability/SdkHeaders;->INSTANCE:Lcom/stripe/jvmcore/observability/SdkHeaders;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
