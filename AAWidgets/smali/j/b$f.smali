.class abstract Lj/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lj/b;


# direct methods
.method private constructor <init>(Lj/b;)V
    .locals 0

    iput-object p1, p0, Lj/b$f;->a:Lj/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj/b;Lj/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lj/b$f;-><init>(Lj/b;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
