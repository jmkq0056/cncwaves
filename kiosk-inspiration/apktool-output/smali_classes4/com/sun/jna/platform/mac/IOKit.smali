.class public interface abstract Lcom/sun/jna/platform/mac/IOKit;
.super Ljava/lang/Object;
.source "IOKit.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/IOKit$IOConnect;,
        Lcom/sun/jna/platform/mac/IOKit$IOService;,
        Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;,
        Lcom/sun/jna/platform/mac/IOKit$IOIterator;,
        Lcom/sun/jna/platform/mac/IOKit$IOObject;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

.field public static final kIOPSTimeRemainingUnknown:D = -1.0

.field public static final kIOPSTimeRemainingUnlimited:D = -2.0

.field public static final kIORegistryIterateParents:I = 0x2

.field public static final kIORegistryIterateRecursively:I = 0x1

.field public static final kIOReturnNoDevice:I = -0x1ffffd40


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "IOKit"

    const-class v1, Lcom/sun/jna/platform/mac/IOKit;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/IOKit;

    sput-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    return-void
.end method


# virtual methods
.method public abstract IOBSDNameMatching(IILjava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
.end method

.method public abstract IOIteratorNext(Lcom/sun/jna/platform/mac/IOKit$IOIterator;)Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
.end method

.method public abstract IOMasterPort(ILcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract IOObjectConformsTo(Lcom/sun/jna/platform/mac/IOKit$IOObject;Ljava/lang/String;)Z
.end method

.method public abstract IOObjectRelease(Lcom/sun/jna/platform/mac/IOKit$IOObject;)I
.end method

.method public abstract IOPSCopyPowerSourcesInfo()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.end method

.method public abstract IOPSCopyPowerSourcesList(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFArrayRef;
.end method

.method public abstract IOPSGetPowerSourceDescription(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;
.end method

.method public abstract IOPSGetTimeRemainingEstimate()D
.end method

.method public abstract IORegistryEntryCreateCFProperties(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)I
.end method

.method public abstract IORegistryEntryCreateCFProperty(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.end method

.method public abstract IORegistryEntryGetChildEntry(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract IORegistryEntryGetChildIterator(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract IORegistryEntryGetName(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract IORegistryEntryGetParentEntry(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract IORegistryEntryGetRegistryEntryID(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/ptr/LongByReference;)I
.end method

.method public abstract IORegistryEntrySearchCFProperty(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.end method

.method public abstract IORegistryGetRootEntry(I)Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
.end method

.method public abstract IOServiceClose(Lcom/sun/jna/platform/mac/IOKit$IOConnect;)I
.end method

.method public abstract IOServiceGetBusyState(Lcom/sun/jna/platform/mac/IOKit$IOService;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract IOServiceGetMatchingService(ILcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;)Lcom/sun/jna/platform/mac/IOKit$IOService;
.end method

.method public abstract IOServiceGetMatchingServices(ILcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/ptr/PointerByReference;)I
.end method

.method public abstract IOServiceMatching(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
.end method

.method public abstract IOServiceNameMatching(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
.end method

.method public abstract IOServiceOpen(Lcom/sun/jna/platform/mac/IOKit$IOService;IILcom/sun/jna/ptr/PointerByReference;)I
.end method
