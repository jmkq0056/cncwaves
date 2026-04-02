.class public Lcom/sun/jna/platform/win32/WinBase$TIME_ZONE_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Bias",
        "StandardName",
        "StandardDate",
        "StandardBias",
        "DaylightName",
        "DaylightDate",
        "DaylightBias"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TIME_ZONE_INFORMATION"
.end annotation


# instance fields
.field public Bias:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public DaylightBias:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public DaylightDate:Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

.field public DaylightName:Ljava/lang/String;

.field public StandardBias:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public StandardDate:Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

.field public StandardName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1034
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
