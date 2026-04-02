.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pszObjId",
        "fCritical",
        "Value"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_EXTENSION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION$ByReference;
    }
.end annotation


# instance fields
.field public Value:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public fCritical:Z

.field public pszObjId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 622
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->ASCII:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
