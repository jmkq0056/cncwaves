.class public Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDRESS_STRING;
.super Lcom/sun/jna/Structure;
.source "IPHlpAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "String"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/IPHlpAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP_ADDRESS_STRING"
.end annotation


# instance fields
.field public String:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 165
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/IPHlpAPI$IP_ADDRESS_STRING;->String:[B

    return-void
.end method
