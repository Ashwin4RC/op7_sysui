.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIsAnyNotifLocked:Z

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 55
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 56
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 57
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 58
    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 59
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 79
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 80
    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 12

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "orderChanged":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 234
    .local v0, "i":I
    .local v2, "orderChanged":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 235
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v4, :cond_0

    .line 238
    goto/16 :goto_2

    .line 241
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 242
    .local v4, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    .line 243
    .local v5, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 245
    .local v6, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    move v7, v1

    .line 245
    .local v7, "childIndex":I
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 247
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 248
    .local v8, "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v5, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 249
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 250
    const-string v9, "NotificationViewHierarchyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\n child: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 250
    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 257
    invoke-virtual {v4, v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 258
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildAdded(Landroid/view/View;)V

    .line 246
    .end local v8    # "childView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 263
    .end local v7    # "childIndex":I
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 234
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 266
    .end local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateChildOrderChangedEvent()V

    .line 269
    :cond_6
    return-void
.end method

.method private removeNotificationChildren()V
    .locals 10

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 275
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_0

    .line 278
    goto :goto_3

    .line 281
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 282
    .local v3, "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 283
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 285
    .local v5, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-eqz v4, :cond_5

    .line 286
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 288
    .local v7, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v5, :cond_1

    .line 289
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 290
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v8

    if-nez v8, :cond_2

    .line 291
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v7    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 295
    .local v7, "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 296
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    .line 297
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    if-nez v8, :cond_4

    .line 300
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 301
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v9

    .line 300
    invoke-interface {v8, v7, v9}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 303
    .end local v7    # "remove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    goto :goto_2

    .line 274
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v5    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public isIsAnyNotifLocked()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    return v0
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/systemui/statusbar/NotificationPresenter;
    .param p2, "entryManager"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p3, "listContainer"    # Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    .line 87
    return-void
.end method

.method public shouldHideSensitive(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z
    .locals 10
    .param p1, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "userId"    # I

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 401
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    .line 403
    .local v0, "devicePublic":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 404
    .local v1, "locked":Z
    :goto_0
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 405
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->visibility:I

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 406
    .local v4, "notificationRequestsRedaction":Z
    :goto_1
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 407
    invoke-virtual {v5, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    .line 409
    .local v5, "userPublic":Z
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v6, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v3

    .line 412
    .local v6, "needsRedaction":Z
    :goto_5
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    move v7, v3

    goto :goto_6

    :cond_6
    move v7, v2

    .line 413
    .local v7, "sensitive":Z
    :goto_6
    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 415
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v9

    .line 414
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v3

    goto :goto_7

    :cond_7
    move v8, v2

    .line 417
    .local v8, "deviceSensitive":Z
    :goto_7
    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    goto :goto_9

    :cond_9
    :goto_8
    move v2, v3

    :goto_9
    return v2
.end method

.method public updateNotificationViews()V
    .locals 17

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v2, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 101
    .local v4, "N":I
    move v5, v3

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_11

    .line 102
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 103
    .local v7, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    nop

    .line 101
    move-object/from16 v16, v1

    goto/16 :goto_e

    .line 108
    :cond_0
    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 113
    .local v8, "userId":I
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 114
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v10

    .line 113
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    .line 116
    .local v9, "devicePublic":Z
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v10

    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v3

    .line 117
    .local v10, "locked":Z
    :goto_1
    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 118
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->visibility:I

    if-nez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v3

    .line 119
    .local v11, "notificationRequestsRedaction":Z
    :goto_2
    if-nez v9, :cond_4

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 120
    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    move v12, v3

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v12, 0x1

    .line 122
    .local v12, "userPublic":Z
    :goto_4
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v13, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v13, v3

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v13, 0x1

    .line 125
    .local v13, "needsRedaction":Z
    :goto_6
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    move v14, v3

    .line 126
    .local v14, "sensitive":Z
    :goto_7
    if-eqz v9, :cond_8

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 128
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 127
    invoke-virtual {v15, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    .line 130
    .local v3, "deviceSensitive":Z
    :goto_8
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_a

    if-eqz v10, :cond_9

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v6, 0x1

    :goto_a
    invoke-virtual {v15, v14, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 131
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v13, :cond_c

    if-eqz v10, :cond_b

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 132
    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLock(Z)V

    .line 134
    if-eqz v10, :cond_d

    .line 135
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    .line 138
    :cond_d
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 139
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 140
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    .line 139
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    .line 141
    .local v6, "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 143
    .local v15, "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v15, :cond_e

    .line 144
    move-object/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .local v16, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 145
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 147
    .end local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_e
    move-object/from16 v16, v1

    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :goto_d
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v6    # "summary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v15    # "orderedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    goto :goto_e

    .line 149
    .end local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_f
    move-object/from16 v16, v1

    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "deviceSensitive":Z
    .end local v7    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "userId":I
    .end local v9    # "devicePublic":Z
    .end local v10    # "locked":Z
    .end local v11    # "notificationRequestsRedaction":Z
    .end local v12    # "userPublic":Z
    .end local v13    # "needsRedaction":Z
    .end local v14    # "sensitive":Z
    goto :goto_e

    .line 101
    .end local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_10
    move-object/from16 v16, v1

    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 154
    .end local v5    # "i":I
    .end local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_11
    move-object/from16 v16, v1

    .end local v1    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v16    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v5

    if-ge v3, v5, :cond_13

    .line 156
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_12

    .line 158
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 162
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-nez v7, :cond_12

    .line 163
    move-object v7, v5

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 168
    .end local v3    # "i":I
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 169
    .local v5, "viewToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 172
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_11

    .line 174
    :cond_14
    const/4 v7, 0x1

    :goto_11
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 175
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeAllChildren()V

    .line 177
    :cond_15
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 178
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 179
    .end local v5    # "viewToRemove":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    goto :goto_10

    .line 181
    :cond_16
    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    .line 183
    move v3, v8

    .restart local v3    # "i":I
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    .line 184
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 185
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_17

    .line 186
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 187
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    .line 183
    .end local v5    # "v":Landroid/view/View;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 191
    .end local v3    # "i":I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "j":I
    nop

    .local v8, "i":I
    :goto_13
    move v5, v8

    .end local v8    # "i":I
    .local v5, "i":I
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1d

    .line 198
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 199
    .local v6, "child":Landroid/view/View;
    instance-of v7, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v7, :cond_19

    .line 201
    goto :goto_15

    .line 203
    :cond_19
    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 205
    goto :goto_15

    .line 208
    :cond_1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 209
    .local v7, "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v6, v7, :cond_1c

    .line 212
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 213
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->changeViewPosition(Landroid/view/View;I)V

    goto :goto_14

    .line 215
    :cond_1b
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    .line 218
    :cond_1c
    :goto_14
    add-int/lit8 v3, v3, 0x1

    .line 197
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "targetChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_15
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .restart local v8    # "i":I
    goto :goto_13

    .line 222
    .end local v8    # "i":I
    :cond_1d
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 224
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 228
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 229
    return-void
.end method

.method public updateRowStates()V
    .locals 17

    .line 312
    move-object/from16 v0, p0

    const-string v1, "NotificationViewHierarchyManager#updateRowStates"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 313
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v1

    .line 315
    .local v1, "N":I
    const/4 v2, 0x0

    .line 316
    .local v2, "visibleNotifications":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v3

    .line 317
    .local v3, "isLocked":Z
    const/4 v4, -0x1

    .line 318
    .local v4, "maxNotifications":I
    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 319
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v4

    .line 321
    :cond_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    .line 322
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 323
    .local v6, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_2

    .line 324
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 325
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 326
    goto :goto_1

    .line 328
    :cond_1
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v8    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 330
    .end local v7    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    .line 331
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 332
    .local v7, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 333
    .local v8, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 334
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    .line 336
    .local v9, "isChildNotification":Z
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 338
    const/4 v10, 0x0

    if-nez v3, :cond_6

    .line 340
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "op_always_expanded"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 343
    .local v11, "isAlwaysExpanded":Z
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v12, :cond_5

    if-eqz v2, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    if-nez v9, :cond_4

    .line 346
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    .line 343
    :cond_4
    move v12, v10

    goto :goto_4

    .line 346
    :cond_5
    :goto_3
    nop

    .line 343
    move v12, v5

    :goto_4
    invoke-virtual {v7, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 350
    .end local v11    # "isAlwaysExpanded":Z
    :cond_6
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowAmbient(Z)V

    .line 351
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    .line 352
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 353
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_7

    move v12, v5

    goto :goto_5

    :cond_7
    move v12, v10

    .line 354
    .local v12, "suppressedSummary":Z
    :goto_5
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v14, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    .line 356
    .local v13, "showOnKeyguard":Z
    const/16 v14, 0x8

    if-nez v12, :cond_c

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 357
    invoke-virtual {v15, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v15

    if-nez v15, :cond_c

    if-eqz v3, :cond_8

    if-nez v13, :cond_8

    goto :goto_7

    .line 361
    :cond_8
    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v15

    if-ne v15, v14, :cond_9

    move v14, v5

    goto :goto_6

    :cond_9
    move v14, v10

    .line 362
    .local v14, "wasGone":Z
    :goto_6
    if-eqz v14, :cond_a

    .line 363
    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 365
    :cond_a
    if-nez v9, :cond_d

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_d

    .line 366
    if-eqz v14, :cond_b

    .line 368
    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    xor-int/lit8 v5, v13, 0x1

    invoke-interface {v10, v15, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateAddAnimation(Landroid/view/View;Z)V

    .line 371
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .end local v14    # "wasGone":Z
    goto :goto_8

    .line 359
    :cond_c
    :goto_7
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 374
    :cond_d
    :goto_8
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 375
    nop

    .line 376
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    .line 377
    .local v5, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    .line 378
    .local v10, "size":I
    add-int/lit8 v14, v10, -0x1

    .local v14, "i":I
    :goto_9
    if-ltz v14, :cond_e

    .line 379
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    .line 383
    .end local v5    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v10    # "size":I
    .end local v14    # "i":I
    :cond_e
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 384
    .end local v7    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9    # "isChildNotification":Z
    .end local v11    # "userId":I
    .end local v12    # "suppressedSummary":Z
    .end local v13    # "showOnKeyguard":Z
    nop

    .line 330
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 386
    :cond_f
    const-string v5, "NotificationPresenter#onUpdateRowStates"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 387
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 388
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 389
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 390
    return-void
.end method
