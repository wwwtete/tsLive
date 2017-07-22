.class Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;
.super Ljava/lang/Object;
.source "MagicBrannanFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$100(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/brannan_process.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$200(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/brannan_blowout.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$300(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/brannan_contrast.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)[I

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$400(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/brannan_luma.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)[I

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;->access$500(Lcom/seu/magicfilter/advanced/MagicBrannanFilter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/brannan_screen.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 67
    return-void
.end method
