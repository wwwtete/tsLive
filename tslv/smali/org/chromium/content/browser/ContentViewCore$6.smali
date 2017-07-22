.class Lorg/chromium/content/browser/ContentViewCore$6;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_SEARCH_QUERY_LENGTH:I = 0x3e8

.field private static final MAX_SHARE_QUERY_LENGTH:I = 0x186a0


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2023
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 2023
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShareAvailable()Z
    .locals 3

    .prologue
    .line 2188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2190
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWebSearchAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2195
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return v1

    .line 2196
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2198
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "maxLength"    # I

    .prologue
    const/4 v3, 0x0

    .line 2203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 2205
    .end local p1    # "query":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2204
    .restart local p1    # "query":Ljava/lang/String;
    :cond_1
    const-string v0, "cr.ContentViewCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncating oversized query ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public copy()V
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->copy()V

    .line 2054
    return-void
.end method

.method public cut()V
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->cut()V

    .line 2049
    return-void
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v0

    return v0
.end method

.method public isInsertion()Z
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1900(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 4
    .param p1, "actionModeItem"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2174
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/chromium/content/browser/ContentViewClient;->isSelectActionModeAllowed(I)Z

    move-result v0

    .line 2176
    .local v0, "isAllowedByClient":Z
    if-ne p1, v1, :cond_2

    .line 2177
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$6;->isShareAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 2177
    goto :goto_0

    .line 2180
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 2181
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$6;->isWebSearchAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    .line 2184
    goto :goto_0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$900(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public isSelectionPassword()Z
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1800(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode()V
    .locals 2

    .prologue
    .line 2149
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$2002(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/WebActionMode;)Lorg/chromium/content/browser/WebActionMode;

    .line 2150
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2100(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2152
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    .line 2154
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2200(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2155
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarHidden()V

    .line 2157
    :cond_1
    return-void
.end method

.method public onGetContentRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2163
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2300(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2164
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$2400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2165
    return-void
.end method

.method public paste()V
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->paste()V

    .line 2059
    return-void
.end method

.method public processText(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2082
    const-string v1, "MobileActionMode.ProcessTextIntent"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2083
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore$6;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2085
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2106
    :goto_0
    return-void

    .line 2088
    :cond_1
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2090
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformProcessText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2091
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->startProcessTextIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2103
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2093
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$6$1;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$6$1;-><init>(Lorg/chromium/content/browser/ContentViewCore$6;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public search()V
    .locals 4

    .prologue
    .line 2110
    const-string v2, "MobileActionMode.WebSearch"

    invoke-static {v2}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2111
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2130
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2116
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentViewClient;->performWebSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 2120
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "new_search"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2122
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2124
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2126
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2127
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->selectAll()V

    .line 2039
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isFocusedNodeEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    const-string v0, "MobileActionMode.SelectAllWasEditable"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2044
    :goto_0
    return-void

    .line 2042
    :cond_0
    const-string v0, "MobileActionMode.SelectAllWasNonEditable"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public share()V
    .locals 5

    .prologue
    .line 2063
    const-string v3, "MobileActionMode.Share"

    invoke-static {v3}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 2064
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    const v4, 0x186a0

    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 2067
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v2, "send":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2069
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/chromium/content/R$string;->actionbar_share:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2073
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2074
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2075
    .end local v0    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
