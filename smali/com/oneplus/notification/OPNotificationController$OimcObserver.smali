.class final Lcom/oneplus/notification/OPNotificationController$OimcObserver;
.super Landroid/database/ContentObserver;
.source "OPNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OimcObserver"
.end annotation


# instance fields
.field private final OP_OIMC_FUNC_DISABLE_HEADSUP_BREATH_URI:Landroid/net/Uri;

.field private final OP_OIMC_FUNC_DISABLE_HEADSUP_CAR_URI:Landroid/net/Uri;

.field private final OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 463
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 464
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 456
    const-string p1, "op_oimc_func_disable_headsup"

    .line 457
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    .line 458
    const-string p1, "op_oimc_func_disable_headsup_breath"

    .line 459
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_BREATH_URI:Landroid/net/Uri;

    .line 460
    const-string p1, "op_oimc_func_disable_headsup_car"

    .line 461
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_CAR_URI:Landroid/net/Uri;

    .line 465
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 472
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_BREATH_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 474
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_CAR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 476
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    .line 477
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 481
    invoke-virtual {p0, p2}, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    .line 482
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 485
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OPNotificationController;->access$300(Lcom/oneplus/notification/OPNotificationController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    :cond_0
    const-string v3, "op_oimc_func_disable_headsup"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 489
    .local v3, "mode":I
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    if-ne v3, v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-static {v4, v5}, Lcom/oneplus/notification/OPNotificationController;->access$1202(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 491
    .end local v3    # "mode":I
    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_BREATH_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 492
    :cond_3
    const-string v3, "op_oimc_func_disable_headsup_breath"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 494
    .restart local v3    # "mode":I
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    if-ne v3, v1, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-static {v4, v5}, Lcom/oneplus/notification/OPNotificationController;->access$1302(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 496
    .end local v3    # "mode":I
    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->OP_OIMC_FUNC_DISABLE_HEADSUP_CAR_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 497
    :cond_6
    const-string v3, "op_oimc_func_disable_headsup_car"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 499
    .restart local v3    # "mode":I
    iget-object v4, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    if-ne v3, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-static {v4, v1}, Lcom/oneplus/notification/OPNotificationController;->access$1402(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 501
    .end local v3    # "mode":I
    :cond_8
    iget-object v1, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v1}, Lcom/oneplus/notification/OPNotificationController;->access$700(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 502
    const-string v1, "OPNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oimc update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mBlockedByGame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 503
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1200(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBlockedByBreath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1300(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBlockedByCar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OPNotificationController$OimcObserver;->this$0:Lcom/oneplus/notification/OPNotificationController;

    .line 504
    invoke-static {v3}, Lcom/oneplus/notification/OPNotificationController;->access$1400(Lcom/oneplus/notification/OPNotificationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_9
    return-void
.end method
