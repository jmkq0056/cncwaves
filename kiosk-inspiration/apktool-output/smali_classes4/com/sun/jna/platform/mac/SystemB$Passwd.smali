.class public Lcom/sun/jna/platform/mac/SystemB$Passwd;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pw_name",
        "pw_passwd",
        "pw_uid",
        "pw_gid",
        "pw_change",
        "pw_class",
        "pw_gecos",
        "pw_dir",
        "pw_shell",
        "pw_expire",
        "pw_fields"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Passwd"
.end annotation


# instance fields
.field public pw_change:Lcom/sun/jna/NativeLong;

.field public pw_class:Ljava/lang/String;

.field public pw_dir:Ljava/lang/String;

.field public pw_expire:Lcom/sun/jna/NativeLong;

.field public pw_fields:I

.field public pw_gecos:Ljava/lang/String;

.field public pw_gid:I

.field public pw_name:Ljava/lang/String;

.field public pw_passwd:Ljava/lang/String;

.field public pw_shell:Ljava/lang/String;

.field public pw_uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
