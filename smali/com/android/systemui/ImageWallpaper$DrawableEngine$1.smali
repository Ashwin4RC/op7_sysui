.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;
.super Landroid/os/AsyncTask;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 429
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .line 434
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Ljava/lang/Throwable;
    nop

    .line 439
    .local v1, "exception":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 440
    return-object v3

    .line 446
    :cond_0
    const-string v2, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    goto :goto_0

    .line 449
    :catch_1
    move-exception v2

    .line 451
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "ImageWallpaper"

    const-string v5, "Unable reset to default wallpaper!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    return-object v3

    .line 459
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 460
    :catch_2
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "ImageWallpaper"

    const-string v4, "Unable to load default wallpaper!"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 429
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 468
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$200(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$300(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$402(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->access$302(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z

    .line 476
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 429
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
