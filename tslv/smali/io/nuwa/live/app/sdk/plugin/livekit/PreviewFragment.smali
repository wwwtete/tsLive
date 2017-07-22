.class public Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;
.super Landroid/app/Fragment;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment$Listener;
    }
.end annotation


# instance fields
.field private appResourcesPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-virtual {p0}, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;->appResourcesPackage:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "preview_fragment"

    const-string v3, "layout"

    iget-object v4, p0, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;->appResourcesPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method
