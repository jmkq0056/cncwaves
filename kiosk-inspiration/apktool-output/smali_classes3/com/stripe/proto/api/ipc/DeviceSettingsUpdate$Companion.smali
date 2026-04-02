.class public final Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Companion;
.super Ljava/lang/Object;
.source "DeviceSettingsUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0008\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0008\rH\u0086\u0008\u00f8\u0001\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;",
        "serialVersionUID",
        "",
        "build",
        "body",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic build(Lkotlin/jvm/functions/Function1;)Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate$Builder;->build()Lcom/stripe/proto/api/ipc/DeviceSettingsUpdate;

    move-result-object p1

    return-object p1
.end method
