.class public Lcom/sun/jna/platform/win32/LMShare$SHARE_INFO_502;
.super Lcom/sun/jna/Structure;
.source "LMShare.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "shi502_netname",
        "shi502_type",
        "shi502_remark",
        "shi502_permissions",
        "shi502_max_uses",
        "shi502_current_uses",
        "shi502_path",
        "shi502_passwd",
        "shi502_reserved",
        "shi502_security_descriptor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHARE_INFO_502"
.end annotation


# instance fields
.field public shi502_current_uses:I

.field public shi502_max_uses:I

.field public shi502_netname:Ljava/lang/String;

.field public shi502_passwd:Ljava/lang/String;

.field public shi502_path:Ljava/lang/String;

.field public shi502_permissions:I

.field public shi502_remark:Ljava/lang/String;

.field public shi502_reserved:I

.field public shi502_security_descriptor:Lcom/sun/jna/Pointer;

.field public shi502_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 210
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 214
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 215
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMShare$SHARE_INFO_502;->read()V

    return-void
.end method
