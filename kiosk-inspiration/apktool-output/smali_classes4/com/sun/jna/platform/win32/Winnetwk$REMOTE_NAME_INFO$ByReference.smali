.class public Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO$ByReference;
.super Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;
.source "Winnetwk.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
