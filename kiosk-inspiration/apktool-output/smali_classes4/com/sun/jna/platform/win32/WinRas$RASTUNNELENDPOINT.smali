.class public Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwType",
        "u"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASTUNNELENDPOINT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;
    }
.end annotation


# instance fields
.field public dwType:I

.field public u:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 574
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->read()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 2

    .line 597
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 599
    iget v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->dwType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->u:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/WinRas$RASIPV4ADDR;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->u:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->u:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/WinRas$RASIPV4ADDR;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;->setType(Ljava/lang/Class;)V

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;->u:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT$UNION;->read()V

    return-void
.end method
