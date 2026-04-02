.class public Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "mask",
        "group",
        "reserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GROUP_AFFINITY"
.end annotation


# instance fields
.field public group:S

.field public mask:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public reserved:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3250
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 3243
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;->reserved:[S

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x3

    .line 3243
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;->reserved:[S

    return-void
.end method
