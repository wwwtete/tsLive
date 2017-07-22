.class Lcom/seu/magicfilter/base/MagicLookupFilter$1;
.super Ljava/lang/Object;
.source "MagicLookupFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/base/MagicLookupFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/base/MagicLookupFilter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/base/MagicLookupFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/base/MagicLookupFilter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter$1;->this$0:Lcom/seu/magicfilter/base/MagicLookupFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter$1;->this$0:Lcom/seu/magicfilter/base/MagicLookupFilter;

    iget-object v1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter$1;->this$0:Lcom/seu/magicfilter/base/MagicLookupFilter;

    invoke-static {v1}, Lcom/seu/magicfilter/base/MagicLookupFilter;->access$100(Lcom/seu/magicfilter/base/MagicLookupFilter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/seu/magicfilter/base/MagicLookupFilter$1;->this$0:Lcom/seu/magicfilter/base/MagicLookupFilter;

    iget-object v2, v2, Lcom/seu/magicfilter/base/MagicLookupFilter;->table:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/seu/magicfilter/base/MagicLookupFilter;->access$002(Lcom/seu/magicfilter/base/MagicLookupFilter;I)I

    .line 34
    return-void
.end method
