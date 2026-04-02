.class public interface abstract Lcom/sun/jna/platform/mac/CoreFoundation;
.super Ljava/lang/Object;
.source "CoreFoundation.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFArrayRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFBooleanRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;,
        Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
    }
.end annotation


# static fields
.field public static final ARRAY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final BOOLEAN_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final DATA_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final DATE_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final DICTIONARY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

.field public static final NUMBER_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final STRING_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

.field public static final kCFNotFound:I = -0x1

.field public static final kCFStringEncodingASCII:I = 0x600

.field public static final kCFStringEncodingUTF8:I = 0x8000100


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-string v0, "CoreFoundation"

    const-class v1, Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/CoreFoundation;

    sput-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    .line 68
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFArrayGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->ARRAY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 69
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFBooleanGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->BOOLEAN_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 70
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDataGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->DATA_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 71
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDateGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->DATE_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 72
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFDictionaryGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->DICTIONARY_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 73
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->NUMBER_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    .line 74
    invoke-interface {v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFStringGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/mac/CoreFoundation;->STRING_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    return-void
.end method


# virtual methods
.method public abstract CFAllocatorGetDefault()Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;
.end method

.method public abstract CFArrayCreate(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/mac/CoreFoundation$CFArrayRef;
.end method

.method public abstract CFArrayGetCount(Lcom/sun/jna/platform/mac/CoreFoundation$CFArrayRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFArrayGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFArrayGetValueAtIndex(Lcom/sun/jna/platform/mac/CoreFoundation$CFArrayRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;)Lcom/sun/jna/Pointer;
.end method

.method public abstract CFBooleanGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFBooleanGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFBooleanRef;)B
.end method

.method public abstract CFCopyDescription(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;
.end method

.method public abstract CFDataCreate(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;)Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;
.end method

.method public abstract CFDataGetBytePtr(Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;)Lcom/sun/jna/Pointer;
.end method

.method public abstract CFDataGetLength(Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFDataGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFDateGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFDictionaryCreateMutable(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
.end method

.method public abstract CFDictionaryGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFDictionaryGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/PointerType;)Lcom/sun/jna/Pointer;
.end method

.method public abstract CFDictionaryGetValueIfPresent(Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;Lcom/sun/jna/PointerType;Lcom/sun/jna/ptr/PointerByReference;)B
.end method

.method public abstract CFDictionarySetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;Lcom/sun/jna/PointerType;Lcom/sun/jna/PointerType;)V
.end method

.method public abstract CFGetRetainCount(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFGetTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFNumberCreate(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;
.end method

.method public abstract CFNumberGetType(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFNumberGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method

.method public abstract CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B
.end method

.method public abstract CFRelease(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)V
.end method

.method public abstract CFRetain(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.end method

.method public abstract CFStringCreateWithCharacters(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;[CLcom/sun/jna/platform/mac/CoreFoundation$CFIndex;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;
.end method

.method public abstract CFStringGetCString(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;I)B
.end method

.method public abstract CFStringGetLength(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFStringGetMaximumSizeForEncoding(Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;
.end method

.method public abstract CFStringGetTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;
.end method
