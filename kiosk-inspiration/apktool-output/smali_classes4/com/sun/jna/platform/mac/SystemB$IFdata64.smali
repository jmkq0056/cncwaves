.class public Lcom/sun/jna/platform/mac/SystemB$IFdata64;
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
        "ifi_lastchange"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFdata64"
.end annotation


# instance fields
.field public ifi_addrlen:B

.field public ifi_baudrate:J

.field public ifi_collisions:J

.field public ifi_hdrlen:B

.field public ifi_ibytes:J

.field public ifi_ierrors:J

.field public ifi_imcasts:J

.field public ifi_ipackets:J

.field public ifi_iqdrops:J

.field public ifi_lastchange:Lcom/sun/jna/platform/mac/SystemB$Timeval;

.field public ifi_metric:I

.field public ifi_mtu:I

.field public ifi_noproto:J

.field public ifi_obytes:J

.field public ifi_oerrors:J

.field public ifi_omcasts:J

.field public ifi_opackets:J

.field public ifi_physical:B

.field public ifi_recvquota:B

.field public ifi_recvtiming:I

.field public ifi_type:B

.field public ifi_typelen:B

.field public ifi_unused1:B

.field public ifi_xmitquota:B

.field public ifi_xmittiming:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
