.class public interface abstract Lcom/sun/jna/platform/mac/DiskArbitration;
.super Ljava/lang/Object;
.source "DiskArbitration.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/mac/DiskArbitration$DADiskRef;,
        Lcom/sun/jna/platform/mac/DiskArbitration$DASessionRef;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/mac/DiskArbitration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "DiskArbitration"

    const-class v1, Lcom/sun/jna/platform/mac/DiskArbitration;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/mac/DiskArbitration;

    sput-object v0, Lcom/sun/jna/platform/mac/DiskArbitration;->INSTANCE:Lcom/sun/jna/platform/mac/DiskArbitration;

    return-void
.end method


# virtual methods
.method public abstract DADiskCopyDescription(Lcom/sun/jna/platform/mac/DiskArbitration$DADiskRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFDictionaryRef;
.end method

.method public abstract DADiskCreateFromBSDName(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/platform/mac/DiskArbitration$DASessionRef;Ljava/lang/String;)Lcom/sun/jna/platform/mac/DiskArbitration$DADiskRef;
.end method

.method public abstract DADiskCreateFromIOMedia(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;Lcom/sun/jna/platform/mac/DiskArbitration$DASessionRef;Lcom/sun/jna/platform/mac/IOKit$IOObject;)Lcom/sun/jna/platform/mac/DiskArbitration$DADiskRef;
.end method

.method public abstract DADiskGetBSDName(Lcom/sun/jna/platform/mac/DiskArbitration$DADiskRef;)Ljava/lang/String;
.end method

.method public abstract DASessionCreate(Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;)Lcom/sun/jna/platform/mac/DiskArbitration$DASessionRef;
.end method
