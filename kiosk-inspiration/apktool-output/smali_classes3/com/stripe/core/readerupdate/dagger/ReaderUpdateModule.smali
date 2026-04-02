.class public final Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;
.super Ljava/lang/Object;
.source "ReaderUpdateModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/readerupdate/dagger/ArmadaModule;,
        Lcom/stripe/core/readerupdate/dagger/BbposModule;,
        Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;,
        Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;,
        Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;,
        Lcom/stripe/core/readerupdate/dagger/TmsModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;",
        "",
        "()V",
        "readerupdate_release"
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
