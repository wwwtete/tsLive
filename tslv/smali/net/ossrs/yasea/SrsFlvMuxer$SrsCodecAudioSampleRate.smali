.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecAudioSampleRate;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsCodecAudioSampleRate"
.end annotation


# static fields
.field public static final R11025:I = 0x1

.field public static final R22050:I = 0x2

.field public static final R44100:I = 0x3

.field public static final R5512:I = 0x0

.field public static final Reserved:I = 0x4


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecAudioSampleRate;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
