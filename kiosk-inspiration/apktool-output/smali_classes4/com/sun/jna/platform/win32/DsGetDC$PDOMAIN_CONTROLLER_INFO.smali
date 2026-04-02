.class public Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;
.super Lcom/sun/jna/Structure;
.source "DsGetDC.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dci"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DsGetDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDOMAIN_CONTROLLER_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO$ByReference;
    }
.end annotation


# instance fields
.field public dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
