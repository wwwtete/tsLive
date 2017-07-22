.class public Lcordova/plugins/Diagnostic;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcordova/plugins/Diagnostic$LocationProviderChangedReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_STATE_POWERED_OFF:Ljava/lang/String; = "powered_off"

.field private static final BLUETOOTH_STATE_POWERED_ON:Ljava/lang/String; = "powered_on"

.field private static final BLUETOOTH_STATE_POWERING_OFF:Ljava/lang/String; = "powering_off"

.field private static final BLUETOOTH_STATE_POWERING_ON:Ljava/lang/String; = "powering_on"

.field private static final BLUETOOTH_STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final LOCATION_MODE_BATTERY_SAVING:Ljava/lang/String; = "battery_saving"

.field private static final LOCATION_MODE_DEVICE_ONLY:Ljava/lang/String; = "device_only"

.field private static final LOCATION_MODE_HIGH_ACCURACY:Ljava/lang/String; = "high_accuracy"

.field private static final LOCATION_MODE_OFF:Ljava/lang/String; = "location_off"

.field private static final LOCATION_MODE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final STATUS_DENIED:Ljava/lang/String; = "DENIED"

.field private static final STATUS_GRANTED:Ljava/lang/String; = "GRANTED"

.field private static final STATUS_NOT_REQUESTED_OR_DENIED_ALWAYS:Ljava/lang/String; = "STATUS_NOT_REQUESTED_OR_DENIED_ALWAYS"

.field public static final TAG:Ljava/lang/String; = "Diagnostic"

.field private static gpsLocationPermission:Ljava/lang/String;

.field public static instance:Lcordova/plugins/Diagnostic;

.field public static locationManager:Landroid/location/LocationManager;

.field private static networkLocationPermission:Ljava/lang/String;

.field private static final permissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bluetoothListenerInitialized:Z

.field private callbackContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field protected currentContext:Lorg/apache/cordova/CallbackContext;

.field private currentLocationMode:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private permissionStatuses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "_permissionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "READ_CALENDAR"

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    const-string v1, "WRITE_CALENDAR"

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    const-string v1, "CAMERA"

    const-string v2, "android.permission.CAMERA"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    const-string v1, "READ_CONTACTS"

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    const-string v1, "WRITE_CONTACTS"

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    const-string v1, "GET_ACCOUNTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    const-string v1, "ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    const-string v1, "ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    const-string v1, "RECORD_AUDIO"

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    const-string v1, "READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const-string v1, "CALL_PHONE"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const-string v1, "ADD_VOICEMAIL"

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    const-string v1, "USE_SIP"

    const-string v2, "android.permission.USE_SIP"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    const-string v1, "PROCESS_OUTGOING_CALLS"

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    const-string v1, "SEND_SMS"

    const-string v2, "android.permission.SEND_SMS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    const-string v1, "RECEIVE_SMS"

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    const-string v1, "READ_SMS"

    const-string v2, "android.permission.READ_SMS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    const-string v1, "RECEIVE_WAP_PUSH"

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    const-string v1, "RECEIVE_MMS"

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    const-string v1, "WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const-string v1, "READ_CALL_LOG"

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    const-string v1, "WRITE_CALL_LOG"

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const-string v1, "READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    const-string v1, "BODY_SENSORS"

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-static {v0, v1, v2}, Lcordova/plugins/Diagnostic;->addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    .line 133
    const-string v1, "ACCESS_FINE_LOCATION"

    sput-object v1, Lcordova/plugins/Diagnostic;->gpsLocationPermission:Ljava/lang/String;

    .line 134
    const-string v1, "ACCESS_COARSE_LOCATION"

    sput-object v1, Lcordova/plugins/Diagnostic;->networkLocationPermission:Ljava/lang/String;

    .line 180
    const/4 v1, 0x0

    sput-object v1, Lcordova/plugins/Diagnostic;->instance:Lcordova/plugins/Diagnostic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcordova/plugins/Diagnostic;->bluetoothListenerInitialized:Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcordova/plugins/Diagnostic;->currentLocationMode:Ljava/lang/String;

    .line 831
    new-instance v0, Lcordova/plugins/Diagnostic$2;

    invoke-direct {v0, p0}, Lcordova/plugins/Diagnostic$2;-><init>(Lcordova/plugins/Diagnostic;)V

    iput-object v0, p0, Lcordova/plugins/Diagnostic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    return-void
