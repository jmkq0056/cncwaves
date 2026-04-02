.class Lcom/stripe/bbpos/bbdevice/ccc038zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;
    }
.end annotation


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

.field private aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

.field private aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

.field private aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

.field private aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;


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
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->LOW:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    .line 16
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    return-void
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 1

    .line 1
    const-string v0, "[reset]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    .line 6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->LOW:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;)Z
    .locals 3

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)Z
    .locals 3

    .line 20
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;)Z
    .locals 3

    .line 8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)Z
    .locals 3

    .line 16
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)Z
    .locals 3

    .line 12
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    return-void
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    .line 13
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 14
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    return-void
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    .line 4
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 5
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    return-void
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    .line 10
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 11
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void
.end method

.method aaa001(Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000()V

    .line 7
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc038zz$aaa000zz;

    .line 8
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc038zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    return-void
.end method
