.class final Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;
.super Ljava/lang/Object;


# static fields
.field static final DOWN:I = 0x1

.field static final LEFT:I = 0x2

.field static final LEN:I = 0x5

.field static final N:I = 0x13

.field static final OVER:I = 0x2

.field static final PAUSED:I = 0x4

.field static final PLAYING:I = 0x1

.field static final R:Ljava/util/Random;

.field static final RIGHT:I = 0x3

.field static final SCORE:I = 0x3

.field static final START:I = 0x0

.field static final UP:I = 0x0

.field static best:I = 0x0

.field static final dirs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final food:[I

.field static inited:Z = false

.field static interval:J = 0x12cL

.field static lastAction:J

.field static newBest:Z

.field static pausedAt:J

.field static final snake:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[I>;"
        }
    .end annotation
.end field

.field static state:I

.field static stateAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->R:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized advance()Z
    .locals 11

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    sget-wide v7, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->stateAt:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x7d0

    cmp-long v3, v7, v9

    if-ltz v3, :cond_0

    sput v6, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->stateAt:J

    goto :goto_0

    :cond_0
    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    if-ne v3, v6, :cond_1

    sget-wide v6, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->stateAt:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x2710

    cmp-long v1, v1, v6

    if-ltz v1, :cond_1

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->reset()V

    sput v5, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    :goto_0
    move v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized click(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->init(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v3, 0x1

    if-nez p0, :cond_0

    sput v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    :goto_0
    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->lastAction:J

    goto :goto_2

    :cond_0
    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v4, 0x2

    if-eq p0, v4, :cond_4

    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    goto :goto_1

    :cond_1
    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v4, 0x4

    if-ne p0, v4, :cond_3

    sget-wide v4, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->pausedAt:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0xc8

    cmp-long p0, v4, v6

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->lastAction:J

    sput v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    goto :goto_2

    :cond_3
    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    if-ne p0, v3, :cond_5

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->pause()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->reset()V

    sput v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static crown(Landroid/content/Context;Landroid/graphics/Canvas;FFF)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "nt_snake_crown"

    const-string v2, "drawable"

    invoke-static {p0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "nt_ink"

    invoke-static {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const p0, 0x424aaaab

    mul-float/2addr p0, p2

    float-to-int p0, p0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static dots(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 5

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    add-float/2addr v2, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p4

    add-float/2addr v1, v3

    invoke-virtual {p0, v2, v1, v3, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static horizontal(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->inited:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->inited:Z

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "SnakeBestScore"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized input(I)V
    .locals 3

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->lastAction:J

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->horizontal(I)Z

    move-result v1

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->horizontal(I)Z

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static onSnake(II)Z
    .locals 4

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v3, v1, v3

    if-ne v3, p0, :cond_0

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    move v3, v2

    :cond_1
    return v3
.end method

.method static pause()V
    .locals 2

    sget v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->pausedAt:J

    const/4 v0, 0x4

    sput v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    return-void
.end method

.method static placeFood()V
    .locals 4

    :cond_0
    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->R:Ljava/util/Random;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->R:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->onSnake(II)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SnakeGamePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized render(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v1, p0

    const-class v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v2

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->init(Landroid/content/Context;)V

    invoke-static/range {p0 .. p2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->surface(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44010000    # 516.0f

    div-float v13, v4, v5

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    sub-float v4, v5, v4

    const/high16 v5, 0x41980000    # 19.0f

    div-float/2addr v4, v5

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v4, v7

    move/from16 v7, p1

    int-to-float v7, v7

    mul-float/2addr v5, v4

    sub-float v8, v7, v5

    div-float/2addr v8, v6

    move/from16 v9, p2

    int-to-float v14, v9

    sub-float v5, v14, v5

    div-float/2addr v5, v6

    const-string v9, "nt_ink"

    invoke-static {v1, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const-string v10, "nt_accent"

    invoke-static {v1, v10}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v1, v11, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v15

    invoke-static {v1, v11, v10}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v10

    const-string v11, "nt_ndot55.otf"

    invoke-static {v1, v11}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->font(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-static {v1, v11, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->paint(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Paint;

    move-result-object v11

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v9, v13

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v9, v9, v16

    sub-float v16, v7, v9

    sget v9, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/high16 v17, 0x41f00000    # 30.0f

    const/high16 v18, 0x428c0000    # 70.0f

    const v19, 0x424aaaab

    if-nez v9, :cond_0

    mul-float v9, v19, v13

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v6, 0x42300000    # 44.0f

    mul-float/2addr v6, v13

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v6, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v19, 0x41a00000    # 20.0f

    mul-float v19, v19, v13

    add-float v21, v9, v19

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    add-float v21, v21, v22

    sub-float v21, v7, v21

    move-object/from16 v23, v3

    const/high16 v20, 0x40000000    # 2.0f

    div-float v3, v21, v20

    move-object/from16 v24, v11

    mul-float v11, v18, v13

    invoke-static {v1, v12, v13, v3, v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->crown(Landroid/content/Context;Landroid/graphics/Canvas;FFF)V

    add-float v1, v9, v3

    add-float v1, v1, v19

    const/high16 v3, 0x42d80000    # 108.0f

    mul-float/2addr v3, v13

    invoke-virtual {v12, v6, v1, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v12, v15, v4, v8, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dots(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    const-string v6, "Tap to play"

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    sub-float v8, v14, v11

    mul-float v11, v17, v13

    const/4 v10, 0x0

    move-object v4, v12

    move-object/from16 v5, v24

    move/from16 v9, v16

    invoke-static/range {v4 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V

    goto/16 :goto_1

    :cond_0
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    invoke-static {v12, v15, v4, v8, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dots(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    add-float/2addr v1, v3

    sget-object v7, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    aget v6, v7, v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v12, v1, v4, v3, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    invoke-static {v12, v10, v4, v8, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dots(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    goto/16 :goto_1

    :cond_2
    sget v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    sget-boolean v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->newBest:Z

    if-eqz v3, :cond_3

    mul-float v3, v19, v13

    sub-float v3, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float v5, v18, v13

    invoke-static {v1, v12, v13, v3, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->crown(Landroid/content/Context;Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    :goto_0
    const-string v6, "Your score"

    div-float v1, v7, v4

    div-float v3, v14, v4

    mul-float v15, v17, v13

    const/4 v10, 0x1

    move-object v4, v12

    move-object/from16 v5, v24

    move v7, v1

    move v8, v3

    move/from16 v9, v16

    move/from16 v25, v14

    move-object/from16 v14, v24

    move v11, v15

    invoke-static/range {v4 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V

    sget-object v4, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v5, v13

    add-float/2addr v3, v5

    invoke-virtual {v12, v4, v1, v3, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v6, "Tap to restart"

    mul-float v3, v18, v13

    sub-float v8, v25, v3

    const/4 v10, 0x0

    move-object v4, v12

    move-object v5, v14

    move v7, v1

    move/from16 v9, v16

    move v11, v15

    invoke-static/range {v4 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V

    goto :goto_1

    :cond_4
    move/from16 v25, v14

    move-object/from16 v14, v24

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v13

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v6, "Game Paused"

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v7, v1

    div-float v8, v25, v1

    mul-float v1, v17, v13

    const/4 v10, 0x0

    move-object v4, v12

    move-object v5, v14

    move v7, v3

    move/from16 v9, v16

    move v11, v1

    invoke-static/range {v4 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V

    const-string v6, "Tap to resume"

    mul-float v4, v18, v13

    sub-float v8, v25, v4

    const/4 v10, 0x0

    move-object v4, v12

    move-object v5, v14

    move v7, v3

    move/from16 v9, v16

    move v11, v1

    invoke-static/range {v4 .. v11}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    return-object v23

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1
.end method

.method static reset()V
    .locals 6

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    const/4 v3, 0x2

    new-array v3, v3, [I

    rsub-int/lit8 v4, v1, 0xb

    aput v4, v3, v0

    const/4 v4, 0x1

    const/16 v5, 0x9

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x12c

    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->interval:J

    sput-boolean v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->newBest:Z

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->placeFood()V

    return-void
.end method

.method static text(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FFFZF)V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    const-string p2, ""

    const-string p7, ""

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, p5

    if-gtz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " "

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    cmpl-float p1, p1, p5

    if-lez p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    sub-float p2, p4, p2

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    add-float/2addr p2, p4

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static declared-synchronized tick(Landroid/content/Context;)V
    .locals 10

    const-class v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->lastAction:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->pause()V

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v5, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x0

    aget v7, v1, v6

    aget v1, v1, v2

    sget-object v8, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->dirs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v8, 0x13

    const/16 v9, 0x12

    if-gez v7, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    if-lt v7, v8, :cond_4

    move v7, v6

    :cond_4
    :goto_1
    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    if-lt v1, v8, :cond_6

    move v9, v6

    goto :goto_2

    :cond_6
    move v9, v1

    :goto_2
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->onSnake(II)Z

    move-result v1

    const/4 v8, 0x2

    if-nez v1, :cond_8

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    new-array v1, v8, [I

    aput v7, v1, v6

    aput v9, v1, v2

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    aget p0, p0, v6

    if-ne v7, p0, :cond_a

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->food:[I

    aget p0, p0, v2

    if-ne v9, p0, :cond_a

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_7

    sget-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->interval:J

    const-wide/16 v3, 0x64

    cmp-long p0, v1, v3

    if-lez p0, :cond_7

    sget-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->interval:J

    const-wide/16 v3, 0x5

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->interval:J

    :cond_7
    invoke-static {}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->placeFood()V

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "SnakeBestScore"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->snake:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    sget v5, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    if-le v1, v5, :cond_9

    sput v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "SnakeBestScore"

    sget v5, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->best:I

    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->newBest:Z

    :cond_9
    sput v8, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    sput-wide v3, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->stateAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
