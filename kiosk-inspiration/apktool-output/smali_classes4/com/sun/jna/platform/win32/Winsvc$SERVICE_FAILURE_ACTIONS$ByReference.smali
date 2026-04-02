.class public Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;
.super Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;
.source "Winsvc.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;-><init>()V

    return-void
.end method
