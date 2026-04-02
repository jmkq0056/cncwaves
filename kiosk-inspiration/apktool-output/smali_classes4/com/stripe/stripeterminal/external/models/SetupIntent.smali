.class public final Lcom/stripe/stripeterminal/external/models/SetupIntent;
.super Ljava/lang/Object;
.source "SetupIntent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;,
        Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u009a\u00012\u00060\u0001j\u0002`\u0002:\u0004\u0099\u0001\u009a\u0001B\u0081\u0002\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u001f\u0012\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010%\u001a\u0004\u0018\u00010&\u00a2\u0006\u0002\u0010\'B\u00e1\u0001\u0008\u0000\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010#\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010(J\u000b\u0010v\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\t\u0010{\u001a\u00020\u001bH\u00c6\u0003J\u0010\u0010|\u001a\u0004\u0018\u00010\u001dH\u00c0\u0003\u00a2\u0006\u0002\u0008}J\t\u0010~\u001a\u00020\u001fH\u00c6\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0081\u0001\u001a\u0004\u0018\u00010#H\u00c6\u0003J\u000c\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u0016\u0010\u0087\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rH\u00c6\u0003J\u000c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000c\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010\u008a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012H\u00c6\u0003J\u0084\u0002\u0010\u008b\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\u0008\u0002\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0016\u0010\u008c\u0001\u001a\u00020\u001f2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u00d6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0004H\u00d6\u0001J\n\u0010\u0090\u0001\u001a\u00020\u0006H\u00d6\u0001J.\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00002\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u00012\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u00c1\u0001\u00a2\u0006\u0003\u0008\u0098\u0001R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010*\u001a\u0004\u00080\u0010,R$\u00101\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00082\u0010*\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00089\u0010*\u001a\u0004\u0008:\u0010,R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010,R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010,R\u001c\u0010\u001e\u001a\u00020\u001f8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008=\u0010*\u001a\u0004\u0008\u001e\u00104R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0013\u0010@\u001a\u0004\u0018\u00010A8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0013\u0010D\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010,R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008F\u0010*\u001a\u0004\u0008G\u0010HR\u001e\u0010 \u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008I\u0010*\u001a\u0004\u0008J\u0010,R\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010LR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR,\u0010Q\u001a\u00020P2\u0006\u0010O\u001a\u00020P8\u0006@GX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008R\u0010*\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR0\u0010X\u001a\u0004\u0018\u00010W2\u0008\u0010O\u001a\u0004\u0018\u00010W8\u0006@GX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008Y\u0010*\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u001e\u0010!\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008^\u0010*\u001a\u0004\u0008_\u0010,R0\u0010b\u001a\u0004\u0018\u00010a2\u0008\u0010`\u001a\u0004\u0018\u00010a8\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008c\u0010*\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008h\u0010*\u001a\u0004\u0008i\u0010,R\u0013\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010kR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010mR\u001e\u0010$\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008n\u0010*\u001a\u0004\u0008o\u0010,R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010u\u00a8\u0006\u009b\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "id",
        "",
        "clientSecret",
        "customerId",
        "description",
        "lastSetupError",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "metadata",
        "",
        "nextAction",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
        "paymentMethodId",
        "paymentMethodTypes",
        "",
        "status",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
        "usage",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
        "applicationId",
        "cancellationReason",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "created",
        "",
        "latestAttemptUnion",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
        "isLiveMode",
        "",
        "mandateId",
        "onBehalfOfId",
        "paymentMethodOptions",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "singleUseMandateId",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)V",
        "getApplicationId$annotations",
        "()V",
        "getApplicationId",
        "()Ljava/lang/String;",
        "getCancellationReason",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
        "getClientSecret$annotations",
        "getClientSecret",
        "collectedOffline",
        "getCollectedOffline$annotations",
        "getCollectedOffline",
        "()Z",
        "setCollectedOffline",
        "(Z)V",
        "getCreated",
        "()J",
        "getCustomerId$annotations",
        "getCustomerId",
        "getDescription",
        "getId",
        "isLiveMode$annotations",
        "getLastSetupError",
        "()Lcom/stripe/stripeterminal/external/api/ApiError;",
        "latestAttempt",
        "Lcom/stripe/stripeterminal/external/models/SetupAttempt;",
        "getLatestAttempt",
        "()Lcom/stripe/stripeterminal/external/models/SetupAttempt;",
        "latestAttemptId",
        "getLatestAttemptId",
        "getLatestAttemptUnion$public_release$annotations",
        "getLatestAttemptUnion$public_release",
        "()Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
        "getMandateId$annotations",
        "getMandateId",
        "getMetadata",
        "()Ljava/util/Map;",
        "getNextAction",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
        "<set-?>",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "offlineBehavior",
        "getOfflineBehavior$annotations",
        "getOfflineBehavior",
        "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "setOfflineBehavior",
        "(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "offlineDetails",
        "getOfflineDetails$annotations",
        "getOfflineDetails",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "setOfflineDetails",
        "(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V",
        "getOnBehalfOfId$annotations",
        "getOnBehalfOfId",
        "value",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodData",
        "getPaymentMethodData$annotations",
        "getPaymentMethodData",
        "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "setPaymentMethodData",
        "(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V",
        "getPaymentMethodId$annotations",
        "getPaymentMethodId",
        "getPaymentMethodOptions",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "getPaymentMethodTypes",
        "()Ljava/util/List;",
        "getSingleUseMandateId$annotations",
        "getSingleUseMandateId",
        "getStatus",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
        "setStatus",
        "(Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;)V",
        "getUsage",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component15$public_release",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

