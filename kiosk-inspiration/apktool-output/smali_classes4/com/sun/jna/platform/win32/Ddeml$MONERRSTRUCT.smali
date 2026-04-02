.class public Lcom/sun/jna/platform/win32/Ddeml$MONERRSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "wLastError",
        "dwTime",
        "hTask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONERRSTRUCT"
.end annotation


# instance fields
.field public cb:I

.field public dwTime:I

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public wLastError:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
