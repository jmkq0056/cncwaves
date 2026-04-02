.class public Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwData",
        "cbData",
        "lpData"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COPYDATASTRUCT"
.end annotation


# instance fields
.field public cbData:I

.field public dwData:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public lpData:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 346
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$COPYDATASTRUCT;->read()V

    return-void
.end method
