.class public final Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;
.super Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;
.source "UpdateRebootTimeResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;",
        "()V",
        "reboot"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;

    invoke-direct {v0}, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;->INSTANCE:Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Success;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
