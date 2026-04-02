.class final Lcom/stripe/bbpos/bbdevice/ccc039zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;
    }
.end annotation


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

.field private aaa001:I

.field aaa002:Ljava/lang/String;

.field aaa003:Ljava/lang/String;

.field aaa004:Ljava/lang/String;

.field aaa005:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field aaa006:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field aaa007:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa002:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa003:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa004:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa005:Ljava/util/Hashtable;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa006:Ljava/util/Hashtable;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa010()V

    return-void
.end method

.method static aaa000(Ljava/lang/String;I)I
    .locals 1

    .line 25
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 27
    div-int v0, p0, p1

    .line 28
    rem-int/2addr p0, p1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static aaa000(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0, p2}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 32
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p1, v0, :cond_1

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa000()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    return v0
.end method

.method aaa000(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;I)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 5
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;ILjava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputString1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 8
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 9
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa002:Ljava/lang/String;

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputString1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputString2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 12
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 13
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa002:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa003:Ljava/lang/String;

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputArrayListStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 21
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 22
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007:Ljava/util/ArrayList;

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;ILjava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;",
            "I",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputHashtableStrObj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 17
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 18
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa005:Ljava/util/Hashtable;

    return-void
.end method

.method aaa001()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007:Ljava/util/ArrayList;

    return-object v0
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;ILjava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;",
            "I",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setProcessingCommand] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputAdditionalState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputHashtableStrStr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    .line 3
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 4
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa006:Ljava/util/Hashtable;

    return-void
.end method

.method aaa002()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa005:Ljava/util/Hashtable;

    return-object v0
.end method

.method aaa003()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa006:Ljava/util/Hashtable;

    return-object v0
.end method

.method aaa004()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa002:Ljava/lang/String;

    return-object v0
.end method

.method aaa005()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa003:Ljava/lang/String;

    return-object v0
.end method

.method aaa006()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa004:Ljava/lang/String;

    return-object v0
.end method

.method aaa007()Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    return-object v0
.end method

