.class public abstract Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
.super Ljava/lang/Object;
.source "XWalkExternalExtensionManagerInternal.java"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# instance fields
.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V

    .line 45
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 46
    return-void
.end method


# virtual methods
.method public getViewActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPath"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    packed-switch p2, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onStart()V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onPause()V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onResume()V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onDestroy()V

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V

    .line 154
    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onStop()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onDestroy()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract onPause()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract onResume()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract onStart()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract onStop()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method
