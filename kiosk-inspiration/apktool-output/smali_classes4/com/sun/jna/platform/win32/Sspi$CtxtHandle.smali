.class public Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;
.super Lcom/sun/jna/platform/win32/Sspi$SecHandle;
.source "Sspi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CtxtHandle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecHandle;-><init>()V

    return-void
.end method
