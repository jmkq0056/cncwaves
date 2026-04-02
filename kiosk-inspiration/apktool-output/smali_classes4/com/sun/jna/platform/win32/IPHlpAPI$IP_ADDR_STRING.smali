.class public Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDR_STRING;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Next",
        "IpAddress",
        "IpMask",
        "Context"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP_ADDR_STRING"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDR_STRING$ByReference;
    }
.end annotation


# instance fields
.field public Context:I

.field public IpAddress:Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDRESS_STRING;

.field public IpMask:Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDRESS_STRING;

.field public Next:Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDR_STRING$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
