.class final Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;
.super Ljava/lang/Object;
.source "CleanUpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->removeReleaseFolders(Landroid/content/Context;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$excludedReleases:[Ljava/lang/String;

.field final synthetic val$rootFolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;->val$rootFolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;->val$excludedReleases:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;->val$rootFolder:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;)V

    iget-object v1, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;->val$excludedReleases:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->access$100(Lcom/nordnetab/chcp/main/utils/CleanUpHelper;[Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->access$202(Z)Z

    .line 50
    return-void
.end method