.end method

.method private _getPermissionsAuthorizationStatus([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 615
    .local v5, "statuses":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 616
    aget-object v3, p1, v2

    .line 617
    .local v3, "permission":Ljava/lang/String;
    sget-object v6, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 618
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not a valid permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 620
    :cond_0
    sget-object v6, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    .local v0, "androidPermission":Ljava/lang/String;
    const-string v6, "Diagnostic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get authorisation status for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0, v0}, Lcordova/plugins/Diagnostic;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    .line 623
    .local v1, "granted":Z
    if-eqz v1, :cond_1

    .line 624
    const-string v6, "GRANTED"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_1
    iget-object v6, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcordova/plugins/Diagnostic;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    .line 627
    .local v4, "showRationale":Z
    if-nez v4, :cond_2

    .line 628
    const-string v6, "STATUS_NOT_REQUESTED_OR_DENIED_ALWAYS"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 630
    :cond_2
    const-string v6, "DENIED"

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 634
    .end local v0    # "androidPermission":Ljava/lang/String;
    .end local v1    # "granted":Z
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "showRationale":Z
    :cond_3
    return-object v5
.end method

.method private _requestRuntimePermissions(Lorg/json/JSONArray;I)V
    .locals 10
    .param p1, "permissions"    # Lorg/json/JSONArray;
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcordova/plugins/Diagnostic;->jsonArrayToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcordova/plugins/Diagnostic;->_getPermissionsAuthorizationStatus([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 639
    .local v1, "currentPermissionsStatuses":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 640
    .local v5, "permissionsToRequest":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 641
    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GRANTED"

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    .line 643
    .local v2, "granted":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 644
    const-string v7, "Diagnostic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission already granted for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v7, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 646
    .local v6, "requestStatuses":Lorg/json/JSONObject;
    const-string v7, "GRANTED"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    iget-object v7, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v6    # "requestStatuses":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v2    # "granted":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 649
    .restart local v2    # "granted":Z
    :cond_1
    sget-object v7, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    .local v0, "androidPermission":Ljava/lang/String;
    const-string v7, "Diagnostic"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting permission for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 654
    .end local v0    # "androidPermission":Ljava/lang/String;
    .end local v2    # "granted":Z
    .end local v4    # "permission":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 655
    const-string v7, "Diagnostic"

    const-string v8, "Requesting permissions"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-direct {p0, v5}, Lcordova/plugins/Diagnostic;->jsonArrayToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p0, p2, v7}, Lcordova/plugins/Diagnostic;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 662
    :goto_3
    return-void

    .line 659
    :cond_3
    const-string v7, "Diagnostic"

    const-string v8, "No permissions to request: returning result"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0, p2}, Lcordova/plugins/Diagnostic;->sendRuntimeRequestResult(I)V

    goto :goto_3
.end method

.method private static addBiDirMapEntry(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 731
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void
.end method

.method private clearRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 716
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "sRequestId":Ljava/lang/String;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private generateRandom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 693
    .local v1, "rn":Ljava/util/Random;
    const v2, 0xf4240

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 694
    .local v0, "random":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateRandomRequestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, "requestId":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 683
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->generateRandom()Ljava/lang/String;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const/4 v0, 0x0

    goto :goto_0

    .line 688
    :cond_1
    return-object v0
.end method

.method private getContextById(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No context found for request id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method private getLocationMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 579
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 580
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 592
    .local v0, "mode":I
    :goto_0
    return v0

    .line 582
    .end local v0    # "mode":I
    :cond_0
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->isLocationProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->isLocationProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    const/4 v0, 0x3

    .restart local v0    # "mode":I
    goto :goto_0

    .line 584
    .end local v0    # "mode":I
    :cond_1
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->isLocationProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    const/4 v0, 0x1

    .restart local v0    # "mode":I
    goto :goto_0

    .line 586
    .end local v0    # "mode":I
    :cond_2
    const-string v1, "network"

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->isLocationProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 587
    const/4 v0, 0x2

    .restart local v0    # "mode":I
    goto :goto_0

    .line 589
    .end local v0    # "mode":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "mode":I
    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, p1, v0}, Lcordova/plugins/Diagnostic;->handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 553
    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "requestId"    # I

    .prologue
    .line 564
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "sRequestId":Ljava/lang/String;
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CallbackContext;

    .line 570
    .local v0, "context":Lorg/apache/cordova/CallbackContext;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcordova/plugins/Diagnostic;->handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 571
    invoke-direct {p0, p2}, Lcordova/plugins/Diagnostic;->clearRequest(I)V

    .line 572
    return-void

    .line 568
    .end local v0    # "context":Lorg/apache/cordova/CallbackContext;
    :cond_0
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    .restart local v0    # "context":Lorg/apache/cordova/CallbackContext;
    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 539
    :try_start_0
    const-string v1, "Diagnostic"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Diagnostic"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 736
    const/4 v2, 0x1

    .line 737
    .local v2, "hasPermission":Z
    const/4 v3, 0x0

    .line 739
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "hasPermission"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 740
    iget-object v4, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 741
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 745
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_0
    return v2

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Diagnostic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cordova v6.1.2 does not support runtime permissions so defaulting to GRANTED for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeBluetoothListener()V
    .locals 4

    .prologue
    .line 606
    iget-boolean v0, p0, Lcordova/plugins/Diagnostic;->bluetoothListenerInitialized:Z

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcordova/plugins/Diagnostic;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcordova/plugins/Diagnostic;->bluetoothListenerInitialized:Z

    .line 610
    :cond_0
    return-void
.end method

.method private isLocationAuthorized()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 596
    sget-object v1, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    sget-object v2, Lcordova/plugins/Diagnostic;->gpsLocationPermission:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    sget-object v2, Lcordova/plugins/Diagnostic;->networkLocationPermission:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 597
    .local v0, "authorized":Z
    :goto_0
    const-string v2, "Diagnostic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location permission is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "authorized"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v0

    .line 596
    .end local v0    # "authorized":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 597
    .restart local v0    # "authorized":Z
    :cond_2
    const-string v1, "unauthorized"

    goto :goto_1
.end method

.method private isLocationProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 602
    sget-object v0, Lcordova/plugins/Diagnostic;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private jsonArrayToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 698
    if-nez p1, :cond_1

    .line 699
    const/4 v0, 0x0

    .line 705
    :cond_0
    return-object v0

    .line 701
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 702
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 703
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V
    .locals 7
    .param p1, "plugin"    # Lorg/apache/cordova/CordovaPlugin;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 750
    :try_start_0
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requestPermissions"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/apache/cordova/CordovaPlugin;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 751
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    return-void

    .line 752
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "requestPermissions() method not found in CordovaInterface implementation of Cordova v6.1.2"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sendRuntimeRequestResult(I)V
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    .line 665
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "sRequestId":Ljava/lang/String;
    iget-object v3, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CallbackContext;

    .line 667
    .local v0, "context":Lorg/apache/cordova/CallbackContext;
    iget-object v3, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 668
    .local v2, "statuses":Lorg/json/JSONObject;
    const-string v3, "Diagnostic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending runtime request result for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 670
    return-void
.end method

.method public static setBluetoothState(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 460
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 461
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 462
    .local v1, "isEnabled":Z
    if-eqz p0, :cond_0

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    .line 468
    :goto_0
    return v2

    .line 465
    :cond_0
    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    goto :goto_0

    .line 468
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 760
    :try_start_0
    const-class v4, Landroid/support/v4/app/ActivityCompat;

    const-string v5, "shouldShowRequestPermissionRationale"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 761
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 762
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 766
    .local v3, "shouldShow":Z
    return v3

    .line 763
    .end local v0    # "bool":Ljava/lang/Boolean;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "shouldShow":Z
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "shouldShowRequestPermissionRationale() method not found in ActivityCompat class. Check you have Android Support Library v23+ installed"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private storeContextByRequestId()I
    .locals 3

    .prologue
    .line 673
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->generateRandomRequestId()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "requestId":Ljava/lang/String;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->callbackContexts:Ljava/util/HashMap;

    iget-object v2, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iput-object p3, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    .line 241
    :try_start_0
    const-string v3, "switchToSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->switchToAppSettings()V

    .line 243
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    :goto_0
    move v1, v2

    .line 311
    :goto_1
    return v1

    .line 244
    :cond_0
    const-string v3, "switchToLocationSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->switchToLocationSettings()V

    .line 246
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception occurred: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcordova/plugins/Diagnostic;->handleError(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "switchToMobileDataSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->switchToMobileDataSettings()V

    .line 249
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 250
    :cond_2
    const-string v3, "switchToBluetoothSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->switchToBluetoothSettings()V

    .line 252
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 253
    :cond_3
    const-string v3, "switchToWifiSettings"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->switchToWifiSettings()V

    .line 255
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 256
    :cond_4
    const-string v3, "isLocationAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 257
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isGpsLocationAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isNetworkLocationAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_2

    .line 258
    :cond_7
    const-string v3, "isLocationEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 259
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isGpsLocationEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isNetworkLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v3, v2

    :goto_3
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_0

    :cond_9
    move v3, v1

    goto :goto_3

    .line 260
    :cond_a
    const-string v3, "isGpsLocationAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 261
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isGpsLocationAvailable()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_4
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_b
    move v3, v1

    goto :goto_4

    .line 262
    :cond_c
    const-string v3, "isNetworkLocationAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 263
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isNetworkLocationAvailable()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    :goto_5
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_d
    move v3, v1

    goto :goto_5

    .line 264
    :cond_e
    const-string v3, "isGpsLocationEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 265
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isGpsLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v2

    :goto_6
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_f
    move v3, v1

    goto :goto_6

    .line 266
    :cond_10
    const-string v3, "isNetworkLocationEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 267
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isNetworkLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v2

    :goto_7
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_11
    move v3, v1

    goto :goto_7

    .line 268
    :cond_12
    const-string v3, "getLocationMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 269
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->getLocationModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_13
    const-string v3, "isWifiAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 271
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isWifiAvailable()Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v2

    :goto_8
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_14
    move v3, v1

    goto :goto_8

    .line 272
    :cond_15
    const-string v3, "isCameraPresent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 273
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isCameraPresent()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v2

    :goto_9
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_16
    move v3, v1

    goto :goto_9

    .line 274
    :cond_17
    const-string v3, "isBluetoothAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 275
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v2

    :goto_a
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_18
    move v3, v1

    goto :goto_a

    .line 276
    :cond_19
    const-string v3, "isBluetoothEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 277
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v2

    :goto_b
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_1a
    move v3, v1

    goto :goto_b

    .line 278
    :cond_1b
    const-string v3, "hasBluetoothSupport"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 279
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->hasBluetoothSupport()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v2

    :goto_c
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_1c
    move v3, v1

    goto :goto_c

    .line 280
    :cond_1d
    const-string v3, "hasBluetoothLESupport"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 281
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->hasBluetoothLESupport()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v2

    :goto_d
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_1e
    move v3, v1

    goto :goto_d

    .line 282
    :cond_1f
    const-string v3, "hasBluetoothLEPeripheralSupport"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 283
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->hasBluetoothLEPeripheralSupport()Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v2

    :goto_e
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto/16 :goto_0

    :cond_20
    move v3, v1

    goto :goto_e

    .line 284
    :cond_21
    const-string v3, "setWifiState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 285
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcordova/plugins/Diagnostic;->setWifiState(Z)V

    .line 286
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 287
    :cond_22
    const-string v3, "setBluetoothState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 288
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Lcordova/plugins/Diagnostic;->setBluetoothState(Z)Z

    .line 289
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 290
    :cond_23
    const-string v3, "getBluetoothState"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 291
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->getBluetoothState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_24
    const-string v3, "initializeBluetoothListener"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 293
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->initializeBluetoothListener()V

    .line 294
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 295
    :cond_25
    const-string v3, "getPermissionAuthorizationStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 296
    invoke-virtual {p0, p2}, Lcordova/plugins/Diagnostic;->getPermissionAuthorizationStatus(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 297
    :cond_26
    const-string v3, "getPermissionsAuthorizationStatus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 298
    invoke-virtual {p0, p2}, Lcordova/plugins/Diagnostic;->getPermissionsAuthorizationStatus(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 299
    :cond_27
    const-string v3, "requestRuntimePermission"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 300
    invoke-virtual {p0, p2}, Lcordova/plugins/Diagnostic;->requestRuntimePermission(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 301
    :cond_28
    const-string v3, "requestRuntimePermissions"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 302
    invoke-virtual {p0, p2}, Lcordova/plugins/Diagnostic;->requestRuntimePermissions(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 304
    :cond_29
    const-string v2, "Invalid action"

    invoke-direct {p0, v2}, Lcordova/plugins/Diagnostic;->handleError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public executeGlobalJavascript(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 770
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcordova/plugins/Diagnostic$1;

    invoke-direct {v1, p0, p1}, Lcordova/plugins/Diagnostic$1;-><init>(Lcordova/plugins/Diagnostic;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method public getBluetoothState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    const-string v0, "unknown"

    .line 474
    .local v0, "bluetoothState":Ljava/lang/String;
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->hasBluetoothSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 476
    .local v1, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 477
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 492
    .end local v1    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-object v0

    .line 479
    .restart local v1    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v2    # "state":I
    :pswitch_0
    const-string v0, "powered_off"

    .line 480
    goto :goto_0

    .line 482
    :pswitch_1
    const-string v0, "powered_on"

    .line 483
    goto :goto_0

    .line 485
    :pswitch_2
    const-string v0, "powering_off"

    .line 486
    goto :goto_0

    .line 488
    :pswitch_3
    const-string v0, "powering_on"

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLocationModeName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->getLocationMode()I

    move-result v0

    .line 344
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 358
    const-string v1, "unknown"

    .line 360
    .local v1, "modeName":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcordova/plugins/Diagnostic;->currentLocationMode:Ljava/lang/String;

    .line 361
    return-object v1

    .line 346
    .end local v1    # "modeName":Ljava/lang/String;
    :pswitch_0
    const-string v1, "high_accuracy"

    .line 347
    .restart local v1    # "modeName":Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v1    # "modeName":Ljava/lang/String;
    :pswitch_1
    const-string v1, "device_only"

    .line 350
    .restart local v1    # "modeName":Ljava/lang/String;
    goto :goto_0

    .line 352
    .end local v1    # "modeName":Ljava/lang/String;
    :pswitch_2
    const-string v1, "battery_saving"

    .line 353
    .restart local v1    # "modeName":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v1    # "modeName":Ljava/lang/String;
    :pswitch_3
    const-string v1, "location_off"

    .line 356
    .restart local v1    # "modeName":Ljava/lang/String;
    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPermissionAuthorizationStatus(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "permission":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 504
    .local v1, "permissions":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 505
    invoke-direct {p0, v1}, Lcordova/plugins/Diagnostic;->jsonArrayToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcordova/plugins/Diagnostic;->_getPermissionsAuthorizationStatus([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 506
    .local v2, "statuses":Lorg/json/JSONObject;
    iget-object v3, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public getPermissionsAuthorizationStatus(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 496
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 497
    .local v0, "permissions":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcordova/plugins/Diagnostic;->jsonArrayToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcordova/plugins/Diagnostic;->_getPermissionsAuthorizationStatus([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 498
    .local v1, "statuses":Lorg/json/JSONObject;
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->currentContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 499
    return-void
.end method

.method public hasBluetoothLEPeripheralSupport()Z
    .locals 3

    .prologue
    .line 413
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 414
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 415
    .local v1, "result":Z
    :goto_0
    return v1

    .line 414
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasBluetoothLESupport()Z
    .locals 3

    .prologue
    .line 407
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 408
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 409
    .local v1, "result":Z
    return v1
.end method

.method public hasBluetoothSupport()Z
    .locals 3

    .prologue
    .line 401
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 402
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 403
    .local v1, "result":Z
    return v1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 2
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 209
    const-string v0, "Diagnostic"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sput-object p0, Lcordova/plugins/Diagnostic;->instance:Lcordova/plugins/Diagnostic;

    .line 212
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcordova/plugins/Diagnostic;->locationManager:Landroid/location/LocationManager;

    .line 213
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 214
    return-void
.end method

.method public isBluetoothAvailable()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->hasBluetoothSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 391
    .local v0, "result":Z
    :goto_0
    return v0

    .line 390
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 396
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 397
    .local v1, "result":Z
    :goto_0
    return v1

    .line 396
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraPresent()Z
    .locals 3

    .prologue
    .line 384
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 385
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.camera"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 386
    .local v1, "result":Z
    return v1
.end method

.method public isGpsLocationAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isGpsLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->isLocationAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 317
    .local v0, "result":Z
    :goto_0
    const-string v1, "Diagnostic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS location available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v0

    .line 316
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGpsLocationEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 322
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->getLocationMode()I

    move-result v0

    .line 323
    .local v0, "mode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 324
    .local v1, "result":Z
    :cond_0
    :goto_0
    const-string v2, "Diagnostic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS location setting enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v1

    .line 323
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkLocationAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->isNetworkLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->isLocationAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 330
    .local v0, "result":Z
    :goto_0
    const-string v1, "Diagnostic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network location available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v0

    .line 329
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkLocationEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->getLocationMode()I

    move-result v0

    .line 336
    .local v0, "mode":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 337
    .local v1, "result":Z
    :goto_0
    const-string v2, "Diagnostic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network location setting enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v1

    .line 336
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiAvailable()Z
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 379
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 380
    .local v0, "result":Z
    return v0
.end method

.method public notifyLocationStateChange()V
    .locals 6

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcordova/plugins/Diagnostic;->currentLocationMode:Ljava/lang/String;

    .line 367
    .local v0, "currentMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->getLocationModeName()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "newMode":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const-string v3, "Diagnostic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location mode change to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->getLocationModeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_onLocationStateChange(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcordova/plugins/Diagnostic;->getLocationModeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcordova/plugins/Diagnostic;->executeGlobalJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "currentMode":Ljava/lang/String;
    .end local v2    # "newMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Diagnostic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error retrieving current location mode on location state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 221
    :try_start_0
    iget-boolean v1, p0, Lcordova/plugins/Diagnostic;->bluetoothListenerInitialized:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcordova/plugins/Diagnostic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Diagnostic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unregister Bluetooth receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, "sRequestId":Ljava/lang/String;
    const-string v12, "Diagnostic"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received result for permissions request id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v7, 0x1

    .line 797
    .local v7, "returnStatuses":Z
    :try_start_0
    invoke-direct {p0, v8}, Lcordova/plugins/Diagnostic;->getContextById(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    .line 798
    .local v2, "context":Lorg/apache/cordova/CallbackContext;
    iget-object v12, p0, Lcordova/plugins/Diagnostic;->permissionStatuses:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 800
    .local v11, "statuses":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, "i":I
    move-object/from16 v0, p2

    array-length v5, v0

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 801
    aget-object v1, p2, v4

    .line 802
    .local v1, "androidPermission":Ljava/lang/String;
    sget-object v12, Lcordova/plugins/Diagnostic;->permissionsMap:Ljava/util/Map;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 804
    .local v6, "permission":Ljava/lang/String;
    aget v12, p3, v4

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 805
    iget-object v12, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v12}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {p0, v12, v1}, Lcordova/plugins/Diagnostic;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v9

    .line 806
    .local v9, "showRationale":Z
    if-nez v9, :cond_0

    .line 809
    const-string v10, "STATUS_NOT_REQUESTED_OR_DENIED_ALWAYS"

    .line 818
    .end local v9    # "showRationale":Z
    .local v10, "status":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    const-string v12, "Diagnostic"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Authorisation for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct/range {p0 .. p1}, Lcordova/plugins/Diagnostic;->clearRequest(I)V

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 812
    .end local v10    # "status":Ljava/lang/String;
    .restart local v9    # "showRationale":Z
    :cond_0
    const-string v10, "DENIED"

    .restart local v10    # "status":Ljava/lang/String;
    goto :goto_1

    .line 816
    .end local v9    # "showRationale":Z
    .end local v10    # "status":Ljava/lang/String;
    :cond_1
    const-string v10, "GRANTED"

    .restart local v10    # "status":Ljava/lang/String;
    goto :goto_1

    .line 823
    .end local v1    # "androidPermission":Ljava/lang/String;
    .end local v6    # "permission":Ljava/lang/String;
    .end local v10    # "status":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 824
    invoke-virtual {v2, v11}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v2    # "context":Lorg/apache/cordova/CallbackContext;
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v11    # "statuses":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    return-void

    .line 826
    :catch_0
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "Exception occurred onRequestPermissionsResult: "

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p1

    invoke-direct {p0, v12, v0}, Lcordova/plugins/Diagnostic;->handleError(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public requestRuntimePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->storeContextByRequestId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcordova/plugins/Diagnostic;->requestRuntimePermission(Ljava/lang/String;I)V

    .line 521
    return-void
.end method

.method public requestRuntimePermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 525
    .local v0, "permissions":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 526
    invoke-direct {p0, v0, p2}, Lcordova/plugins/Diagnostic;->_requestRuntimePermissions(Lorg/json/JSONArray;I)V

    .line 527
    return-void
.end method

.method public requestRuntimePermission(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcordova/plugins/Diagnostic;->requestRuntimePermission(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public requestRuntimePermissions(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 511
    .local v0, "permissions":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcordova/plugins/Diagnostic;->storeContextByRequestId()I

    move-result v1

    .line 512
    .local v1, "requestId":I
    invoke-direct {p0, v0, v1}, Lcordova/plugins/Diagnostic;->_requestRuntimePermissions(Lorg/json/JSONArray;I)V

    .line 513
    return-void
.end method

.method public setWifiState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 451
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 452
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public switchToAppSettings()V
    .locals 5

    .prologue
    .line 419
    const-string v2, "Diagnostic"

    const-string v3, "Switch to App Settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "appIntent":Landroid/content/Intent;
    const-string v2, "package"

    iget-object v3, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 422
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 423
    iget-object v2, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 424
    return-void
.end method

.method public switchToBluetoothSettings()V
    .locals 3

    .prologue
    .line 439
    const-string v1, "Diagnostic"

    const-string v2, "Switch to Bluetooth Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method

.method public switchToLocationSettings()V
    .locals 3

    .prologue
    .line 427
    const-string v1, "Diagnostic"

    const-string v2, "Switch to Location Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 430
    return-void
.end method

.method public switchToMobileDataSettings()V
    .locals 3

    .prologue
    .line 433
    const-string v1, "Diagnostic"

    const-string v2, "Switch to Mobile Data Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method public switchToWifiSettings()V
    .locals 3

    .prologue
    .line 445
    const-string v1, "Diagnostic"

    const-string v2, "Switch to Wifi Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "settingsIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcordova/plugins/Diagnostic;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method
