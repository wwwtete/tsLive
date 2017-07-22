.class Lcom/seu/magicfilter/advanced/MagicInkwellFilter$1;
.super Ljava/lang/Object;
.source "MagicInkwellFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/advanced/MagicInkwellFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/advanced/MagicInkwellFilter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/advanced/MagicInkwellFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/advanced/MagicInkwellFilter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/seu/magicfilter/advanced/MagicInkwellFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicInkwellFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicInkwellFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicInkwellFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicInkwellFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicInkwellFilter;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicInkwellFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicInkwellFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicInkwellFilter;->access$100(Lcom/seu/magicfilter/advanced/MagicInkwellFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/inkwellmap.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 65
    return-void
.end method
