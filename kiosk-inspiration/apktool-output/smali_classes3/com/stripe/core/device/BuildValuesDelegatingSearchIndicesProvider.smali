.class public final Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;
.super Ljava/lang/Object;
.source "BuildValuesDelegatingSearchIndicesProvider.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001b\u0010\u0005\u001a\u00020\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;",
        "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
        "(Lcom/stripe/core/device/SerialSupplier;)V",
        "baseSearchIndices",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "getBaseSearchIndices",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "baseSearchIndices$delegate",
        "Lkotlin/Lazy;",
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
.field private final baseSearchIndices$delegate:Lkotlin/Lazy;

.field private final serialSupplier:Lcom/stripe/core/device/SerialSupplier;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/SerialSupplier;)V
    .locals 1

    const-string v0, "serialSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    .line 13
    new-instance p1, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider$baseSearchIndices$2;

    invoke-direct {p1, p0}, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider$baseSearchIndices$2;-><init>(Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;->baseSearchIndices$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSerialSupplier$p(Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;)Lcom/stripe/core/device/SerialSupplier;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    return-object p0
.end method


# virtual methods
.method public getBaseSearchIndices()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;->baseSearchIndices$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    return-object v0
.end method
