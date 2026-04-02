.class public Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;
.super Lcom/sun/jna/Union;
.source "Ntifs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REPARSE_UNION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION$ByReference;
    }
.end annotation


# instance fields
.field public genericReparseBuffer:Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;

.field public mountPointReparseBuffer:Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;

.field public symLinkReparseBuffer:Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
