.class public final Lcom/stripe/core/device/DefaultSerialSupplier;
.super Ljava/lang/Object;
.source "DefaultSerialSupplier.kt"

# interfaces
.implements Lcom/stripe/core/device/SerialSupplier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSerialSupplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSerialSupplier.kt\ncom/stripe/core/device/DefaultSerialSupplier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u0006H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/device/DefaultSerialSupplier;",
        "Lcom/stripe/core/device/SerialSupplier;",
        "isEmulator",
        "",
        "(Z)V",
        "get",
        "Lcom/stripe/core/serialnumber/DeviceSerialNumber;",
        "get-q_5ZKBc",
        "()Ljava/lang/String;",
        "getSerial",
        "",
        "getSerial$device_release",
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


# instance fields
.field private final isEmulator:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/stripe/core/device/DefaultSerialSupplier;->isEmulator:Z

    return-void
.end method


# virtual methods
.method public get-q_5ZKBc()Ljava/lang/String;
    .locals 7

    .line 23
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/core/device/DefaultSerialSupplier;

    .line 24
    iget-boolean v0, p0, Lcom/stripe/core/device/DefaultSerialSupplier;->isEmulator:Z

    if-eqz v0, :cond_0

    .line 27
    const-string v1, "emulator-5554"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/core/device/DefaultSerialSupplier;->getSerial$device_release()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "unknown"

    .line 33
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/core/serialnumber/DeviceSerialNumber;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSerial$device_release()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
