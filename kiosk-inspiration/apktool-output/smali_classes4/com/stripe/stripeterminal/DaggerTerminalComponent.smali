.class public final Lcom/stripe/stripeterminal/DaggerTerminalComponent;
.super Ljava/lang/Object;
.source "DaggerTerminalComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/DaggerTerminalComponent$Factory;,
        Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factory()Lcom/stripe/stripeterminal/TerminalComponent$Factory;
    .locals 2

    .line 734
    new-instance v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$Factory;-><init>(Lcom/stripe/stripeterminal/DaggerTerminalComponent$1;)V

    return-object v0
.end method
