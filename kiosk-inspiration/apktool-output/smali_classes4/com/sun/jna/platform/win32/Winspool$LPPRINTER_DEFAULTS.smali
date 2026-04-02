.class public Lcom/sun/jna/platform/win32/Winspool$LPPRINTER_DEFAULTS;
.super Lcom/sun/jna/Structure;
.source "Winspool.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pDatatype",
        "pDevMode",
        "DesiredAccess"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winspool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPPRINTER_DEFAULTS"
.end annotation


# instance fields
.field public DesiredAccess:I

.field public pDatatype:Ljava/lang/String;

.field public pDevMode:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 488
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
