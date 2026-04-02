.class final synthetic Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$4;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "DefaultOfflineRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    const-string v4, "getSaveAccountOfflineConfigJob()Lkotlinx/coroutines/Job;"

    const/4 v5, 0x0

    const-string v3, "saveAccountOfflineConfigJob"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$4;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getSaveAccountOfflineConfigJob$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$4;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$setSaveAccountOfflineConfigJob$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlinx/coroutines/Job;)V

    return-void
.end method
