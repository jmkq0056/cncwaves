.class public Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;
.super Lcom/sun/jna/Structure;
.source "Winnetwk.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lpUniversalName",
        "lpConnectionName",
        "lpRemainingPath"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REMOTE_NAME_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO$ByReference;
    }
.end annotation


# instance fields
.field public lpConnectionName:Ljava/lang/String;

.field public lpRemainingPath:Ljava/lang/String;

.field public lpUniversalName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 446
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 450
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 451
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winnetwk$REMOTE_NAME_INFO;->read()V

    return-void
.end method
