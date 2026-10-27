.class public Lcom/awesomeandro/widgetsplus/nothing/NtSnake;
.super Lcom/awesomeandro/widgetsplus/nothing/NtProvider;


# static fields
.field static final A:[Ljava/lang/String;

.field static final P:Ljava/lang/String; = "com.awesomeandro.widgetsplus.nothing.SNAKE_"

.field static final Z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "up"

    const-string v1, "down"

    const-string v2, "left"

    const-string v3, "right"

    const-string v4, "mid"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->Z:[Ljava/lang/String;

    const-string v0, "UP"

    const-string v1, "DOWN"

    const-string v2, "LEFT"

    const-string v3, "RIGHT"

    const-string v4, "MID"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;-><init>()V

    return-void
.end method

.method static push(Landroid/content/Context;)V
    .locals 11

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {p0, v0, v5}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v6

    const-string v7, "nt_snake"

    invoke-static {p0, v7}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v7

    const-string v8, "nt_snake_img"

    const-string v9, "id"

    invoke-static {p0, v8, v9}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    aget v9, v6, v3

    const/4 v10, 0x1

    aget v6, v6, v10

    invoke-static {p0, v9, v6}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->render(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v7}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtDraw;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p2, p0, p1

    const/4 v0, 0x1

    aget v1, p0, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x43c80000    # 400.0f

    div-float p2, v1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, p0, p1

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v1, p1

    aget p0, p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v1, v0

    return-object v1
.end method


# virtual methods
.method build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->size(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object p0

    const-string p2, "nt_snake"

    invoke-static {p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->views(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p2

    const-string p3, "nt_snake_img"

    const-string v0, "id"

    invoke-static {p1, p3, v0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-static {p1, v1, p0}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->render(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    sget-object p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->Z:[Ljava/lang/String;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.awesomeandro.widgetsplus.nothing.SNAKE_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->A:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p3, Landroid/content/ComponentName;

    const-class v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;

    invoke-direct {p3, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nt_z_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->Z:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "id"

    invoke-static {p1, p3, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/16 v1, 0x14

    add-int/2addr v1, v0

    const/high16 v2, 0xc000000

    invoke-static {p1, v1, p0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "com.awesomeandro.widgetsplus.nothing.SNAKE_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->init(Landroid/content/Context;)V

    const-string p0, "com.awesomeandro.widgetsplus.nothing.SNAKE_"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget p2, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->click(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const-string p2, "MID"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "UP"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "DOWN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    const-string p2, "LEFT"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->input(I)V

    :goto_2
    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtSnake;->push(Landroid/content/Context;)V

    sget p0, Lcom/awesomeandro/widgetsplus/nothing/NtSnakeGame;->state:I

    if-ne p0, v0, :cond_6

    invoke-static {p1}, Lcom/awesomeandro/widgetsplus/nothing/NtLive;->start(Landroid/content/Context;)V

    return-void

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    return-void
.end method
