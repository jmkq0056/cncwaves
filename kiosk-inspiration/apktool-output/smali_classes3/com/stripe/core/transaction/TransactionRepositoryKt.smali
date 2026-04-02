.class public final Lcom/stripe/core/transaction/TransactionRepositoryKt;
.super Ljava/lang/Object;
.source "TransactionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "allowExtendedTransactions",
        "",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "transaction_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final allowExtendedTransactions(Lcom/stripe/proto/model/common/VersionInfoPb;)Z
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 424
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    new-instance v2, Lcom/stripe/jvmcore/posversion/POSVersion;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 425
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->IOS_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    new-instance v2, Lcom/stripe/jvmcore/posversion/POSVersion;

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 426
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->ANDROID_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    new-instance v2, Lcom/stripe/jvmcore/posversion/POSVersion;

    const/4 v7, 0x4

    invoke-direct {v2, v6, v7, v4, v5}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    .line 427
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->JAVA_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    new-instance v2, Lcom/stripe/jvmcore/posversion/POSVersion;

    new-instance v6, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;

    const-string v8, "b"

    invoke-direct {v6, v8, v3}, Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4, v4, v6}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 428
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;->DOTNET_SDK:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    new-instance v2, Lcom/stripe/jvmcore/posversion/POSVersion;

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/stripe/jvmcore/posversion/POSVersion;-><init>(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    .line 423
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/stripe/proto/model/common/VersionInfoPb;->client_type:Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/posversion/POSVersion;

    .line 431
    iget-object p0, p0, Lcom/stripe/proto/model/common/VersionInfoPb;->client_version:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/stripe/jvmcore/posversion/POSVersion;->Companion:Lcom/stripe/jvmcore/posversion/POSVersion$Companion;

    invoke-virtual {v1, p0}, Lcom/stripe/jvmcore/posversion/POSVersion$Companion;->toPOSVersion(Ljava/lang/String;)Lcom/stripe/jvmcore/posversion/POSVersion;

    move-result-object v5

    :cond_0
    if-eqz v0, :cond_2

    if-nez v5, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v5, v0}, Lcom/stripe/jvmcore/posversion/POSVersion;->compareTo(Lcom/stripe/jvmcore/posversion/POSVersion;)I

    move-result p0

    if-ltz p0, :cond_2

    return v3

    :cond_2
    :goto_0
    return v4
.end method
