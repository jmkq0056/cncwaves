.class Lcom/stripe/bbpos/bbdevice/bbb017zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DB"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "DA"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 3
    const-string v2, "DF8570"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 5
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;->USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 7
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;->WIRELESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;

    .line 10
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->NOT_CHARGING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 12
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->IS_CHARGING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc040:[B

    invoke-virtual {v1, v5, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    .line 17
    iget-object p2, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_2

    .line 18
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, v2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V

    return-void

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V

    :cond_3
    return-void
.end method
