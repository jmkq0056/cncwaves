.class public interface abstract Lcom/stripe/core/device/BuildValuesFactory;
.super Ljava/lang/Object;
.source "BuildValuesFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/BuildValuesFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0005\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/device/BuildValuesFactory;",
        "",
        "create",
        "Lcom/stripe/core/device/BuildValues;",
        "Companion",
        "device_release"
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
.field public static final Companion:Lcom/stripe/core/device/BuildValuesFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/core/device/BuildValuesFactory$Companion;->$$INSTANCE:Lcom/stripe/core/device/BuildValuesFactory$Companion;

    sput-object v0, Lcom/stripe/core/device/BuildValuesFactory;->Companion:Lcom/stripe/core/device/BuildValuesFactory$Companion;

    return-void
.end method


# virtual methods
.method public abstract create()Lcom/stripe/core/device/BuildValues;
.end method
