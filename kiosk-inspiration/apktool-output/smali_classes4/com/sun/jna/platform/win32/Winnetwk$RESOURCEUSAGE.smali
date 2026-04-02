.class public Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEUSAGE;
.super Ljava/lang/Object;
.source "Winnetwk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winnetwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RESOURCEUSAGE"
.end annotation


# static fields
.field public static final RESOURCEUSAGE_ALL:I = 0x13

.field public static final RESOURCEUSAGE_ATTACHED:I = 0x10

.field public static final RESOURCEUSAGE_CONNECTABLE:I = 0x1

.field public static final RESOURCEUSAGE_CONTAINER:I = 0x2

.field public static final RESOURCEUSAGE_NOLOCALDEVICE:I = 0x4

.field public static final RESOURCEUSAGE_SIBLING:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/Winnetwk;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winnetwk;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winnetwk$RESOURCEUSAGE;->this$0:Lcom/sun/jna/platform/win32/Winnetwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
