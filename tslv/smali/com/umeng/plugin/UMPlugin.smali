.class public Lcom/umeng/plugin/UMPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "UMPlugin.java"


# instance fields
.field private isGameInited:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    return-void
.end method

.method private initGame()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    .line 37
    invoke-static {v2}, Lcom/umeng/analytics/game/UMGameAgent;->setPlayerLevel(I)V

    .line 38
    iget-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 39
    iput-boolean v2, p0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 45
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v42, "UMPlugin"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "execute action:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v42, "init"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 66
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "appKey":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, "channelId":Ljava/lang/String;
    new-instance v42, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v11, v2}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v42 .. v42}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    sget-object v43, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static/range {v42 .. v43}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 71
    const/16 v42, 0x1

    .line 259
    .end local v11    # "appKey":Ljava/lang/String;
    .end local v20    # "channelId":Ljava/lang/String;
    :goto_0
    return v42

    .line 72
    :cond_0
    const-string v42, "onCCEvent"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2

    .line 73
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v19

    .line 74
    .local v19, "array":Lorg/json/JSONArray;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v21, "ck":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v42

    move/from16 v0, v28

    move/from16 v1, v42

    if-ge v0, v1, :cond_1

    .line 76
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 78
    :cond_1
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v41

    .line 79
    .local v41, "value":I
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 80
    .local v31, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v41

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    .line 81
    const/16 v42, 0x1

    goto :goto_0

    .line 82
    .end local v19    # "array":Lorg/json/JSONArray;
    .end local v21    # "ck":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "i":I
    .end local v31    # "label":Ljava/lang/String;
    .end local v41    # "value":I
    :cond_2
    const-string v42, "onEvent"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 83
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 84
    .local v27, "eventId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 86
    .end local v27    # "eventId":Ljava/lang/String;
    :cond_3
    const-string v42, "onEventWithLabel"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_4

    .line 87
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 88
    .restart local v27    # "eventId":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 89
    .restart local v31    # "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 91
    .end local v27    # "eventId":Ljava/lang/String;
    .end local v31    # "label":Ljava/lang/String;
    :cond_4
    const-string v42, "onEventWithParameters"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 92
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 93
    .restart local v27    # "eventId":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    .line 94
    .local v35, "obj":Lorg/json/JSONObject;
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v33, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29

    .line 96
    .local v29, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 97
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 98
    .local v30, "key":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    .line 99
    .local v34, "o":Ljava/lang/Object;
    move-object/from16 v0, v34

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v42, v0

    if-eqz v42, :cond_6

    .line 100
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 101
    .local v41, "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 102
    .end local v41    # "value":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v34

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v42, v0

    if-eqz v42, :cond_5

    move-object/from16 v39, v34

    .line 103
    check-cast v39, Ljava/lang/String;

    .line 104
    .local v39, "strValue":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 107
    .end local v30    # "key":Ljava/lang/String;
    .end local v34    # "o":Ljava/lang/Object;
    .end local v39    # "strValue":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 109
    .end local v27    # "eventId":Ljava/lang/String;
    .end local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v33    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "obj":Lorg/json/JSONObject;
    :cond_8
    const-string v42, "onEventWithCounter"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_c

    .line 110
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 111
    .restart local v27    # "eventId":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    .line 112
    .restart local v35    # "obj":Lorg/json/JSONObject;
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 113
    .restart local v33    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29

    .line 114
    .restart local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_b

    .line 115
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 116
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    .line 117
    .restart local v34    # "o":Ljava/lang/Object;
    move-object/from16 v0, v34

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v42, v0

    if-eqz v42, :cond_a

    .line 118
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 119
    .restart local v41    # "value":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 120
    .end local v41    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v34

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v42, v0

    if-eqz v42, :cond_9

    move-object/from16 v39, v34

    .line 121
    check-cast v39, Ljava/lang/String;

    .line 122
    .restart local v39    # "strValue":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 125
    .end local v30    # "key":Ljava/lang/String;
    .end local v34    # "o":Ljava/lang/Object;
    .end local v39    # "strValue":Ljava/lang/String;
    :cond_b
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v41

    .line 126
    .local v41, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 127
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 128
    .end local v27    # "eventId":Ljava/lang/String;
    .end local v29    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v33    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "obj":Lorg/json/JSONObject;
    .end local v41    # "value":I
    :cond_c
    const-string v42, "onPageBegin"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_d

    .line 129
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 130
    .local v36, "pageName":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 131
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 132
    .end local v36    # "pageName":Ljava/lang/String;
    :cond_d
    const-string v42, "onPageEnd"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_e

    .line 133
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 134
    .restart local v36    # "pageName":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 135
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 136
    .end local v36    # "pageName":Ljava/lang/String;
    :cond_e
    const-string v42, "getDeviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_f

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "phone"

    .line 139
    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    .line 140
    .local v40, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v24

    .line 141
    .local v24, "deviceId":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v24    # "deviceId":Ljava/lang/String;
    .end local v40    # "tm":Landroid/telephony/TelephonyManager;
    :goto_4
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v25

    .line 143
    .local v25, "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 146
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_f
    const-string v42, "setLogEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 147
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v26

    .line 148
    .local v26, "enabled":Z
    invoke-static/range {v26 .. v26}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 149
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 150
    .end local v26    # "enabled":Z
    :cond_10
    const-string v42, "profileSignInWithPUID"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_11

    .line 151
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 152
    .local v38, "puid":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;)V

    .line 153
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 154
    .end local v38    # "puid":Ljava/lang/String;
    :cond_11
    const-string v42, "profileSignInWithPUIDWithProvider"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_12

    .line 155
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 156
    .restart local v38    # "puid":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 157
    .local v37, "provider":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 159
    .end local v37    # "provider":Ljava/lang/String;
    .end local v38    # "puid":Ljava/lang/String;
    :cond_12
    const-string v42, "profileSignOff"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_13

    .line 160
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignOff()V

    .line 161
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 162
    :cond_13
    const-string v42, "setUserLevelId"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_15

    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_14

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 166
    :cond_14
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v32

    .line 167
    .local v32, "level":I
    invoke-static/range {v32 .. v32}, Lcom/umeng/analytics/game/UMGameAgent;->setPlayerLevel(I)V

    .line 168
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 169
    .end local v32    # "level":I
    :cond_15
    const-string v42, "startLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_17

    .line 170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_16

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 173
    :cond_16
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 174
    .local v32, "level":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/umeng/analytics/game/UMGameAgent;->startLevel(Ljava/lang/String;)V

    .line 175
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 176
    .end local v32    # "level":Ljava/lang/String;
    :cond_17
    const-string v42, "finishLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_19

    .line 177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_18

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 180
    :cond_18
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 181
    .restart local v32    # "level":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/umeng/analytics/game/UMGameAgent;->failLevel(Ljava/lang/String;)V

    .line 182
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 183
    .end local v32    # "level":Ljava/lang/String;
    :cond_19
    const-string v42, "failLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1b

    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_1a

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 187
    :cond_1a
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 188
    .restart local v32    # "level":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/umeng/analytics/game/UMGameAgent;->finishLevel(Ljava/lang/String;)V

    .line 190
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 191
    .end local v32    # "level":Ljava/lang/String;
    :cond_1b
    const-string v42, "exchange"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1d

    .line 192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_1c

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 195
    :cond_1c
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    .line 196
    .local v4, "currencyAmount":D
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "currencyType":Ljava/lang/String;
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    .line 198
    .local v7, "virtualAmount":D
    const/16 v42, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    .line 199
    .local v9, "channel":I
    const/16 v42, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 200
    .local v10, "orderId":Ljava/lang/String;
    invoke-static/range {v4 .. v10}, Lcom/umeng/analytics/game/UMGameAgent;->exchange(DLjava/lang/String;DILjava/lang/String;)V

    .line 201
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 202
    .end local v4    # "currencyAmount":D
    .end local v6    # "currencyType":Ljava/lang/String;
    .end local v7    # "virtualAmount":D
    .end local v9    # "channel":I
    .end local v10    # "orderId":Ljava/lang/String;
    :cond_1d
    const-string v42, "pay"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1f

    .line 203
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_1e

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 206
    :cond_1e
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    .line 207
    .local v12, "money":D
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    .line 208
    .local v22, "coin":D
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 209
    .local v18, "source":I
    move-wide/from16 v0, v22

    move/from16 v2, v18

    invoke-static {v12, v13, v0, v1, v2}, Lcom/umeng/analytics/game/UMGameAgent;->pay(DDI)V

    .line 210
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 211
    .end local v12    # "money":D
    .end local v18    # "source":I
    .end local v22    # "coin":D
    :cond_1f
    const-string v42, "payWithItem"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_21

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_20

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 215
    :cond_20
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    .line 216
    .restart local v12    # "money":D
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 217
    .local v14, "item":Ljava/lang/String;
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    .line 218
    .local v15, "number":I
    const/16 v42, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    .line 219
    .local v16, "price":D
    const/16 v42, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 220
    .restart local v18    # "source":I
    invoke-static/range {v12 .. v18}, Lcom/umeng/analytics/game/UMGameAgent;->pay(DLjava/lang/String;IDI)V

    .line 221
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 222
    .end local v12    # "money":D
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "number":I
    .end local v16    # "price":D
    .end local v18    # "source":I
    :cond_21
    const-string v42, "buy"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_23

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_22

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 226
    :cond_22
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 227
    .restart local v14    # "item":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    .line 228
    .restart local v15    # "number":I
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    .line 229
    .restart local v16    # "price":D
    invoke-static/range {v14 .. v17}, Lcom/umeng/analytics/game/UMGameAgent;->buy(Ljava/lang/String;ID)V

    .line 230
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 231
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "number":I
    .end local v16    # "price":D
    :cond_23
    const-string v42, "use"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_25

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_24

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 235
    :cond_24
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 236
    .restart local v14    # "item":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    .line 237
    .restart local v15    # "number":I
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    .line 238
    .restart local v16    # "price":D
    invoke-static/range {v14 .. v17}, Lcom/umeng/analytics/game/UMGameAgent;->use(Ljava/lang/String;ID)V

    .line 239
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 240
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "number":I
    .end local v16    # "price":D
    :cond_25
    const-string v42, "bonus"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_27

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_26

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 244
    :cond_26
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    .line 245
    .restart local v22    # "coin":D
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 246
    .restart local v18    # "source":I
    move-wide/from16 v0, v22

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/game/UMGameAgent;->bonus(DI)V

    .line 247
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 248
    .end local v18    # "source":I
    .end local v22    # "coin":D
    :cond_27
    const-string v42, "bonusWithItem"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_29

    .line 249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/umeng/plugin/UMPlugin;->isGameInited:Z

    move/from16 v42, v0

    if-nez v42, :cond_28

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/umeng/plugin/UMPlugin;->initGame()V

    .line 252
    :cond_28
    const/16 v42, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 253
    .restart local v14    # "item":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    .line 254
    .restart local v15    # "number":I
    const/16 v42, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    .line 255
    .restart local v16    # "price":D
    const/16 v42, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 256
    .restart local v18    # "source":I
    invoke-static/range {v14 .. v18}, Lcom/umeng/analytics/game/UMGameAgent;->bonus(Ljava/lang/String;IDI)V

    .line 257
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 259
    .end local v14    # "item":Ljava/lang/String;
    .end local v15    # "number":I
    .end local v16    # "price":D
    .end local v18    # "source":I
    :cond_29
    const/16 v42, 0x0

    goto/16 :goto_0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 45
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public onPause(Z)V
    .locals 2
    .param p1, "multitasking"    # Z

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 58
    const-string v0, "UMPlugin"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public onResume(Z)V
    .locals 2
    .param p1, "multitasking"    # Z

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 51
    const-string v0, "UMPlugin"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/umeng/plugin/UMPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 53
    return-void
.end method
