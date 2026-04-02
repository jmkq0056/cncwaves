.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelPaymentIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ClearReaderDisplayOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectInputsOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmSetupIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreatePaymentIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreateSetupIntentOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DisconnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$GetReaderSettingsOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReadReusableCardOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReaderBatteryInfoPollingOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$RebootReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderSettingsOperation;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3360:1\n1013#1:3362\n1024#1:3363\n1013#1:3364\n1024#1:3365\n1013#1:3367\n1024#1:3368\n16#2:3361\n16#2:3366\n1#3:3369\n*S KotlinDebug\n*F\n+ 1 TerminalSession.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession\n*L\n665#1:3362\n665#1:3363\n738#1:3364\n738#1:3365\n851#1:3367\n851#1:3368\n492#1:3361\n752#1:3366\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008$\u0018\u0000 \u00c3\u00022\u00020\u00012\u00020\u0002:D\u00b8\u0002\u00b9\u0002\u00ba\u0002\u00bb\u0002\u00bc\u0002\u00bd\u0002\u00be\u0002\u00bf\u0002\u00c0\u0002\u00c1\u0002\u00c2\u0002\u00c3\u0002\u00c4\u0002\u00c5\u0002\u00c6\u0002\u00c7\u0002\u00c8\u0002\u00c9\u0002\u00ca\u0002\u00cb\u0002\u00cc\u0002\u00cd\u0002\u00ce\u0002\u00cf\u0002\u00d0\u0002\u00d1\u0002\u00d2\u0002\u00d3\u0002\u00d4\u0002\u00d5\u0002\u00d6\u0002\u00d7\u0002\u00d8\u0002\u00d9\u0002B\u00f7\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u0012\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\"\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\u0006\u0010?\u001a\u00020@\u0012\u0006\u0010A\u001a\u00020B\u0012\u0006\u0010C\u001a\u00020D\u0012\u0006\u0010E\u001a\u00020F\u0012\u0006\u0010G\u001a\u00020H\u0012\u0006\u0010I\u001a\u00020J\u0012\u0006\u0010K\u001a\u00020\u0002\u0012\u0006\u0010L\u001a\u00020M\u0012\u0016\u0010N\u001a\u0012\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020Q0Oj\u0002`R\u0012\u0006\u0010S\u001a\u00020T\u0012\u0006\u0010U\u001a\u00020V\u0012\u0006\u0010W\u001a\u00020X\u0012\u0006\u0010Y\u001a\u00020Z\u0012\u0006\u0010[\u001a\u00020\\\u0012\u0006\u0010]\u001a\u00020^\u0012\u0006\u0010_\u001a\u00020`\u0012\"\u0010a\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020d\u0012\u0004\u0012\u00020e01j\u0002`f\u0012\"\u0010g\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020i01j\u0002`j\u0012\u0006\u0010k\u001a\u00020l\u0012\u0006\u0010m\u001a\u00020n\u0012\u0006\u0010o\u001a\u00020p\u0012\u0006\u0010q\u001a\u00020r\u00a2\u0006\u0002\u0010sJ#\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0000\u00a2\u0006\u0003\u0008\u009a\u0001J\'\u0010\u0095\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\u0008\u0010\u0098\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\u001e\u0010\u009f\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0016J(\u0010\u00a4\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00a8\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u0001H\u0016J\n\u0010\u00aa\u0001\u001a\u00030\u009b\u0001H\u0016J\u0014\u0010\u00ab\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J\u001e\u0010\u00ad\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00af\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00b0\u0001H\u0017J\u001e\u0010\u00b1\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00b4\u0001H\u0017J(\u0010\u00b5\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00b6\u0001H\u0016J4\u0010\u00b7\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00b6\u00012\n\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b9\u0001H\u0016J(\u0010\u00ba\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00bb\u0001\u001a\u00030\u0088\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00bc\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J2\u0010\u00bd\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a6\u00012\u0008\u0010\u00b8\u0001\u001a\u00030\u00b9\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00be\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u0001H\u0016J>\u0010\u00bd\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a6\u00012\u0008\u0010\u00bf\u0001\u001a\u00030\u00c0\u00012\n\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b9\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00be\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u0001H\u0016J\u0014\u0010\u00c1\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0016J(\u0010\u00c4\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00c5\u0001H\u0016J\u0014\u0010\u00c6\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00c7\u0001H\u0016J\u001e\u0010\u00c8\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a6\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u0001H\u0016J\'\u0010\u00c9\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\u0008\u0010\u0098\u0001\u001a\u00030\u009c\u00012\u0008\u0010\u00ca\u0001\u001a\u00030\u00cb\u0001H\u0016J\'\u0010\u00cc\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u00012\u0008\u0010\u00ca\u0001\u001a\u00030\u00cb\u0001H\u0016J(\u0010\u00cd\u0001\u001a\u00030\u00ac\u00012\u0008\u0010\u00ce\u0001\u001a\u00030\u00c3\u00012\u0008\u0010\u00cf\u0001\u001a\u00030\u00c3\u00012\u0008\u0010\u00d0\u0001\u001a\u00030\u00c3\u0001H\u0002J\u001e\u0010\u00d1\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00d2\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0016J*\u0010\u00d1\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00d2\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\n\u0010\u00d3\u0001\u001a\u0005\u0018\u00010\u00d4\u0001H\u0017J*\u0010\u00d5\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00d6\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u00012\n\u0010\u00d3\u0001\u001a\u0005\u0018\u00010\u00d4\u0001H\u0016J\n\u0010\u00d7\u0001\u001a\u00030\u009b\u0001H\u0007J\u001e\u0010\u00d8\u0001\u001a\u00030\u00d9\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00da\u0001\u001a\u00030\u00d9\u0001H\u0002J\u0014\u0010\u00db\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J(\u0010\u00dc\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00dd\u00012\u0008\u0010\u00de\u0001\u001a\u00030\u00df\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J\'\u0010\u00e0\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u0011\u0008\u0002\u0010\u00e3\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010\u00e4\u0001H\u0002J\n\u0010\u00e5\u0001\u001a\u00030\u009b\u0001H\u0002J\n\u0010\u00e6\u0001\u001a\u00030\u009b\u0001H\u0002J#\u0010\u00e7\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020u2\u0008\u0010\u0098\u0001\u001a\u00030\u0099\u0001H\u0001\u00a2\u0006\u0003\u0008\u00e8\u0001J\u0018\u0010\u00e9\u0001\u001a\u00030\u009b\u00012\u000c\u0010\u00ea\u0001\u001a\u00070\u0082\u0001R\u00020\u0000H\u0002J\n\u0010\u00eb\u0001\u001a\u00030\u009b\u0001H\u0002J\u0014\u0010\u00ec\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u0001H\u0002J\u0010\u0010\u00ed\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010}H\u0016J\u0013\u0010\u00ee\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00c3\u00010\u00ef\u0001H\u0016J\"\u0010\u00f0\u0001\u001a\u0011\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00f2\u00010\u00f1\u00010\u00ef\u00012\u0008\u0010\u00f3\u0001\u001a\u00030\u00c3\u0001H\u0016J\u0010\u0010\u00f4\u0001\u001a\t\u0012\u0004\u0012\u00020u0\u00f1\u0001H\u0016J\u0014\u0010\u00f5\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00f6\u0001H\u0016J\u0012\u0010\u00f7\u0001\u001a\u00030\u009b\u00012\u0006\u0010t\u001a\u00020uH\u0002J\u001e\u0010\u00f8\u0001\u001a\u00030\u00ae\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0016J\n\u0010\u00f9\u0001\u001a\u00030\u00c0\u0001H\u0016J\n\u0010\u00fa\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u00fb\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u0097\u0001\u001a\u00020uH\u0002J\u001d\u0010\u00fc\u0001\u001a\u00030\u009b\u00012\n\u0008\u0002\u0010\u00fd\u0001\u001a\u00030\u00fe\u0001H\u0086@\u00a2\u0006\u0003\u0010\u00ff\u0001J\u001e\u0010\u0080\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u0081\u0002\u001a\u00030\u0082\u00022\u0008\u0010\u00a2\u0001\u001a\u00030\u0083\u0002H\u0016J\u0008\u0010\u0084\u0002\u001a\u00030\u009b\u0001J\n\u0010\u0085\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010\u0086\u0002\u001a\u00030\u009b\u0001H\u0002J\u001e\u0010\u0087\u0002\u001a\u00030\u00ae\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u0088\u00022\u0008\u0010\u00a2\u0001\u001a\u00030\u0089\u0002H\u0016J\u0014\u0010\u008a\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J\n\u0010\u008b\u0002\u001a\u00020~H\u0096\u0001J\n\u0010\u008c\u0002\u001a\u00030\u009b\u0001H\u0007J\u0014\u0010\u008d\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00f3\u0001\u001a\u00030\u00c3\u0001H\u0016J\n\u0010\u008e\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010\u008f\u0002\u001a\u00030\u009b\u0001H\u0007J\u001e\u0010\u0090\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u0091\u0002\u001a\u00030\u00c3\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0016J\u001e\u0010\u0092\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u0091\u0002\u001a\u00030\u00c3\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u00a9\u0001H\u0016JJ\u0010\u0093\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a2\u0001\u001a\u00030\u0094\u00022\u0008\u0010\u0095\u0002\u001a\u00030\u00c3\u00012#\u0008\u0004\u0010\u0096\u0002\u001a\u001c\u0008\u0001\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u009b\u00010\u0098\u0002\u0012\u0007\u0012\u0005\u0018\u00010\u0099\u00020\u0097\u0002H\u0082\u0008\u00a2\u0006\u0003\u0010\u009a\u0002J \u0010\u009b\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u009c\u0002\u001a\u00030\u00c3\u00012\n\u0010\u009d\u0002\u001a\u0005\u0018\u00010\u009e\u0002H\u0017J\u0014\u0010\u009f\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00f3\u0001\u001a\u00030\u00c3\u0001H\u0016J\u0012\u0010\u00a0\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a1\u0002\u001a\u00030\u00a2\u0002J\u0014\u0010\u00a3\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a4\u0002\u001a\u00030\u00a5\u0002H\u0017J\u001e\u0010\u00a6\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a7\u0002\u001a\u00030\u00a8\u00022\u0008\u0010\u00a2\u0001\u001a\u00030\u00ac\u0001H\u0016J\u001e\u0010\u00a9\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00aa\u00022\u0008\u0010\u00a2\u0001\u001a\u00030\u00f6\u0001H\u0016J\u0012\u0010\u00ab\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u0098\u0001\u001a\u00030\u00ac\u0002J\u0014\u0010\u00ad\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00a4\u0002\u001a\u00030\u00ae\u0002H\u0016J\n\u0010\u00af\u0002\u001a\u00030\u009b\u0001H\u0007J\n\u0010\u00b0\u0002\u001a\u00030\u009b\u0001H\u0002J\u0014\u0010\u00b1\u0002\u001a\u00030\u009b\u00012\u0008\u0010\u00b2\u0002\u001a\u00030\u00c3\u0001H\u0007J\u001e\u0010\u00b3\u0002\u001a\u00030\u00b4\u00022\u0008\u0010\u00b5\u0002\u001a\u00030\u00b6\u00022\u0008\u0010\u00b7\u0002\u001a\u00030\u00dd\u0001H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020MX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020pX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020^X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020HX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020\\X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010t\u001a\u0004\u0018\u00010u8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u0014\u0010x\u001a\u00020y8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020VX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020FX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010N\u001a\u0012\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020Q0Oj\u0002`RX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010|\u001a\u0008\u0012\u0004\u0012\u00020~0}X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u0014\u0010\u0081\u0001\u001a\u00070\u0082\u0001R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010g\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020i01j\u0002`jX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010a\u001a\u001e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c\u0012\u0004\u0012\u00020d\u0012\u0004\u0012\u00020e01j\u0002`fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020lX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0083\u0001\u001a\u00030\u0084\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u000e\u0010I\u001a\u00020JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020DX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020XX\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u008b\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00018V@VX\u0096\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020ZX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020`X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0090\u0001\u001a\u00030\u0091\u0001*\u00030\u0092\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u00a8\u0006\u00da\u0002"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
        "adapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "locationValidator",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "connectionTokenRepository",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "proxyResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
        "chargeAttemptManager",
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "readerBatteryInfoPoller",
        "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "offlineReaderSetup",
        "Lcom/stripe/offlinemode/OfflineReaderSetup;",
        "offlineSessionManager",
        "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
        "tipEligibleValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
        "collectPaymentMethodOperationValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "networkStatusProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "bluetoothDeviceNameRepository",
        "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
        "offlineDatabaseReaper",
        "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
        "stripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "updatesHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatesHealthLogger;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "proxyTerminalListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "backgroundReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "readerActivationListener",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;",
        "errorReporter",
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        "collectInputsExternalModelTransformer",
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
        "permissionsValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
        "offlineStatusRepository",
        "backgroundScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "formsIntegrationLogger",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        "disconnectReasonRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "terminalExceptionTransformer",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
        "collectInputsParametersTransformer",
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "updatePaymentIntentParamRepository",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
        "passthroughHealthStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;",
        "passthroughHealthDiscreteLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;",
        "paymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "cancelIntentManager",
        "Lcom/stripe/cancelintent/CancelIntentManager;",
        "ensureSingleDiscoverOperation",
        "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
        "(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Ljava/util/concurrent/ExecutorService;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)V",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionStatus",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "getConnectionStatus",
        "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "offlineStatusStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "getOfflineStatusStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "operationInProgress",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;",
        "paymentStatus",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "getPaymentStatus",
        "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "previousRefundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "value",
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "simulatorConfiguration",
        "getSimulatorConfiguration",
        "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "setSimulatorConfiguration",
        "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V",
        "accountOfflineConfigOrDefault",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "getAccountOfflineConfigOrDefault",
        "(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "activateReader$terminalsession_release",
        "",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;",
        "activateReaderCallback",
        "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;",
        "cancelPaymentIntent",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "cancelSetupIntent",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "clearCachedCredentials",
        "clearReaderDisplay",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "collectData",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;",
        "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
        "collectInputs",
        "collectInputsParameters",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;",
        "collectPaymentMethodWithExplicitAllowRedisplay",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "collectRefundPaymentMethod",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "collectSetupIntentPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "customerConsentCollected",
        "",
        "completePaymentIntentActionRequired",
        "paymentIntentId",
        "",
        "confirmPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/callable/RefundCallback;",
        "confirmSetupIntent",
        "connectEmbeddedReader",
        "connectionCallback",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        "connectReader",
        "createLogCancelCallback",
        "cancelIntentMethodName",
        "operationName",
        "intentId",
        "createPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "destroy",
        "determineAmountToDisplayForCollection",
        "Lcom/stripe/currency/Amount;",
        "defaultAmount",
        "disconnectReader",
        "discoverReaders",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "discoveryListener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "emergencyDisconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "doFinally",
        "Lkotlin/Function0;",
        "emergencyRebootReader",
        "endReaderBatteryPolling",
        "enqueueActivateOp",
        "enqueueActivateOp$terminalsession_release",
        "enqueueOperation",
        "operation",
        "enqueueReaderBatteryInfoPollingOperation",
        "enqueueReconnectReaderOperation",
        "getHasSessionTokenFlow",
        "getOfflineActiveAccount",
        "Lkotlinx/coroutines/flow/Flow;",
        "getOfflineData",
        "",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
        "accountId",
        "getOfflineReaders",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;",
        "handleMposDevice",
        "handleNextActions",
        "hasSessionToken",
        "installAvailableUpdate",
        "installAvailableUpdateOnMpos",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "listLocations",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;",
        "pause",
        "pauseNetworkHealthChecks",
        "pauseReaderBatteryPolling",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;",
        "rebootReader",
        "requestOfflineStatusStateUpdate",
        "reset",
        "restoreSoftDeletedPayments",
        "resume",
        "resumeNetworkHealthChecks",
        "retrievePaymentIntent",
        "clientSecret",
        "retrieveSetupIntent",
        "runSuspendingApiRequest",
        "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
        "errorMessage",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "saveOfflineConfigForInternetReader",
        "locationId",
        "offlineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "setActiveAccount",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcome",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "setOfflineListener",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "setTapToPayUxConfiguration",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
        "setTerminalListener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "startOfflineSession",
        "startReaderBatteryPolling",
        "stopOfflineSession",
        "reason",
        "supportsReadersOfType",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "discoveryConfiguration",
        "ActivateReaderBackgroundOperation",
        "ActivateReaderOperation",
        "CancelPaymentIntentOperation",
        "CancelSetupIntentOperation",
        "CancelableOperation",
        "ClearReaderDisplayOperation",
        "CollectDataOperation",
        "CollectInputsOperation",
        "CollectPaymentMethodOperation",
        "CollectRefundPaymentMethodOperation",
        "CollectSetupIntentPaymentMethodOperation",
        "Companion",
        "CompletePaymentIntentActionRequiredOperation",
        "ConfirmPaymentIntentOperation",
        "ConfirmRefundOperation",
        "ConfirmSetupIntentOperation",
        "ConnectReaderOperation",
        "CreatePaymentIntentOperation",
        "CreateSetupIntentOperation",
        "DisconnectReaderOperation",
        "DiscoverReadersOperation",
        "ExternalOperation",
        "GetReaderSettingsOperation",
        "HandleNextActionsOperation",
        "InstallUpdateOperation",
        "InternalOperation",
        "NullOperation",
        "Operation",
        "ReadReusableCardOperation",
        "ReaderBatteryInfoPollingOperation",
        "RebootReaderOperation",
        "ReconnectReaderOperation",
        "SetReaderDisplayOperation",
        "SetReaderSettingsOperation",
        "terminalsession_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

