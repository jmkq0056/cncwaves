.class public Lcom/sun/jna/platform/mac/DiskArbitration$DASessionRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.source "DiskArbitration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/DiskArbitration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DASessionRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>()V

    return-void
.end method
