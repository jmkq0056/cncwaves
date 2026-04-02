.class public Lcom/sun/jna/platform/win32/Sspi$SecHandle$ByReference;
.super Lcom/sun/jna/platform/win32/Sspi$SecHandle;
.source "Sspi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi$SecHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecHandle;-><init>()V

    return-void
.end method