.field private static final IDENTIFIER:Ljava/lang/String; = "sdk_operation"


# instance fields
.field private final adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

.field private final apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

.field private final backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private final bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

.field private final cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

.field private final chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

.field private final clock:Lcom/stripe/time/Clock;

.field private final collectInputsExternalModelTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;

.field private final collectInputsParametersTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;

.field private final collectPaymentMethodOperationValidator:Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;

.field private final connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

.field private final disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

.field private final ensureSingleDiscoverOperation:Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

.field private final errorReporter:Lcom/stripe/spos/sentry/http/ErrorReporter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

.field private final locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

.field private final locationValidator:Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

.field private final networkStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineDatabaseReaper:Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;

.field private final offlineReaderSetup:Lcom/stripe/offlinemode/OfflineReaderSetup;

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

.field private final offlineStatusRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;

.field private operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

.field private final passthroughHealthDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final passthroughHealthStageLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

.field private final permissionsValidator:Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

.field private previousRefundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

.field private final proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

.field private final proxyResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

.field private final proxyTerminalListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

.field private final readerActivationListener:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;

.field private final readerBatteryInfoPoller:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

.field private final terminalExceptionTransformer:Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;

.field private final tipEligibleValidator:Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;

.field private final traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

.field private final updatePaymentIntentParamRepository:Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

