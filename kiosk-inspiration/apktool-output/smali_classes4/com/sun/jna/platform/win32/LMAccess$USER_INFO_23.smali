.class public Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;
.super Lcom/sun/jna/Structure;
.source "LMAccess.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "usri23_name",
        "usri23_full_name",
        "usri23_comment",
        "usri23_flags",
        "usri23_user_sid"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USER_INFO_23"
.end annotation


# instance fields
.field public usri23_comment:Ljava/lang/String;

.field public usri23_flags:I

.field public usri23_full_name:Ljava/lang/String;

.field public usri23_name:Ljava/lang/String;

.field public usri23_user_sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 226
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 227
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->read()V

    return-void
.end method
