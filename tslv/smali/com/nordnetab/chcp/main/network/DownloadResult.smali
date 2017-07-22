.class public Lcom/nordnetab/chcp/main/network/DownloadResult;
.super Ljava/lang/Object;
.source "DownloadResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final error:Ljava/lang/Exception;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 35
    .local p0, "this":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nordnetab/chcp/main/network/DownloadResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nordnetab/chcp/main/network/DownloadResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p2, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nordnetab/chcp/main/network/DownloadResult;->value:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/nordnetab/chcp/main/network/DownloadResult;->error:Ljava/lang/Exception;

    .line 42
    return-void
.end method
