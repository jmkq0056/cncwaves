.class public Lcom/sun/jna/platform/win32/WinNT$POWER_ACTION_POLICY;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Action",
        "Flags",
        "EventCode"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POWER_ACTION_POLICY"
.end annotation


# instance fields
.field public Action:I

.field public EventCode:I

.field public Flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3512
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
