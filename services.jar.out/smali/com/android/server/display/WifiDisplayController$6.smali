.class Lcom/android/server/display/WifiDisplayController$6;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestPeers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .parameter "peers"

    .prologue
    .line 601
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    const-string v2, "WifiDisplayController"

    const-string v3, "Received list of peers."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 606
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 607
    .local v0, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #calls: Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1400(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_3
    #calls: Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1600(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    .end local v0           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)V

    .line 623
    return-void
.end method
