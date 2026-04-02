.class public Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo$ByReference;
.super Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;
.source "Sspi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;-><init>()V

    return-void
.end method
