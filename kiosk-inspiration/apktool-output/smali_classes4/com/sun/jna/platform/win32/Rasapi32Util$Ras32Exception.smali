.class public Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
.super Ljava/lang/RuntimeException;
.source "Rasapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Rasapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ras32Exception"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 109
    invoke-static {p1}, Lcom/sun/jna/platform/win32/Rasapi32Util;->getRasErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    iput p1, p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;->code:I

    return v0
.end method
