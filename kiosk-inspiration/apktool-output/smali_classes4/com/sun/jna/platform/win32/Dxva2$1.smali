.class final Lcom/sun/jna/platform/win32/Dxva2$1;
.super Ljava/util/HashMap;
.source "Dxva2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Dxva2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1b96b1b2526c5a80L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v0, Lcom/sun/jna/platform/win32/Dxva2$1$1;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Dxva2$1$1;-><init>(Lcom/sun/jna/platform/win32/Dxva2$1;)V

    const-string v1, "type-mapper"

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/platform/win32/Dxva2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
