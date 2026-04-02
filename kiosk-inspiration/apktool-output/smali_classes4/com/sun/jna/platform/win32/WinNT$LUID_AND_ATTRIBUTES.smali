.class public Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Luid",
        "Attributes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LUID_AND_ATTRIBUTES"
.end annotation


# instance fields
.field public Attributes:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public Luid:Lcom/sun/jna/platform/win32/WinNT$LUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;->Luid:Lcom/sun/jna/platform/win32/WinNT$LUID;

    .line 287
    iput-object p2, p0, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;->Attributes:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method
