.class public interface abstract Lcom/nordnetab/chcp/main/events/IPluginEvent;
.super Ljava/lang/Object;
.source "IPluginEvent.java"


# virtual methods
.method public abstract data()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract error()Lcom/nordnetab/chcp/main/model/ChcpError;
.end method

.method public abstract name()Ljava/lang/String;
.end method
