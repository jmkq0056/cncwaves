.class public final synthetic Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/prefs/PreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/stripe/jvmcore/storage/StoreChangeListener;

.field public final synthetic f$1:Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    iput-object p2, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;

    return-void
.end method


# virtual methods
.method public final preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/storage/StoreChangeListener;

    iget-object v1, p0, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;

    invoke-static {v0, v1, p1}, Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;->$r8$lambda$LsvA5VSFWBvJDqX-tY6FaTscLPM(Lcom/stripe/jvmcore/storage/StoreChangeListener;Lcom/stripe/jvmcore/storage/DefaultKeyValueStore;Ljava/util/prefs/PreferenceChangeEvent;)V

    return-void
.end method
