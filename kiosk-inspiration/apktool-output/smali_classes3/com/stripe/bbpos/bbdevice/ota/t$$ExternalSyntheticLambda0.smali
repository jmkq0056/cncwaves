.class public final synthetic Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/bbpos/bbdevice/ota/t;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/t;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/bbpos/bbdevice/ota/t;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$3:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/bbpos/bbdevice/ota/t;

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;->f$3:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->$r8$lambda$sFoRXDwOy_lZ8FwiC4J4mONWskU(Lcom/stripe/bbpos/bbdevice/ota/t;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
