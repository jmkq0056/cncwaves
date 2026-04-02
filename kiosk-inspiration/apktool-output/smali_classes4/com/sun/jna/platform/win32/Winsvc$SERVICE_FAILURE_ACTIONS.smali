.class public Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;
.super Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwResetPeriod",
        "lpRebootMsg",
        "lpCommand",
        "cActions",
        "lpsaActions"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVICE_FAILURE_ACTIONS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;
    }
.end annotation


# instance fields
.field public cActions:I

.field public dwResetPeriod:I

.field public lpCommand:Ljava/lang/String;

.field public lpRebootMsg:Ljava/lang/String;

.field public lpsaActions:Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;-><init>(Lcom/sun/jna/Pointer;)V

    .line 275
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;->read()V

    return-void
.end method
