.class public Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO$PI;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "wProcessorArchitecture",
        "wReserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO$PI$ByReference;
    }
.end annotation


# instance fields
.field public wProcessorArchitecture:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wReserved:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1139
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
