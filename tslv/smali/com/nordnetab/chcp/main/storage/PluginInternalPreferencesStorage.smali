.class public Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;
.super Ljava/lang/Object;
.source "PluginInternalPreferencesStorage.java"

# interfaces
.implements Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage",
        "<",
        "Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "chcp_plugin_config_pref"

.field private static final PREF_KEY:Ljava/lang/String; = "config_json"


# instance fields
.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "chcp_plugin_config_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;->preferences:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method


# virtual methods
.method public loadFromPreference()Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "config_json"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "configJson":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic loadFromPreference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;->loadFromPreference()Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    move-result-object v0

    return-object v0
.end method

.method public storeInPreference(Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;)Z
    .locals 3
    .param p1, "config"    # Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_json"

    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic storeInPreference(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {p0, p1}, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;->storeInPreference(Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;)Z

    move-result v0

    return v0
.end method
