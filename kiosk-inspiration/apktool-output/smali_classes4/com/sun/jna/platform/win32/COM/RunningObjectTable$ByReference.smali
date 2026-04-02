.class public Lcom/sun/jna/platform/win32/COM/RunningObjectTable$ByReference;
.super Lcom/sun/jna/platform/win32/COM/RunningObjectTable;
.source "RunningObjectTable.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/RunningObjectTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;-><init>()V

    return-void
.end method
