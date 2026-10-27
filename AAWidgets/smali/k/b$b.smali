.class public final enum Lk/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk/b$b;

.field public static final enum b:Lk/b$b;

.field private static final synthetic c:[Lk/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lk/b$b;

    const-string v1, "CACHE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/b$b;->a:Lk/b$b;

    new-instance v1, Lk/b$b;

    const-string v2, "CACHE_AND_DB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lk/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk/b$b;->b:Lk/b$b;

    filled-new-array {v0, v1}, [Lk/b$b;

    move-result-object v0

    sput-object v0, Lk/b$b;->c:[Lk/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/b$b;
    .locals 1

    const-class v0, Lk/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/b$b;

    return-object p0
.end method

.method public static values()[Lk/b$b;
    .locals 1

    sget-object v0, Lk/b$b;->c:[Lk/b$b;

    invoke-virtual {v0}, [Lk/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b$b;

    return-object v0
.end method
