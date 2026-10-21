.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super La/b;
.source "SourceFile"


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    throw p0

    :cond_1
    :goto_0
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    throw p0

    :cond_2
    throw p0
.end method
