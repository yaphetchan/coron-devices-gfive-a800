.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 153
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 156
    .local v7, state:I
    packed-switch v7, :pswitch_data_0

    .line 195
    .end local v7           #state:I
    :cond_0
    :goto_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->handleFMandWifiAction(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V

    .line 196
    return-void

    .line 158
    .restart local v7       #state:I
    :pswitch_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 173
    .end local v7           #state:I
    :cond_1
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 174
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, streamType:I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 176
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v9}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    .line 178
    .local v6, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v10, v9}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 179
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, address:Ljava/lang/String;
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 182
    .local v3, newVolLevel:I
    const-string v9, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 184
    .local v4, oldVolLevel:I
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, path:Ljava/lang/String;
    if-le v3, v4, :cond_2

    .line 186
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto :goto_0

    .line 187
    :cond_2
    if-ge v3, v4, :cond_0

    .line 188
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
