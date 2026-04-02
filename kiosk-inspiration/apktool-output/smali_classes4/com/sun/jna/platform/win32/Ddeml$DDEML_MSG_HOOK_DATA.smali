.class public Lcom/sun/jna/platform/win32/Ddeml$DDEML_MSG_HOOK_DATA;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "uiLo",
        "uiHi",
        "cbData",
        "Data"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DDEML_MSG_HOOK_DATA"
.end annotation


# instance fields
.field public Data:[B

.field public cbData:I

.field public uiHi:Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;

.field public uiLo:Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 567
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x20

    .line 587
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ddeml$DDEML_MSG_HOOK_DATA;->Data:[B

    return-void
.end method