.field private final updatesHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9_FdDGpM1BaifeFRjKBBfCCLP6o(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation$lambda$6(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Ljava/util/concurrent/ExecutorService;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/stripe/offlinemode/OfflineReaderSetup;",
            "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
            "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
            "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "adapter"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiClient"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationValidator"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationHandler"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenRepository"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenRepository"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyResourceRepository"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeAttemptManager"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerBatteryInfoPoller"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineReaderSetup"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineSessionManager"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipEligibleValidator"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectPaymentMethodOperationValidator"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatusProvider"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothDeviceNameRepository"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDatabaseReaper"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeConnectivityRepository"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesHealthLogger"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatorConfigurationRepository"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyTerminalListener"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyOfflineListener"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundReaderActivator"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerActivationListener"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectInputsExternalModelTransformer"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsValidator"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineStatusRepository"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formsIntegrationLogger"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectReasonRepository"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalExceptionTransformer"

    move-object/from16 v15, p40

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectInputsParametersTransformer"

    move-object/from16 v15, p41

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v15, p42

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatePaymentIntentParamRepository"

    move-object/from16 v15, p43

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passthroughHealthStageLogger"

    move-object/from16 v15, p44

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passthroughHealthDiscreteLogger"

    move-object/from16 v15, p45

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentIntentUpdater"

    move-object/from16 v15, p46

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    move-object/from16 v15, p47

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelIntentManager"

    move-object/from16 v15, p48

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ensureSingleDiscoverOperation"

    move-object/from16 v15, p49

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 184
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    .line 185
    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 186
    iput-object v3, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->locationValidator:Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    .line 187
    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    .line 188
    iput-object v5, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 189
    iput-object v6, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    .line 190
    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 191
    iput-object v8, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    .line 192
    iput-object v9, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 193
    iput-object v10, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 194
    iput-object v11, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerBatteryInfoPoller:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    .line 195
    iput-object v12, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    .line 196
    iput-object v13, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 197
    iput-object v14, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineReaderSetup:Lcom/stripe/offlinemode/OfflineReaderSetup;

    move-object/from16 v1, p15

    .line 198
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    move-object/from16 v1, p16

    .line 199
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->tipEligibleValidator:Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;

    move-object/from16 v1, p17

    .line 200
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectPaymentMethodOperationValidator:Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;

    move-object/from16 v1, p18

    .line 201
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-object/from16 v1, p19

    .line 202
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->networkStatusProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 203
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-object/from16 v1, p21

    .line 204
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineDatabaseReaper:Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;

    move-object/from16 v1, p22

    .line 205
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-object/from16 v1, p23

    .line 206
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->updatesHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v1, p24

    .line 207
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-object/from16 v1, p25

    .line 208
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-object/from16 v1, p26

    .line 209
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyTerminalListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    move-object/from16 v1, p27

    .line 210
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    move-object/from16 v1, p28

    .line 211
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-object/from16 v1, p29

    .line 212
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    move-object/from16 v1, p30

    .line 213
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerActivationListener:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;

    move-object/from16 v1, p31

    .line 214
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->errorReporter:Lcom/stripe/spos/sentry/http/ErrorReporter;

    move-object/from16 v1, p32

    .line 215
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectInputsExternalModelTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;

    move-object/from16 v1, p33

    .line 216
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->permissionsValidator:Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    move-object/from16 v1, p34

    .line 217
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineStatusRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;

    move-object/from16 v1, p35

    .line 222
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p36

    .line 223
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object/from16 v1, p37

    .line 224
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    move-object/from16 v1, p38

    .line 225
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-object/from16 v1, p39

    .line 226
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    move-object/from16 v1, p40

    .line 227
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->terminalExceptionTransformer:Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;

    move-object/from16 v1, p41

    .line 228
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectInputsParametersTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;

    move-object/from16 v1, p42

    .line 229
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->clock:Lcom/stripe/time/Clock;

    move-object/from16 v1, p43

    .line 230
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->updatePaymentIntentParamRepository:Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-object/from16 v1, p44

    .line 231
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->passthroughHealthStageLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v1, p45

    .line 232
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->passthroughHealthDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v1, p46

    .line 233
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-object/from16 v1, p47

    .line 234
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    move-object/from16 v1, p48

    .line 235
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    .line 236
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->ensureSingleDiscoverOperation:Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    .line 240
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    return-void
.end method

.method public static final synthetic access$createLogCancelCallback(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createLogCancelCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$determineAmountToDisplayForCollection(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/currency/Amount;)Lcom/stripe/currency/Amount;
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->determineAmountToDisplayForCollection(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/currency/Amount;)Lcom/stripe/currency/Amount;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$emergencyDisconnectReader(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyDisconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$emergencyRebootReader(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyRebootReader()V

    return-void
.end method

.method public static final synthetic access$endReaderBatteryPolling(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->endReaderBatteryPolling()V

    return-void
.end method

.method public static final synthetic access$enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public static final synthetic access$enqueueReaderBatteryInfoPollingOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueReaderBatteryInfoPollingOperation()V

    return-void
.end method

.method public static final synthetic access$enqueueReconnectReaderOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    return-void
.end method

.method public static final synthetic access$getAccountOfflineConfigOrDefault(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getAccountOfflineConfigOrDefault(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p0
.end method

.method public static final synthetic access$getApiClient$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundReaderActivator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->backgroundReaderActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getCancelIntentManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/cancelintent/CancelIntentManager;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    return-object p0
.end method

.method public static final synthetic access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/transaction/ChargeAttemptManager;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    return-object p0
.end method

.method public static final synthetic access$getClock$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/time/Clock;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->clock:Lcom/stripe/time/Clock;

    return-object p0
.end method

.method public static final synthetic access$getCollectInputsExternalModelTransformer$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectInputsExternalModelTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;

    return-object p0
.end method

.method public static final synthetic access$getCollectInputsParametersTransformer$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectInputsParametersTransformer:Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;

    return-object p0
.end method

.method public static final synthetic access$getCollectPaymentMethodOperationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectPaymentMethodOperationValidator:Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;

    return-object p0
.end method

.method public static final synthetic access$getConnectionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getDisconnectReasonRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    return-object p0
.end method

.method public static final synthetic access$getEnsureSingleDiscoverOperation$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->ensureSingleDiscoverOperation:Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    return-object p0
.end method

.method public static final synthetic access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    return-object p0
.end method

.method public static final synthetic access$getLocationHandler$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/LocationHandler;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    return-object p0
.end method

.method public static final synthetic access$getLocationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->locationValidator:Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getNetworkStatusProvider$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Ljavax/inject/Provider;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->networkStatusProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    return-object p0
.end method

.method public static final synthetic access$getOfflineSessionManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineSessionManager;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    return-object p0
.end method

.method public static final synthetic access$getOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    return-object p0
.end method

.method public static final synthetic access$getPassthroughHealthDiscreteLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->passthroughHealthDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getPassthroughHealthStageLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->passthroughHealthStageLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getPaymentIntentUpdater$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    return-object p0
.end method

.method public static final synthetic access$getPermissionsValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->permissionsValidator:Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    return-object p0
.end method

.method public static final synthetic access$getPreviousRefundParams$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/external/models/RefundParameters;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->previousRefundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    return-object p0
.end method

.method public static final synthetic access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    return-object p0
.end method

.method public static final synthetic access$getReaderActivationListener$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerActivationListener:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;

    return-object p0
.end method

.method public static final synthetic access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getSettingsRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/SettingsRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    return-object p0
.end method

.method public static final synthetic access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    return-object p0
.end method

.method public static final synthetic access$getTerminalExceptionTransformer$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->terminalExceptionTransformer:Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;

    return-object p0
.end method

.method public static final synthetic access$getTipEligibleValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->tipEligibleValidator:Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;

    return-object p0
.end method

.method public static final synthetic access$getTraceManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    return-object p0
.end method

.method public static final synthetic access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/core/transaction/TransactionRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    return-object p0
.end method

.method public static final synthetic access$getUpdatePaymentIntentParamRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->updatePaymentIntentParamRepository:Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->updatesHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$handleMposDevice(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->handleMposDevice(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void
.end method

.method public static final synthetic access$setOperationInProgress$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    return-void
.end method

.method public static final synthetic access$setPreviousRefundParams$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->previousRefundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    return-void
.end method

.method public static final synthetic access$startReaderBatteryPolling(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->startReaderBatteryPolling()V

    return-void
.end method

.method private final createLogCancelCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/callable/Callback;
    .locals 2

    .line 1814
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was invoked. Attempting to cancel ongoing "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1816
    const-string p2, " for: "

    .line 1815
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Pair;

    .line 1814
    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1818
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$createLogCancelCallback$1;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$createLogCancelCallback$1;-><init>()V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Callback;

    return-object p1
.end method

.method private final determineAmountToDisplayForCollection(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/currency/Amount;)Lcom/stripe/currency/Amount;
    .locals 2

    .line 3314
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getDynamicCurrencyConversionOfferPresented()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getDynamicCurrencyConversionSelected()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3316
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->getCardPresent()Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->getDynamicCurrencyConversion()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3317
    new-instance p2, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getAmount()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private final emergencyDisconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1073
    :try_start_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const/4 p1, 0x0

    new-array v4, p1, [Lkotlin/Pair;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :goto_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p1
.end method

.method static synthetic emergencyDisconnectReader$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1066
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$emergencyDisconnectReader$1;

    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-direct {p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$emergencyDisconnectReader$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 1064
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyDisconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final emergencyRebootReader()V
    .locals 9

    const-string v0, "Reader info after missing keys: "

    const/4 v1, 0x0

    .line 1088
    :try_start_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1093
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    .line 1094
    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getReaderInfo(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Lkotlin/Pair;

    invoke-interface {v5, v0, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1095
    :cond_0
    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void

    .line 1088
    :cond_1
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1089
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 1090
    const-string v4, "No connected reader on rebootReader call"

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1088
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1100
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object v3, v2

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    new-array v6, v1, [Lkotlin/Pair;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V

    return-void
.end method

.method private final endReaderBatteryPolling()V
    .locals 2

    .line 987
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 988
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerBatteryInfoPoller:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->endPolling()V

    return-void
.end method

.method private final enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 4

    .line 1032
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "operation"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "enqueueOperation"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1033
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static final enqueueOperation$lambda$6(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1035
    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession.InternalOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InternalOperation;->cancel()V

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x2

    .line 1039
    new-array v3, v3, [Lkotlin/Pair;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "operationInProgress"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "operation"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1037
    const-string v0, "enqueueOperation - Operation in progress when attempting to start a new operation"

    invoke-interface {v1, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1043
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 1044
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1045
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 1044
    const-string v5, "Operation in progress wasn\'t completed before starting new operation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1043
    invoke-virtual {v0, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 1050
    :goto_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 1052
    :try_start_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->run$terminalsession_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 1054
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {p1, v7}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 1055
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->errorReporter:Lcom/stripe/spos/sentry/http/ErrorReporter;

    invoke-interface {p1, v7, v2}, Lcom/stripe/spos/sentry/http/ErrorReporter;->blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;

    .line 1056
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v6, "Unexpected failure"

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method private final enqueueReaderBatteryInfoPollingOperation()V
    .locals 1

    .line 930
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReaderBatteryInfoPollingOperation;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReaderBatteryInfoPollingOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method private final enqueueReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 10

    .line 1959
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$enqueueReconnectReaderOperation$callback$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$enqueueReconnectReaderOperation$callback$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    .line 1968
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1969
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    instance-of v2, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;

    if-nez v2, :cond_0

    .line 1970
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    goto :goto_0

    .line 1973
    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v5, "reader is already reconnecting."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1972
    invoke-interface {v0, v3}, Lcom/stripe/stripeterminal/external/callable/Callback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 1968
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 1977
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "no connected reader while reconnecting."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1976
    invoke-interface {v0, v1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_2
    return-void
.end method

.method private final getAccountOfflineConfigOrDefault(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 31

    .line 2282
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getConfig()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/model/config/MobileClientConfig;->offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    const v29, 0x7ffffff

    const/16 v30, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final handleMposDevice(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 2211
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isShopifyDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->startSession(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2214
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2217
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update available: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " required at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getRequiredAtMs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    .line 2219
    :cond_1
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v4, "No update available"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 2223
    :cond_2
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->setOnlyInstallRequiredUpdates(Z)V

    :goto_1
    if-eqz v0, :cond_4

    .line 2227
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getRequiredAtMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v3}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2228
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;

    .line 2230
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;

    invoke-direct {v2, p1, v0, p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$handleMposDevice$1$updateOp$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/callable/Callback;

    .line 2228
    invoke-direct {v1, p0, v0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 2269
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    move-object v2, v1

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    .line 2270
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    invoke-virtual {v2, v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->startInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 2271
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;->run$terminalsession_release()V

    return-void

    .line 2274
    :cond_3
    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/external/models/Reader;->setAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    .line 2275
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportUpdateAvailable(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    :cond_4
    return-void
.end method

.method private final installAvailableUpdateOnMpos(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 5

    .line 784
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getAvailableUpdate()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 785
    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->setOnlyInstallRequiredUpdates(Z)V

    .line 786
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$installAvailableUpdateOnMpos$1$callback$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    .line 796
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;

    check-cast v2, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-direct {p1, p0, v0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$InstallUpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 797
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    move-object v4, p1

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {v3, v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast v3, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    invoke-virtual {v2, v0, v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->startInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 799
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 784
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 800
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1, v1, v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_1
    return-void
.end method

.method public static synthetic killAidlServer$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x0

    .line 922
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final pauseReaderBatteryPolling()V
    .locals 2

    .line 978
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 979
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerBatteryInfoPoller:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->pausePolling()V

    return-void
.end method

.method private final runSuspendingApiRequest(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1013
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v3, p1

    move-object v5, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$runSuspendingApiRequest$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final startReaderBatteryPolling()V
    .locals 2

    .line 937
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 938
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerBatteryInfoPoller:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$startReaderBatteryPolling$1;

    invoke-direct {v1, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$startReaderBatteryPolling$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->startPolling(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateReaderCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;

    .line 575
    check-cast p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    .line 573
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 572
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public final activateReader$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 5

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyResourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$activateReader$response$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$activateReader$response$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->readerActivationListener:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;

    invoke-interface {v1, p2, p1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    .line 593
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/core/transaction/TransactionRepository;->setAccountId(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getReaderId()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getLocation()Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v4, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkLocation(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 597
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getCanonicalReaderVersion()Ljava/lang/Long;

    move-result-object v4

    .line 594
    invoke-virtual {p1, v1, v2, v4}, Lcom/stripe/stripeterminal/external/models/Reader;->activate(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Long;)V

    .line 602
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getRpcSessionToken()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 603
    :cond_1
    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineReaderSetup:Lcom/stripe/offlinemode/OfflineReaderSetup;

    invoke-interface {v2, v1, p1, p2}, Lcom/stripe/offlinemode/OfflineReaderSetup;->onReaderActivated(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    .line 612
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {p2, p1, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    .line 617
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reader_id"

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "account_id"

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {p2, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v0
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/cancelintent/CancelIntentManager;->cancelIntent(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelPaymentIntentOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelPaymentIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 2

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/cancelintent/CancelIntentManager;->cancelIntent(Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelSetupIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public clearCachedCredentials()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->clearCachedCredentials()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->clearToken()V

    .line 335
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->clear()V

    .line 336
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;->clear()V

    .line 337
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;->clear()V

    .line 338
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    return-void
.end method

.method public clearReaderDisplay(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ClearReaderDisplayOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ClearReaderDisplayOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public collectData(Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->getType()Lcom/stripe/stripeterminal/external/models/CollectDataType;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/CollectDataType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 459
    sget-object v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;->MAGSTRIPE:Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    .line 461
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;

    .line 463
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->getEnableCustomerCancellation()Z

    move-result p1

    .line 461
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectDataOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;ZLcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)V

    .line 466
    move-object p1, v1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 467
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1

    .line 459
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public collectInputs(Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 5

    const-string v0, "collectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "collectInputs"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 487
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectInputsOperation;

    .line 489
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;

    .line 491
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->formsIntegrationLogger:Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    .line 492
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 3361
    const-class v4, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    .line 489
    invoke-direct {v1, p2, v2, v3}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;-><init>(Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 487
    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectInputsOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/internal/common/callable/ProxyCollectInputsResultCallback;)V

    .line 495
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 496
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectPaymentMethodWithExplicitAllowRedisplay(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public collectPaymentMethodWithExplicitAllowRedisplay(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 13

    move-object/from16 v0, p3

    const-string v2, "intent"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v5, 0x1

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "collectPaymentMethodWithExplicitAllowRedisplay"

    invoke-interface {v4, v2, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 365
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;

    .line 367
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getSkipTipping()Z

    move-result v3

    .line 368
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getMoto()Z

    move-result v4

    .line 369
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getUpdatePaymentIntent()Z

    move-result v5

    .line 370
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getTippingConfiguration()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TippingConfiguration;->getEligibleAmount()Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getEnableCustomerCancellation()Z

    move-result v7

    .line 372
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getRequestDynamicCurrencyConversion()Z

    move-result v8

    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->getSurchargeNotice()Ljava/lang/String;

    move-result-object v9

    .line 365
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$collectPaymentMethodWithExplicitAllowRedisplay$op$1;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$collectPaymentMethodWithExplicitAllowRedisplay$op$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v1, p0

    move-object v2, p1

    move-object v12, p2

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectPaymentMethodOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;ZZZLjava/lang/Long;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    .line 378
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lcom/stripe/cancelintent/CancelableIntentOperation;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/stripe/cancelintent/CancelIntentManager;->onQueueIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;)V

    .line 379
    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 380
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {v2, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast v2, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object v2
.end method

.method public collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectRefundPaymentMethodOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 416
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 417
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowRedisplay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 430
    invoke-virtual/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 9

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;

    .line 444
    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->getMoto()Z

    move-result v6

    .line 445
    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->getEnableCustomerCancellation()Z

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p5

    .line 440
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CollectSetupIntentPaymentMethodOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ZZLcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    .line 448
    iget-object p1, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object p2

    move-object p3, v1

    check-cast p3, Lcom/stripe/cancelintent/CancelableIntentOperation;

    iget-object p4, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object p4

    invoke-interface {p1, p2, p3, p4}, Lcom/stripe/cancelintent/CancelIntentManager;->onQueueIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;)V

    .line 449
    move-object p1, v1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 450
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;)V
    .locals 9

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;

    invoke-direct {v1, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;)V

    .line 893
    :try_start_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;->run$terminalsession_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 895
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-interface {p1, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 896
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v4, "Unexpected failure"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CompletePaymentIntentActionRequiredOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;->getAmountSurcharge()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;->getReturnUrl()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmPaymentIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    .line 812
    iget-object p1, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object p2

    move-object p3, v1

    check-cast p3, Lcom/stripe/cancelintent/CancelableIntentOperation;

    iget-object v0, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/stripe/cancelintent/CancelIntentManager;->onQueueIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;)V

    .line 813
    move-object p1, v1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 814
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public confirmRefund(Lcom/stripe/stripeterminal/external/callable/RefundCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmRefundOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/RefundCallback;)V

    .line 822
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 823
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmSetupIntentOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConfirmSetupIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    .line 475
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelIntentManager:Lcom/stripe/cancelintent/CancelIntentManager;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineOrOfflineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/stripe/cancelintent/CancelableIntentOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v2

    invoke-interface {p2, p1, v1, v2}, Lcom/stripe/cancelintent/CancelIntentManager;->onQueueIntentOperation(Ljava/lang/String;Lcom/stripe/cancelintent/CancelableIntentOperation;Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;)V

    .line 476
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 477
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public connectEmbeddedReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "serial_number"

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "connectEmbeddedReader"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 563
    check-cast p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V

    return-void
.end method

.method public connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v0, :cond_0

    .line 510
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 511
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 512
    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;->getBluetoothReaderListener()Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    move-result-object v6

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 510
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v6, v1

    goto/16 :goto_1

    .line 515
    :cond_0
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    if-eqz v0, :cond_1

    .line 516
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 517
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 518
    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;->getUsbReaderListener()Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;

    move-result-object v6

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 516
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 521
    :cond_1
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    if-eqz v0, :cond_2

    .line 522
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 523
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 524
    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;->getHandoffReaderListener()Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 522
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 527
    :cond_2
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    if-eqz v0, :cond_3

    .line 528
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 529
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 530
    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->getTapToPayReaderListener()Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    move-result-object v4

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 528
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 533
    :cond_3
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    if-eqz v0, :cond_4

    .line 534
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 535
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 536
    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;->getInternetReaderListener()Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    move-result-object v5

    const/16 v7, 0x16

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 534
    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 539
    :cond_4
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 542
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 539
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 626
    invoke-virtual {p0, p1, p2, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    return-void
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreatePaymentIntentOperation;

    if-nez p3, :cond_0

    .line 642
    new-instance p3, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    .line 643
    sget-object v1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 642
    invoke-direct {p3, v1}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 639
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreatePaymentIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 638
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreateSetupIntentOperation;

    if-nez p3, :cond_0

    .line 689
    new-instance p3, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    .line 690
    sget-object v1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 689
    invoke-direct {p3, v1}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    .line 686
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CreateSetupIntentOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 685
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 918
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->endReaderBatteryPolling()V

    .line 919
    const-string v0, "Destroy terminal called."

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->stopOfflineSession(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DisconnectReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DisconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyDiscoveryListener;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 3366
    const-class v2, Lcom/stripe/stripeterminal/internal/common/callable/ProxyDiscoveryListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v1

    .line 752
    invoke-direct {v0, p2, v1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyDiscoveryListener;-><init>(Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 753
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 754
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->ensureSingleDiscoverOperation:Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-object p3, p2

    check-cast p3, Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;

    invoke-interface {p1, p3}, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;->onQueueDiscoverOperation(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V

    .line 755
    move-object p1, p2

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 756
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public final enqueueActivateOp$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ActivateReaderBackgroundOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getHasSessionTokenFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineActiveAccount()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getOfflineData(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v1, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v2, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v3, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 296
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function6;

    invoke-static {v0, v1, v2, p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->combineTransform(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineReaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->discoverOfflineReaderList$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineStatusRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;

    invoke-interface {v0}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;->getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    move-result-object v0

    return-object v0
.end method

.method public getReaderSettings(Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$GetReaderSettingsOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$GetReaderSettingsOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public handleNextActions(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$HandleNextActionsOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    .line 884
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 885
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public hasSessionToken()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public installAvailableUpdate()V
    .locals 11

    .line 763
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isMposDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 769
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->installAvailableUpdateOnMpos(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 774
    :cond_1
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 775
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 774
    const-string v5, "This operation is not supported for this reader type"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 763
    :cond_2
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 764
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 763
    const-string v6, "No connected reader"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4
.end method

.method public final killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V
    .locals 11

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 727
    new-instance v10, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;

    invoke-direct {v10, p0, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V

    .line 3364
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$$inlined$runSuspendingApiRequest$1;

    move-object v4, v10

    check-cast v4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    const/4 v7, 0x0

    const-string v6, "Unknown error listing locations from API"

    move-object v8, p0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$$inlined$runSuspendingApiRequest$1;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final pause()V
    .locals 0

    .line 912
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->pauseReaderBatteryPolling()V

    .line 913
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->pauseNetworkHealthChecks()V

    return-void
.end method

.method public final pauseNetworkHealthChecks()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->pauseNetworkHealthChecks()V

    return-void
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReadReusableCardOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ReadReusableCardOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/external/callable/PaymentMethodCallback;)V

    .line 831
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 832
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/Cancelable;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object p1
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$RebootReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$RebootReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public requestOfflineStatusStateUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineStatusRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;

    invoke-interface {v0}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;->requestOfflineStatusStateUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->previousRefundParams:Lcom/stripe/stripeterminal/external/models/RefundParameters;

    .line 995
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    return-void
.end method

.method public restoreSoftDeletedPayments(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->restoreSoftDeletedPayments(Ljava/lang/String;)V

    return-void
.end method

.method public final resume()V
    .locals 0

    .line 906
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->startReaderBatteryPolling()V

    .line 907
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->startOfflineSession()V

    .line 908
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->resumeNetworkHealthChecks()V

    return-void
.end method

.method public final resumeNetworkHealthChecks()V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->resumeNetworkHealthChecks()V

    return-void
.end method

.method public retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 11

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->retrievePaymentIntent()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 840
    new-instance v10, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;

    invoke-direct {v10, p0, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    .line 3367
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1;

    move-object v4, v10

    check-cast v4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    const/4 v7, 0x0

    const-string v6, "Unknown error retrieving payment intent from API"

    move-object v8, p0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$$inlined$runSuspendingApiRequest$1;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 11

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->retrieveSetupIntent()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTrace;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 654
    new-instance v10, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;

    invoke-direct {v10, p0, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    .line 3362
    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;

    move-object v4, v10

    check-cast v4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    const/4 v7, 0x0

    const-string v6, "Unknown error retrieving setup intent from API"

    move-object v8, p0

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$$inlined$runSuspendingApiRequest$1;-><init>(Lcom/stripe/stripeterminal/external/callable/ErrorCallback;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrieveSetupIntent$wrappedCallback$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public saveOfflineConfigForInternetReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)V
    .locals 7

    const-string v0, "locationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->onOfflineConfigUpdate(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    return-void
.end method

.method public setActiveAccount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setActiveAccountId(Ljava/lang/String;)V

    return-void
.end method

.method public final setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;)V
    .locals 2

    const-string v0, "fakedContactlessOutcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$setFakedContactlessOutcome$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$setFakedContactlessOutcome$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyOfflineListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->setListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderDisplayOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderSettingsOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$SetReaderSettingsOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method

.method public setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V

    return-void
.end method

.method public final setTapToPayUxConfiguration(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/TapToPayUxConfigurationRepository;->setUxConfig(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V

    return-void
.end method

.method public setTerminalListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->proxyTerminalListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;->setListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    return-void
.end method

.method public final startOfflineSession()V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;->startForwardingOfflinePayments()V

    .line 946
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineDatabaseReaper:Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;->start()V

    return-void
.end method

.method public final stopOfflineSession(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->offlineSessionManager:Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    .line 953
    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;->stopForwardingOfflinePayments(Ljava/lang/String;)V

    .line 954
    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;->cancelPendingActivations(Ljava/lang/String;)V

    return-void
.end method

.method public supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
    .locals 1

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->adapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    move-result-object p1

    return-object p1
.end method
