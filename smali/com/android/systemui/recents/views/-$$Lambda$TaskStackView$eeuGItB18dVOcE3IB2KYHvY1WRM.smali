.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/views/TaskStackView;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;->f$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;->f$1:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;->f$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;->f$1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->lambda$onBusEvent$0(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
