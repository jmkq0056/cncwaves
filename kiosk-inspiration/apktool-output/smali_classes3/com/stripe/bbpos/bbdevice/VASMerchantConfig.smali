.class public Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public filter:Ljava/lang/String;

.field public merchantID:Ljava/lang/String;

.field public protocolMode:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;->FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->protocolMode:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->filter:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->merchantID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VASMerchantConfig{protocolMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->protocolMode:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', merchantID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->merchantID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/VASMerchantConfig;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
