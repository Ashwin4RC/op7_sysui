.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsUpEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public earliestRemovaltime:J

.field public entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field public expanded:Z

.field private mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

.field public postTime:J

.field public remoteInputActive:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSticky()Z
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 507
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 506
    :goto_1
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I
    .locals 10
    .param p1, "o"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    .line 513
    .local v0, "isPinned":Z
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    .line 514
    .local v1, "otherPinned":Z
    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 515
    return v2

    .line 516
    :cond_0
    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 517
    return v3

    .line 519
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    .line 520
    .local v4, "selfFullscreen":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    .line 521
    .local v5, "otherFullscreen":Z
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    .line 522
    return v2

    .line 523
    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 524
    return v3

    .line 527
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v6, :cond_4

    .line 528
    return v2

    .line 529
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v6, :cond_5

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_5

    .line 530
    return v3

    .line 533
    :cond_5
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    move v2, v3

    goto :goto_0

    .line 534
    :cond_6
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 535
    :cond_7
    nop

    .line 533
    :goto_0
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 465
    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result p1

    return p1
.end method

.method public expanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 539
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 540
    return-void
.end method

.method public remove()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    :cond_0
    return-void
.end method

.method public removeAsSoonAsPossible()V
    .locals 6

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    .line 559
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 558
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    :cond_0
    return-void
.end method

.method public removeAutoRemovalCallbacks()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 545
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 547
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    .line 548
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "removeHeadsUpRunnable"    # Ljava/lang/Runnable;

    .line 480
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 481
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    .line 486
    return-void
.end method

.method public updateEntry(Z)V
    .locals 8
    .param p1, "updatePostTime"    # Z

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 492
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    .line 493
    if-eqz p1, :cond_0

    .line 494
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 500
    .local v2, "finishTime":J
    sub-long v4, v2, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 501
    .local v4, "removeDelay":J
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    .end local v2    # "finishTime":J
    .end local v4    # "removeDelay":J
    :cond_1
    return-void
.end method
