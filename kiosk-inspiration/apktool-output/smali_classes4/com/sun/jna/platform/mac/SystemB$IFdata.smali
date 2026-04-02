.class public Lcom/sun/jna/platform/mac/SystemB$IFdata;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ifi_type",
        "ifi_typelen",
        "ifi_physical",
        "ifi_addrlen",
        "ifi_hdrlen",
        "ifi_recvquota",
        "ifi_xmitquota",
        "ifi_unused1",
        "ifi_mtu",
        "ifi_metric",
        "ifi_baudrate",
        "ifi_ipackets",
        "ifi_ierrors",
        "ifi_opackets",
        "ifi_oerrors",
        "ifi_collisions",
        "ifi_ibytes",
        "ifi_obytes",
        "ifi_imcasts",
        "ifi_omcasts",
        "ifi_iqdrops",
        "ifi_noproto",
        "ifi_recvtiming",
        "ifi_xmittiming",
        "ifi_lastchange",
        "ifi_unused2",
        "ifi_hwassist",
        "ifi_reserved1",
        "ifi_reserved2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFdata"
.end annotation


# instance fields
.field public ifi_addrlen:B

.field public ifi_baudrate:I

.field public ifi_collisions:I

.field public ifi_hdrlen:B

.field public ifi_hwassist:I

.field public ifi_ibytes:I

.field public ifi_ierrors:I

.field public ifi_imcasts:I

.field public ifi_ipackets:I

.field public ifi_iqdrops:I

.field public ifi_lastchange:Lcom/sun/jna/platform/mac/SystemB$Timeval;

.field public ifi_metric:I

.field public ifi_mtu:I

.field public ifi_noproto:I

.field public ifi_obytes:I

.field public ifi_oerrors:I

.field public ifi_omcasts:I

.field public ifi_opackets:I

.field public ifi_physical:B

.field public ifi_recvquota:B

.field public ifi_recvtiming:I

.field public ifi_reserved1:I

.field public ifi_reserved2:I

.field public ifi_type:B

.field public ifi_typelen:B

.field public ifi_unused1:B

.field public ifi_unused2:I

.field public ifi_xmitquota:B

.field public ifi_xmittiming:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
