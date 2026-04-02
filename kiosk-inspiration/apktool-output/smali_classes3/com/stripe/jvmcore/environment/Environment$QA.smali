.class public final Lcom/stripe/jvmcore/environment/Environment$QA;
.super Lcom/stripe/jvmcore/environment/Environment;
.source "Environment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/environment/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QA"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/jvmcore/environment/Environment$QA;",
        "Lcom/stripe/jvmcore/environment/Environment;",
        "()V",
        "environment"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/environment/Environment$QA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/environment/Environment$QA;

    invoke-direct {v0}, Lcom/stripe/jvmcore/environment/Environment$QA;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/environment/Environment$QA;->INSTANCE:Lcom/stripe/jvmcore/environment/Environment$QA;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 43
    const-string v7, "QA"

    const/4 v8, 0x0

    .line 36
    const-string v1, "https://qa-api.stripe.com"

    const-string v2, "https://qa-files.stripe.com"

    const-string v3, "https://qa-armada.stripe.com"

    const-string v4, "https://qa-gator.stripe.com"

    const-string v5, "https://qa-gator.stripe.com"

    const-string v6, "https://qa-armada.stripe.com"

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/jvmcore/environment/Environment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
