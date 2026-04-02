.class public Lcom/sun/jna/platform/win32/Sspi$TimeStamp;
.super Lcom/sun/jna/platform/win32/Sspi$SECURITY_INTEGER;
.source "Sspi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 673
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SECURITY_INTEGER;-><init>()V

    return-void
.end method
