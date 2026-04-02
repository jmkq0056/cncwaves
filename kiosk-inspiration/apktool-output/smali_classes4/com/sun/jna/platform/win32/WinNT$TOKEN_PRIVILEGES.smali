.class public Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "PrivilegeCount",
        "Privileges"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TOKEN_PRIVILEGES"
.end annotation


# instance fields
.field public PrivilegeCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 528
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 529
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->PrivilegeCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 530
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 3

    .line 537
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const-wide/16 v0, 0x0

    .line 538
    invoke-virtual {p1, v0, v1}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    .line 539
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->PrivilegeCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 540
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    .line 541
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->read()V

    return-void
.end method