.field private final clientSecret:Ljava/lang/String;

.field private collectedOffline:Z

.field private final created:J

.field private final customerId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isLiveMode:Z

.field private final lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

.field private final latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

.field private final mandateId:Ljava/lang/String;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

.field private offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field private offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

.field private final onBehalfOfId:Ljava/lang/String;

.field private paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

.field private final paymentMethodId:Ljava/lang/String;

.field private final paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

.field private final paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final singleUseMandateId:Ljava/lang/String;

.field private status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

.field private final usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;

    const/16 v0, 0x14

    .line 20
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x8

    aput-object v2, v0, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "customer"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "paymentMethod"
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "application"
        .end annotation
    .end param
    .param p17    # Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "latestAttempt"
        .end annotation
    .end param
    .param p18    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "livemode"
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "mandate"
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "onBehalfOf"
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "singleUseMandate"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    const v0, 0xf5edf

    and-int v1, p1, v0

    if-eq v0, v1, :cond_0

    .line 20
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_1

    .line 57
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    :goto_0
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_2

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    goto :goto_1

    :cond_2
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    :goto_1
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_3

    const-wide/16 p2, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 p2, p15

    :goto_2
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    const p2, 0x8000

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_4

    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    goto :goto_3

    :cond_4
    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    :goto_3
    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->collectedOffline:Z

    .line 181
    sget-object p1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 20
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
            "J",
            "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodTypes"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    .line 57
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    .line 59
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    .line 64
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    .line 70
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    .line 75
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    .line 85
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    .line 90
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    .line 96
    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    move-wide p1, p14

    .line 101
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    move-object/from16 p1, p16

    .line 106
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    move/from16 p1, p17

    .line 113
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    move-object/from16 p1, p18

    .line 119
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 125
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 131
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-object/from16 p1, p21

    .line 136
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    .line 181
    sget-object p1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object/from16 v11, p9

    :goto_1
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    move-wide/from16 v16, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v16, p14

    :goto_2
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_3

    :cond_3
    move/from16 v19, p17

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p16

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    .line 21
    invoke-direct/range {v2 .. v23}, Lcom/stripe/stripeterminal/external/models/SetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 20
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    if-eqz v15, :cond_d

    iget-wide v2, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    goto :goto_d

    :cond_d
    move-wide/from16 v2, p14

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p22, v16

    move/from16 p3, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p22, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p22, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p22, v16

    if-eqz v16, :cond_13

    move-object/from16 p6, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    move-object/from16 p21, p6

    move-object/from16 p22, v1

    goto :goto_13

    :cond_13
    move-object/from16 p22, p21

    move-object/from16 p21, v1

    :goto_13
    move/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-wide/from16 p15, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p17, v15

    move-object/from16 p3, p2

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p22}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getApplicationId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "application"
    .end annotation

    return-void
.end method

.method public static synthetic getClientSecret$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCollectedOffline$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getCustomerId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "customer"
    .end annotation

    return-void
.end method

.method public static synthetic getLatestAttemptUnion$public_release$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "latestAttempt"
    .end annotation

    return-void
.end method

.method public static synthetic getMandateId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "mandate"
    .end annotation

    return-void
.end method

.method public static synthetic getOfflineBehavior$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getOfflineDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getOnBehalfOfId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "onBehalfOf"
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodData$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paymentMethod"
    .end annotation

    return-void
.end method

.method public static synthetic getSingleUseMandateId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "singleUseMandate"
    .end annotation

    return-void
.end method

.method public static synthetic isLiveMode$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "livemode"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 20
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    .line 57
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    :goto_0
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    .line 70
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    :goto_1
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0x9

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xc

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    sget-object v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    const/16 v2, 0xe

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    if-eqz v1, :cond_7

    :goto_3
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    const/16 v2, 0x12

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    return-object v0
.end method

.method public final component11()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-object v0
.end method

.method public final component14()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    return-wide v0
.end method

.method public final component15$public_release()Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    return-object v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    return v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component7()Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;",
            "J",
            "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodTypes"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    invoke-direct/range {v1 .. v22}, Lcom/stripe/stripeterminal/external/models/SetupIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCancellationReason()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectedOffline()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->collectedOffline:Z

    return v0
.end method

.method public final getCreated()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    return-wide v0
.end method

.method public final getCustomerId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSetupError()Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object v0
.end method

.method public final getLatestAttempt()Lcom/stripe/stripeterminal/external/models/SetupAttempt;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;->getSetupAttempt()Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final getLatestAttemptId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLatestAttemptUnion$public_release()Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    return-object v0
.end method

.method public final getMandateId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getNextAction()Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    return-object v0
.end method

.method public final getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    return-object v0
.end method

.method public final getOnBehalfOfId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    return-object v0
.end method

.method public final getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    return-object v0
.end method

.method public final getPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getSingleUseMandateId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    return-object v0
.end method

.method public final getUsage()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/api/ApiError;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    if-nez v2, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLiveMode()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    return v0
.end method

.method public final setCollectedOffline(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->collectedOffline:Z

    return-void
.end method

.method public final setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public final setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    return-void
.end method

.method public final setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 144
    sget-object p1, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    return-void
.end method

.method public final setStatus(Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupIntent(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->clientSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->customerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastSetupError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->lastSetupError:Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nextAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->status:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->usage:Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applicationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancellationReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->cancellationReason:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latestAttemptUnion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->latestAttemptUnion:Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->isLiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mandateId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->mandateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onBehalfOfId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->onBehalfOfId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", singleUseMandateId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntent;->singleUseMandateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
