.class Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;
.super Ljava/lang/Object;
.source "MagicHudsonFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$100(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/ohudsonbackground.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$200(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/overlaymap.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;->access$300(Lcom/seu/magicfilter/advanced/MagicHudsonFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/hudsonmap.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 67
    return-void
.end method