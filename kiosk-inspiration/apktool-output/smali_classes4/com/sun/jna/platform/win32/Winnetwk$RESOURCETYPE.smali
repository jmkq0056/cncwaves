.class public Lcom/sun/jna/platform/win32/Winnetwk$RESOURCETYPE;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RESOURCETYPE"
.end annotation


# static fields
.field public static final RESOURCETYPE_ANY:I = 0x0

.field public static final RESOURCETYPE_DISK:I = 0x1

.field public static final RESOURCETYPE_PRINT:I = 0x2

.field public static final RESOURCETYPE_RESERVED:I = 0x8

.field public static final RESOURCETYPE_UNKNOWN:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Winnetwk;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winnetwk;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winnetwk$RESOURCETYPE;->this$0:Lcom/sun/jna/platform/win32/Winnetwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
