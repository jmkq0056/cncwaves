.class public Lcom/sun/jna/platform/mac/IOKitUtil;
.super Ljava/lang/Object;
.source "IOKitUtil.java"


# static fields
.field private static final IO:Lcom/sun/jna/platform/mac/IOKit;

.field private static final SYS:Lcom/sun/jna/platform/mac/SystemB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    sput-object v0, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    .line 40
    sget-object v0, Lcom/sun/jna/platform/mac/SystemB;->INSTANCE:Lcom/sun/jna/platform/mac/SystemB;

    sput-object v0, Lcom/sun/jna/platform/mac/IOKitUtil;->SYS:Lcom/sun/jna/platform/mac/SystemB;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBSDNameMatchingDict(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
    .locals 3

    .line 156
    invoke-static {}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMasterPort()I

    move-result v0

    .line 157
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Lcom/sun/jna/platform/mac/IOKit;->IOBSDNameMatching(IILjava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;

    move-result-object p0

    .line 158
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->SYS:Lcom/sun/jna/platform/mac/SystemB;

    invoke-interface {v1}, Lcom/sun/jna/platform/mac/SystemB;->mach_task_self()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/mac/SystemB;->mach_port_deallocate(II)I

    return-object p0
.end method

.method public static getMasterPort()I
    .locals 3

    .line 57
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 58
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/mac/IOKit;->IOMasterPort(ILcom/sun/jna/ptr/IntByReference;)I

    .line 59
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    return v0
.end method

.method public static getMatchingService(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOService;
    .locals 3

    .line 103
    invoke-static {}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMasterPort()I

    move-result v0

    .line 104
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, v0, p0}, Lcom/sun/jna/platform/mac/IOKit;->IOServiceGetMatchingService(ILcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOService;

    move-result-object p0

    .line 105
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->SYS:Lcom/sun/jna/platform/mac/SystemB;

    invoke-interface {v1}, Lcom/sun/jna/platform/mac/SystemB;->mach_task_self()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/mac/SystemB;->mach_port_deallocate(II)I

    return-object p0
.end method

.method public static getMatchingService(Ljava/lang/String;)Lcom/sun/jna/platform/mac/IOKit$IOService;
    .locals 1

    .line 85
    sget-object v0, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/IOKit;->IOServiceMatching(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMatchingService(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOService;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMatchingServices(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOIterator;
    .locals 4

    .line 137
    invoke-static {}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMasterPort()I

    move-result v0

    .line 138
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 139
    sget-object v2, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v2, v0, p0, v1}, Lcom/sun/jna/platform/mac/IOKit;->IOServiceGetMatchingServices(ILcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p0

    .line 140
    sget-object v2, Lcom/sun/jna/platform/mac/IOKitUtil;->SYS:Lcom/sun/jna/platform/mac/SystemB;

    invoke-interface {v2}, Lcom/sun/jna/platform/mac/SystemB;->mach_task_self()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/sun/jna/platform/mac/SystemB;->mach_port_deallocate(II)I

    if-nez p0, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    new-instance p0, Lcom/sun/jna/platform/mac/IOKit$IOIterator;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/mac/IOKit$IOIterator;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMatchingServices(Ljava/lang/String;)Lcom/sun/jna/platform/mac/IOKit$IOIterator;
    .locals 1

    .line 119
    sget-object v0, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/IOKit;->IOServiceMatching(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMatchingServices(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRoot()Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
    .locals 4

    .line 69
    invoke-static {}, Lcom/sun/jna/platform/mac/IOKitUtil;->getMasterPort()I

    move-result v0

    .line 70
    sget-object v1, Lcom/sun/jna/platform/mac/IOKitUtil;->IO:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryGetRootEntry(I)Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;

    move-result-object v1

    .line 71
    sget-object v2, Lcom/sun/jna/platform/mac/IOKitUtil;->SYS:Lcom/sun/jna/platform/mac/SystemB;

    invoke-interface {v2}, Lcom/sun/jna/platform/mac/SystemB;->mach_task_self()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/sun/jna/platform/mac/SystemB;->mach_port_deallocate(II)I

    return-object v1
.end method
