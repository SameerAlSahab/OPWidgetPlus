.class public interface abstract Landroid/support/v4/media/session/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/a$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Z)V
.end method

.method public abstract d(Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract e(I)V
.end method

.method public abstract f(Z)V
.end method

.method public abstract g(I)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end method

.method public abstract j(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
.end method

.method public abstract onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onExtrasChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onQueueTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract onSessionDestroyed()V
.end method
