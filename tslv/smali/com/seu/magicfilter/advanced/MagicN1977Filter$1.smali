.class Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;
.super Ljava/lang/Object;
.source "MagicN1977Filter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/advanced/MagicN1977Filter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/advanced/MagicN1977Filter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicN1977Filter;->access$000(Lcom/seu/magicfilter/advanced/MagicN1977Filter;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicN1977Filter;->access$100(Lcom/seu/magicfilter/advanced/MagicN1977Filter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/n1977map.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-static {v0}, Lcom/seu/magicfilter/advanced/MagicN1977Filter;->access$000(Lcom/seu/magicfilter/advanced/MagicN1977Filter;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicN1977Filter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicN1977Filter;->access$200(Lcom/seu/magicfilter/advanced/MagicN1977Filter;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "filter/n1977blowout.png"

    invoke-static {v2, v3}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 58
    return-void
.end method
