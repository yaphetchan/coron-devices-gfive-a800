.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingHandsfree"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 483
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingHandsfree state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    .line 485
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    .line 487
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingHandsfree state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    .line 490
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutgoingHandsfree state processCommand return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-nez v0, :cond_1

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 493
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 496
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 500
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutgoingHandsfree State -> Processing Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 501
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 502
    .local v1, deferMsg:Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->what:I

    .line 503
    .local v0, command:I
    sparse-switch v0, :sswitch_data_0

    .line 585
    const/4 v2, 0x0

    .line 587
    :cond_0
    :goto_0
    return v2

    .line 505
    :sswitch_0
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-eq v0, v3, :cond_0

    .line 507
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 511
    :sswitch_1
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v3, v2, :cond_1

    .line 513
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    .line 514
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 523
    :sswitch_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 525
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 526
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 527
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 531
    :sswitch_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 534
    :sswitch_4
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v3, v2, :cond_0

    .line 536
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    .line 537
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_0

    .line 545
    :sswitch_5
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    goto :goto_0

    .line 548
    :sswitch_6
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 553
    :sswitch_7
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 554
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 555
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 560
    :sswitch_8
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 563
    :sswitch_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 564
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 565
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 566
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 570
    :sswitch_a
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 571
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 572
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 579
    :sswitch_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 582
    :sswitch_c
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 503
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x32 -> :sswitch_4
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
        0x36 -> :sswitch_8
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x64 -> :sswitch_b
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_b
    .end sparse-switch
.end method
