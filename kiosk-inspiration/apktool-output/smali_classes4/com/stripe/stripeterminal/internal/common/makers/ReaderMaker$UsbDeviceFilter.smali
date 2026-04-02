.class final enum Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;
.super Ljava/lang/Enum;
.source "ReaderMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UsbDeviceFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderMaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderMaker.kt\ncom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n1747#2,3:212\n*S KotlinDebug\n*F\n+ 1 ReaderMaker.kt\ncom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter\n*L\n178#1:212,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;",
        "",
        "productId",
        "",
        "vendorId",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V",
        "matches",
        "",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcom/stripe/stripeterminal/external/models/UsbDevice;",
        "CHIPPER_2X",
        "STRIPE_M2",
        "WISECUBE",
        "WISEPAD_3",
        "WISEPAD_3S",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

.field public static final enum CHIPPER_2X:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

.field public static final enum STRIPE_M2:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

.field public static final enum WISECUBE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

.field public static final enum WISEPAD_3:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

.field public static final enum WISEPAD_3S:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;


# instance fields
.field private final deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

.field private final productId:I

.field private final vendorId:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;
    .locals 5

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->CHIPPER_2X:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->STRIPE_M2:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISECUBE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISEPAD_3:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISEPAD_3S:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 165
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    const/16 v4, 0x2c69

    sget-object v5, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const-string v1, "CHIPPER_2X"

    const/4 v2, 0x0

    const/16 v3, 0x5750

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;-><init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->CHIPPER_2X:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    .line 166
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    const/16 v5, 0x15a2

    sget-object v6, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const-string v2, "STRIPE_M2"

    const/4 v3, 0x1

    const/16 v4, 0x101

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;-><init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->STRIPE_M2:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    .line 167
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    const/16 v6, 0x15a2

    sget-object v7, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const-string v3, "WISECUBE"

    const/4 v4, 0x2

    const/16 v5, 0x101

    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;-><init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V

    sput-object v2, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISECUBE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    .line 168
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    const/16 v7, 0x15a2

    sget-object v8, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const-string v4, "WISEPAD_3"

    const/4 v5, 0x3

    const/16 v6, 0x101

    invoke-direct/range {v3 .. v8}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;-><init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V

    sput-object v3, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISEPAD_3:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    .line 169
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    const/16 v8, 0x15a2

    sget-object v9, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const-string v5, "WISEPAD_3S"

    const/4 v6, 0x4

    const/16 v7, 0x101

    invoke-direct/range {v4 .. v9}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;-><init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V

    sput-object v4, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISEPAD_3S:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->$values()[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->productId:I

    .line 162
    iput p4, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->vendorId:I

    .line 163
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    return-object v0
.end method


# virtual methods
.method public final matches(Landroid/hardware/usb/UsbDevice;)Z
    .locals 9

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->productId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->vendorId:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 176
    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->WISECUBE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 178
    :goto_1
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$UsbDeviceFilter;->deviceType:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSerialPrefixes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 212
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move p1, v3

    goto :goto_2

    .line 213
    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    :cond_5
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v5, v3, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move p1, v2

    :goto_2
    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    return v2

    :cond_7
    return v3
.end method
