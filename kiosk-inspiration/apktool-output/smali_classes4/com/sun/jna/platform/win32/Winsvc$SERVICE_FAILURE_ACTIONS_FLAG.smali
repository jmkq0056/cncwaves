.class public Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;
.super Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "fFailureActionsOnNonCrashFailures"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVICE_FAILURE_ACTIONS_FLAG"
.end annotation


# instance fields
.field public fFailureActionsOnNonCrashFailures:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;-><init>(Lcom/sun/jna/Pointer;)V

    .line 321
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;->read()V

    return-void
.end method
