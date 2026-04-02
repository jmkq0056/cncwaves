.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;
.super Lcom/sun/jna/Union;
.source "LibKstat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UNION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION$STR;
    }
.end annotation


# instance fields
.field public charc:[B

.field public i32:I

.field public i64:J

.field public str:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION$STR;

.field public ui32:I

.field public ui64:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    const/16 v0, 0x10

    .line 168
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->charc:[B

    return-void
.end method
