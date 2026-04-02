.class public Lcom/sun/jna/platform/win32/Sspi$SecBuffer$ByReference;
.super Lcom/sun/jna/platform/win32/Sspi$SecBuffer;
.source "Sspi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi$SecBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>(I[B)V

    return-void
.end method
