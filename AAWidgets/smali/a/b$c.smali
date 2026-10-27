.class La/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field final synthetic c:La/b;


# direct methods
.method constructor <init>(La/b;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, La/b$c;->c:La/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/b$c;->a:I

    iput-object p3, p0, La/b$c;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, La/b$c;->c:La/b;

    iget v1, p0, La/b$c;->a:I

    iget-object p0, p0, La/b$c;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, La/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
