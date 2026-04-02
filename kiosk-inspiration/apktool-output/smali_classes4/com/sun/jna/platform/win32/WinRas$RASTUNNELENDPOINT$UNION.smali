.class public Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;
.super Lcom/sun/jna/Union;
.source "WinRas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UNION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION$ByReference;
    }
.end annotation


# instance fields
.field public ipv4:Lcom/sun/jna/platform/win32/WinRas$RASIPV4ADDR;

.field public ipv6:Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method