.method aaa008()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa000zz;->aaa000:[I

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "getDeviceInfo"

    packed-switch v0, :pswitch_data_0

    .line 408
    const-string v0, ""

    return-object v0

    .line 307
    :pswitch_0
    const-string v0, "disableFactoryMode"

    return-object v0

    .line 308
    :pswitch_1
    const-string v0, "exitBootloader"

    return-object v0

    .line 309
    :pswitch_2
    const-string v0, "enterBootloader"

    return-object v0

    .line 310
    :pswitch_3
    const-string v0, "cleanForL2TestMasterPayPass"

    return-object v0

    .line 311
    :pswitch_4
    const-string v0, "sendDetForL2TestMasterPayPass"

    return-object v0

    .line 312
    :pswitch_5
    const-string v0, "getDebugLogForL2TestMasterPayPass"

    return-object v0

    .line 313
    :pswitch_6
    const-string v0, "updateAIDDirectly"

    return-object v0

    .line 314
    :pswitch_7
    const-string v0, "readAIDDirectly"

    return-object v0

    .line 315
    :pswitch_8
    const-string v0, "resetDebugLogForL2TestVisaPayWave"

    return-object v0

    .line 316
    :pswitch_9
    const-string v0, "getDebugLogForL2TestVisaPayWave"

    return-object v0

    .line 317
    :pswitch_a
    const-string v0, "keyInjectionCommandSetInternalKeyEncryptionKey"

    return-object v0

    .line 318
    :pswitch_b
    const-string v0, "keyInjectionCommandInjectTmk0"

    return-object v0

    .line 319
    :pswitch_c
    const-string v0, "keyInjectionCommandSendKekKcv"

    return-object v0

    .line 320
    :pswitch_d
    const-string v0, "keyInjectionCommandGetKek"

    return-object v0

    .line 321
    :pswitch_e
    const-string v0, "keyInjectionCommandInjectRsa"

    return-object v0

    .line 322
    :pswitch_f
    const-string v0, "sendVirtuCryptPEDKResponse"

    return-object v0

    .line 323
    :pswitch_10
    const-string v0, "virtuCryptPEDKRequest"

    return-object v0

    .line 324
    :pswitch_11
    const-string v0, "sendVirtuCryptPEDIResponse"

    return-object v0

    .line 325
    :pswitch_12
    const-string v0, "virtuCryptPEDIRequest"

    return-object v0

    .line 326
    :pswitch_13
    const-string v0, "getRandom"

    return-object v0

    .line 327
    :pswitch_14
    const-string v0, "resetWatchdogTimer"

    return-object v0

    .line 328
    :pswitch_15
    const-string v0, "disableBluetooth"

    return-object v0

    .line 329
    :pswitch_16
    const-string v0, "enableBluetooth"

    return-object v0

    .line 330
    :pswitch_17
    const-string v0, "stopHardwareFunctionalTest"

    return-object v0

    .line 331
    :pswitch_18
    const-string v0, "startHardwareFunctionalTest"

    return-object v0

    .line 332
    :pswitch_19
    const-string v0, "setAmountConfirmResult"

    return-object v0

    .line 333
    :pswitch_1a
    const-string v0, "readDisplayString"

    return-object v0

    .line 334
    :pswitch_1b
    const-string v0, "updateDisplayString"

    return-object v0

    .line 335
    :pswitch_1c
    const-string v0, "encryptDecryptOpKey"

    return-object v0

    :pswitch_1d
    return-object v1

    .line 338
    :pswitch_1e
    const-string v0, "cancelSelectAccountType"

    return-object v0

    .line 339
    :pswitch_1f
    const-string v0, "selectAccountType"

    return-object v0

    .line 340
    :pswitch_20
    const-string v0, "clearFirmwareDebugLog"

    return-object v0

    .line 341
    :pswitch_21
    const-string v0, "getFirmwareDebugLog"

    return-object v0

    .line 342
    :pswitch_22
    const-string v0, "readDisplaySettings"

    return-object v0

    .line 343
    :pswitch_23
    const-string v0, "updateDisplaySettings"

    return-object v0

    .line 344
    :pswitch_24
    const-string v0, "setPinPadOrientation"

    return-object v0

    .line 345
    :pswitch_25
    const-string v0, "setPinPadButtons"

    return-object v0

    .line 346
    :pswitch_26
    const-string v0, "enableEnablementTokenForWiseCube"

    return-object v0

    .line 347
    :pswitch_27
    const-string v0, "echoData"

    return-object v0

    .line 348
    :pswitch_28
    const-string v0, "verifyWiseCubeKeyPublicKeysAndStatus"

    return-object v0

    .line 349
    :pswitch_29
    const-string v0, "commandSPoC"

    return-object v0

    .line 350
    :pswitch_2a
    const-string v0, "otaCommand"

    return-object v0

    .line 351
    :pswitch_2b
    const-string v0, "getBarcode"

    return-object v0

    .line 352
    :pswitch_2c
    const-string v0, "stopBarcodeReader"

    return-object v0

    .line 353
    :pswitch_2d
    const-string v0, "startBarcodeReader"

    return-object v0

    .line 354
    :pswitch_2e
    const-string v0, "sendPrintData"

    return-object v0

    .line 355
    :pswitch_2f
    const-string v0, "startPrint"

    return-object v0

    .line 356
    :pswitch_30
    const-string v0, "updateGprsSettings"

    return-object v0

    .line 357
    :pswitch_31
    const-string v0, "readGprsSettings"

    return-object v0

    .line 358
    :pswitch_32
    const-string v0, "updateWiFiSettings"

    return-object v0

    .line 359
    :pswitch_33
    const-string v0, "readWifiSettings"

    return-object v0

    .line 360
    :pswitch_34
    const-string v0, "updateAID"

    return-object v0

    .line 361
    :pswitch_35
    const-string v0, "readAID"

    return-object v0

    .line 362
    :pswitch_36
    const-string v0, "getEmvReport"

    return-object v0

    .line 363
    :pswitch_37
    const-string v0, "getEmvReportList"

    return-object v0

    .line 364
    :pswitch_38
    const-string v0, "removeCAPK"

    return-object v0

    .line 365
    :pswitch_39
    const-string v0, "findCAPKLocation"

    return-object v0

    .line 366
    :pswitch_3a
    const-string v0, "updateCAPK"

    return-object v0

    .line 367
    :pswitch_3b
    const-string v0, "getCAPKDetail"

    return-object v0

    .line 368
    :pswitch_3c
    const-string v0, "getCAPKList"

    return-object v0

    .line 369
    :pswitch_3d
    const-string v0, "updateTerminalSettings"

    return-object v0

    .line 370
    :pswitch_3e
    const-string v0, "updateTerminalSetting"

    return-object v0

    .line 371
    :pswitch_3f
    const-string v0, "readTerminalSetting"

    return-object v0

    .line 372
    :pswitch_40
    const-string v0, "nfcDataExchange"

    return-object v0

    .line 373
    :pswitch_41
    const-string v0, "stopNfcDetection"

    return-object v0

    .line 374
    :pswitch_42
    const-string v0, "startNfcDetection"

    return-object v0

    .line 375
    :pswitch_43
    const-string v0, "sendApdu"

    return-object v0

    .line 376
    :pswitch_44
    const-string v0, "powerOffIcc"

    return-object v0

    .line 377
    :pswitch_45
    const-string v0, "powerOnIcc"

    return-object v0

    .line 378
    :pswitch_46
    const-string v0, "encryptDataWithSettings"

    return-object v0

    .line 379
    :pswitch_47
    const-string v0, "encryptPin"

    return-object v0

    .line 380
    :pswitch_48
    const-string v0, "getEmvCardNumber"

    return-object v0

    .line 381
    :pswitch_49
    const-string v0, "getEmvCardData"

    return-object v0

    .line 382
    :pswitch_4a
    const-string v0, "checkCard"

    return-object v0

    .line 383
    :pswitch_4b
    const-string v0, "bypassPinEntry"

    return-object v0

    .line 384
    :pswitch_4c
    const-string v0, "cancelPinEntry"

    return-object v0

    .line 385
    :pswitch_4d
    const-string v0, "startPinEntry"

    return-object v0

    .line 386
    :pswitch_4e
    const-string v0, "disableAccountSelection"

    return-object v0

    .line 387
    :pswitch_4f
    const-string v0, "enableAccountSelection"

    return-object v0

    .line 388
    :pswitch_50
    const-string v0, "disableInputAmount"

    return-object v0

    .line 389
    :pswitch_51
    const-string v0, "enableInputAmount"

    return-object v0

    .line 390
    :pswitch_52
    const-string v0, "sendOnlineProcessResult"

    return-object v0

    .line 391
    :pswitch_53
    const-string v0, "sendFinalConfirmResult"

    return-object v0

    .line 392
    :pswitch_54
    const-string v0, "cancelSelectApplication"

    return-object v0

    .line 393
    :pswitch_55
    const-string v0, "selectApplication"

    return-object v0

    .line 394
    :pswitch_56
    const-string v0, "cancelCheckCard"

    return-object v0

    .line 395
    :pswitch_57
    const-string v0, "cancelSetAmount"

    return-object v0

    .line 396
    :pswitch_58
    const-string v0, "setAmount"

    return-object v0

    .line 397
    :pswitch_59
    const-string v0, "sendTerminalTime"

    return-object v0

    .line 398
    :pswitch_5a
    const-string v0, "startEmv"

    return-object v0

    .line 399
    :pswitch_5b
    const-string v0, "controlLED"

    return-object v0

    .line 400
    :pswitch_5c
    const-string v0, "resetDevice"

    return-object v0

    .line 401
    :pswitch_5d
    const-string v0, "powerDown"

    return-object v0

    .line 402
    :pswitch_5e
    const-string v0, "enterStandbyMode"

    return-object v0

    :pswitch_5f
    return-object v1

    .line 404
    :pswitch_60
    const-string v0, "initSession"

    return-object v0

    .line 405
    :pswitch_61
    const-string v0, "cancelAudioAutoConfig"

    return-object v0

    .line 406
    :pswitch_62
    const-string v0, "startAudioAutoConfig"

    return-object v0

    .line 407
    :pswitch_63
    const-string v0, "isDeviceHere"

    return-object v0

    .line 408
    :pswitch_64
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method aaa009()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method aaa010()V
    .locals 1

    .line 1
    const-string v0, "[reset]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa001:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa002:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa003:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa004:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa005:Ljava/util/Hashtable;

    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa006:Ljava/util/Hashtable;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007:Ljava/util/ArrayList;

    return-void
.end method
