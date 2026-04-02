.class public Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE;
.super Lcom/sun/jna/Structure;
.source "Winnetwk.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwScope",
        "dwType",
        "dwDisplayType",
        "dwUsage",
        "lpLocalName",
        "lpRemoteName",
        "lpComment",
        "lpProvider"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NETRESOURCE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE$ByReference;
    }
.end annotation


# instance fields
.field public dwDisplayType:I

.field public dwScope:I

.field public dwType:I

.field public dwUsage:I

.field public lpComment:Ljava/lang/String;

.field public lpLocalName:Ljava/lang/String;

.field public lpProvider:Ljava/lang/String;

.field public lpRemoteName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 359
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 363
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 364
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE;->read()V

    return-void
.end method
