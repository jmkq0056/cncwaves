.class synthetic Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;
.super Ljava/lang/Object;
.source "OfflineApiRequestDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1116
    invoke-static {}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->values()[Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;->$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I

    :try_start_0
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;->$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I

    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;->$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I

    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao_Impl$26;->$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType:[I

    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
