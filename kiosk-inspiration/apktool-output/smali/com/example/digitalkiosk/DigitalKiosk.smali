.class public final Lcom/example/digitalkiosk/DigitalKiosk;
.super Landroid/app/Application;
.source "DigitalKiosk.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/example/digitalkiosk/DigitalKiosk;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 8
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/stripe/stripeterminal/TerminalApplicationDelegate;->onCreate(Landroid/app/Application;)V

    return-void
.end method
