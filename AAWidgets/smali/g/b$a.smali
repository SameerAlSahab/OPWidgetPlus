.class public final enum Lg/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/b$a;

.field public static final enum b:Lg/b$a;

.field public static final enum c:Lg/b$a;

.field public static final enum d:Lg/b$a;

.field public static final enum e:Lg/b$a;

.field public static final enum f:Lg/b$a;

.field public static final enum g:Lg/b$a;

.field public static final enum h:Lg/b$a;

.field private static final synthetic i:[Lg/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lg/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/b$a;->a:Lg/b$a;

    new-instance v1, Lg/b$a;

    const-string v2, "JCC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/b$a;->b:Lg/b$a;

    new-instance v2, Lg/b$a;

    const-string v3, "SW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg/b$a;->c:Lg/b$a;

    new-instance v3, Lg/b$a;

    const-string v4, "AVG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/b$a;->d:Lg/b$a;

    new-instance v4, Lg/b$a;

    const-string v5, "MCL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg/b$a;->e:Lg/b$a;

    new-instance v5, Lg/b$a;

    const-string v6, "OPR_RETAIL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/b$a;->f:Lg/b$a;

    new-instance v6, Lg/b$a;

    const-string v7, "RED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lg/b$a;->g:Lg/b$a;

    new-instance v7, Lg/b$a;

    const-string v8, "C88"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lg/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/b$a;->h:Lg/b$a;

    filled-new-array/range {v0 .. v7}, [Lg/b$a;

    move-result-object v0

    sput-object v0, Lg/b$a;->i:[Lg/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/b$a;
    .locals 1

    const-class v0, Lg/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/b$a;

    return-object p0
.end method

.method public static values()[Lg/b$a;
    .locals 1

    sget-object v0, Lg/b$a;->i:[Lg/b$a;

    invoke-virtual {v0}, [Lg/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/b$a;

    return-object v0
.end method
