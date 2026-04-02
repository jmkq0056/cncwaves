.class public interface abstract Lcom/stripe/stripeterminal/TerminalComponent;
.super Ljava/lang/Object;
.source "TerminalComponent.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;


# annotations
.annotation runtime Ldagger/Component;
    dependencies = {
        Lcom/stripe/stripeterminal/dagger/Dependencies;
    }
    modules = {
        Lcom/stripe/stripeterminal/SdkBuildVariantModule;,
        Lcom/stripe/stripeterminal/dagger/TerminalCommonModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/TerminalComponent$Factory;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008a\u0018\u00002\u00020\u0001:\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0003\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/TerminalComponent;",
        "Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;",
        "Factory",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation
