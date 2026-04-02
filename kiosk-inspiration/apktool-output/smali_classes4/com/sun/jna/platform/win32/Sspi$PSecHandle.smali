.class public Lcom/sun/jna/platform/win32/Sspi$PSecHandle;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "secHandle"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSecHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$PSecHandle$ByReference;
    }
.end annotation


# instance fields
.field public secHandle:Lcom/sun/jna/platform/win32/Sspi$SecHandle$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Sspi$SecHandle;)V
    .locals 0

    .line 518
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Sspi$SecHandle;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 519
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Sspi$PSecHandle;->read()V

    return-void
.end method
