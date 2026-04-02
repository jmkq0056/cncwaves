.class public Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;
.super Lcom/sun/jna/Structure;
.source "Winspool.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Flags",
        "pDescription",
        "pName",
        "pComment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winspool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PRINTER_INFO_1"
.end annotation


# instance fields
.field public Flags:I

.field public pComment:Ljava/lang/String;

.field public pDescription:Ljava/lang/String;

.field public pName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 294
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
