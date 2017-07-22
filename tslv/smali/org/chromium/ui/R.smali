.class public final Lorg/chromium/ui/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/R$styleable;,
        Lorg/chromium/ui/R$style;,
        Lorg/chromium/ui/R$string;,
        Lorg/chromium/ui/R$layout;,
        Lorg/chromium/ui/R$id;,
        Lorg/chromium/ui/R$drawable;,
        Lorg/chromium/ui/R$dimen;,
        Lorg/chromium/ui/R$color;,
        Lorg/chromium/ui/R$attr;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 5
    .param p0, "packageId"    # I

    .prologue
    const v4, 0xffffff

    .line 254
    sget v1, Lorg/chromium/ui/R$attr;->buttonColor:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$attr;->buttonColor:I

    .line 255
    sget v1, Lorg/chromium/ui/R$attr;->buttonRaised:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$attr;->buttonRaised:I

    .line 256
    sget v1, Lorg/chromium/ui/R$attr;->leading:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$attr;->leading:I

    .line 257
    sget v1, Lorg/chromium/ui/R$color;->color_picker_background_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$color;->color_picker_background_color:I

    .line 258
    sget v1, Lorg/chromium/ui/R$color;->color_picker_border_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$color;->color_picker_border_color:I

    .line 259
    sget v1, Lorg/chromium/ui/R$color;->dropdown_dark_divider_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$color;->dropdown_dark_divider_color:I

    .line 260
    sget v1, Lorg/chromium/ui/R$color;->dropdown_divider_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$color;->dropdown_divider_color:I

    .line 261
    sget v1, Lorg/chromium/ui/R$dimen;->color_button_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->color_button_height:I

    .line 262
    sget v1, Lorg/chromium/ui/R$dimen;->color_picker_gradient_margin:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->color_picker_gradient_margin:I

    .line 263
    sget v1, Lorg/chromium/ui/R$dimen;->config_min_scaling_span:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->config_min_scaling_span:I

    .line 264
    sget v1, Lorg/chromium/ui/R$dimen;->dropdown_item_divider_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->dropdown_item_divider_height:I

    .line 265
    sget v1, Lorg/chromium/ui/R$dimen;->dropdown_item_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->dropdown_item_height:I

    .line 266
    sget v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_chip_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_chip_height:I

    .line 267
    sget v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_half_padding:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_half_padding:I

    .line 268
    sget v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_height:I

    .line 269
    sget v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_padding:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_padding:I

    .line 270
    sget v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_text_size:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$dimen;->keyboard_accessory_text_size:I

    .line 271
    sget v1, Lorg/chromium/ui/R$drawable;->autofill_chip_inset:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->autofill_chip_inset:I

    .line 272
    sget v1, Lorg/chromium/ui/R$drawable;->button_borderless_compat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->button_borderless_compat:I

    .line 273
    sget v1, Lorg/chromium/ui/R$drawable;->button_compat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->button_compat:I

    .line 274
    sget v1, Lorg/chromium/ui/R$drawable;->button_compat_shape:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->button_compat_shape:I

    .line 275
    sget v1, Lorg/chromium/ui/R$drawable;->color_button_background:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->color_button_background:I

    .line 276
    sget v1, Lorg/chromium/ui/R$drawable;->color_picker_advanced_select_handle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->color_picker_advanced_select_handle:I

    .line 277
    sget v1, Lorg/chromium/ui/R$drawable;->color_picker_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->color_picker_border:I

    .line 278
    sget v1, Lorg/chromium/ui/R$drawable;->dropdown_label_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->dropdown_label_color:I

    .line 279
    sget v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background:I

    .line 280
    sget v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background_down:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background_down:I

    .line 281
    sget v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background_up:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->dropdown_popup_background_up:I

    .line 282
    sget v1, Lorg/chromium/ui/R$drawable;->verify_checkmark:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$drawable;->verify_checkmark:I

    .line 283
    sget v1, Lorg/chromium/ui/R$id;->ampm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->ampm:I

    .line 284
    sget v1, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_label:I

    .line 285
    sget v1, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_sublabel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_sublabel:I

    .line 286
    sget v1, Lorg/chromium/ui/R$id;->color_button_swatch:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->color_button_swatch:I

    .line 287
    sget v1, Lorg/chromium/ui/R$id;->color_picker_advanced:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->color_picker_advanced:I

    .line 288
    sget v1, Lorg/chromium/ui/R$id;->color_picker_simple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->color_picker_simple:I

    .line 289
    sget v1, Lorg/chromium/ui/R$id;->date_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->date_picker:I

    .line 290
    sget v1, Lorg/chromium/ui/R$id;->date_time_suggestion:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->date_time_suggestion:I

    .line 291
    sget v1, Lorg/chromium/ui/R$id;->date_time_suggestion_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->date_time_suggestion_label:I

    .line 292
    sget v1, Lorg/chromium/ui/R$id;->date_time_suggestion_value:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->date_time_suggestion_value:I

    .line 293
    sget v1, Lorg/chromium/ui/R$id;->dropdown_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->dropdown_icon:I

    .line 294
    sget v1, Lorg/chromium/ui/R$id;->dropdown_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->dropdown_label:I

    .line 295
    sget v1, Lorg/chromium/ui/R$id;->dropdown_label_wrapper:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->dropdown_label_wrapper:I

    .line 296
    sget v1, Lorg/chromium/ui/R$id;->dropdown_popup_window:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->dropdown_popup_window:I

    .line 297
    sget v1, Lorg/chromium/ui/R$id;->dropdown_sublabel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->dropdown_sublabel:I

    .line 298
    sget v1, Lorg/chromium/ui/R$id;->gradient:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->gradient:I

    .line 299
    sget v1, Lorg/chromium/ui/R$id;->gradient_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->gradient_border:I

    .line 300
    sget v1, Lorg/chromium/ui/R$id;->hour:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->hour:I

    .line 301
    sget v1, Lorg/chromium/ui/R$id;->milli:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->milli:I

    .line 302
    sget v1, Lorg/chromium/ui/R$id;->minute:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->minute:I

    .line 303
    sget v1, Lorg/chromium/ui/R$id;->more_colors_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->more_colors_button:I

    .line 304
    sget v1, Lorg/chromium/ui/R$id;->more_colors_button_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->more_colors_button_border:I

    .line 305
    sget v1, Lorg/chromium/ui/R$id;->pickers:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->pickers:I

    .line 306
    sget v1, Lorg/chromium/ui/R$id;->position_in_year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->position_in_year:I

    .line 307
    sget v1, Lorg/chromium/ui/R$id;->second:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->second:I

    .line 308
    sget v1, Lorg/chromium/ui/R$id;->second_colon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->second_colon:I

    .line 309
    sget v1, Lorg/chromium/ui/R$id;->second_dot:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->second_dot:I

    .line 310
    sget v1, Lorg/chromium/ui/R$id;->seek_bar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->seek_bar:I

    .line 311
    sget v1, Lorg/chromium/ui/R$id;->selected_color_view:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->selected_color_view:I

    .line 312
    sget v1, Lorg/chromium/ui/R$id;->selected_color_view_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->selected_color_view_border:I

    .line 313
    sget v1, Lorg/chromium/ui/R$id;->text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->text:I

    .line 314
    sget v1, Lorg/chromium/ui/R$id;->time_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->time_picker:I

    .line 315
    sget v1, Lorg/chromium/ui/R$id;->title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->title:I

    .line 316
    sget v1, Lorg/chromium/ui/R$id;->year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$id;->year:I

    .line 317
    sget v1, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_icon:I

    .line 318
    sget v1, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_item:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_item:I

    .line 319
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_advanced_component:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->color_picker_advanced_component:I

    .line 320
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_content:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_content:I

    .line 321
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->color_picker_dialog_title:I

    .line 322
    sget v1, Lorg/chromium/ui/R$layout;->date_time_picker_dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->date_time_picker_dialog:I

    .line 323
    sget v1, Lorg/chromium/ui/R$layout;->date_time_suggestion:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->date_time_suggestion:I

    .line 324
    sget v1, Lorg/chromium/ui/R$layout;->dropdown_item:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->dropdown_item:I

    .line 325
    sget v1, Lorg/chromium/ui/R$layout;->multi_field_time_picker_dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->multi_field_time_picker_dialog:I

    .line 326
    sget v1, Lorg/chromium/ui/R$layout;->two_field_date_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$layout;->two_field_date_picker:I

    .line 327
    sget v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_month:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_month:I

    .line 328
    sget v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_week:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_week:I

    .line 329
    sget v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_date_picker_year:I

    .line 330
    sget v1, Lorg/chromium/ui/R$string;->accessibility_datetime_picker_date:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_datetime_picker_date:I

    .line 331
    sget v1, Lorg/chromium/ui/R$string;->accessibility_datetime_picker_time:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_datetime_picker_time:I

    .line 332
    sget v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_ampm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_ampm:I

    .line 333
    sget v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_hour:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_hour:I

    .line 334
    sget v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_milli:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_milli:I

    .line 335
    sget v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_minute:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_minute:I

    .line 336
    sget v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_second:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->accessibility_time_picker_second:I

    .line 337
    sget v1, Lorg/chromium/ui/R$string;->autofill_keyboard_accessory_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->autofill_keyboard_accessory_content_description:I

    .line 338
    sget v1, Lorg/chromium/ui/R$string;->autofill_popup_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->autofill_popup_content_description:I

    .line 339
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_black:I

    .line 340
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_blue:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_blue:I

    .line 341
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_cancel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_cancel:I

    .line 342
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_cyan:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_cyan:I

    .line 343
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_green:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_green:I

    .line 344
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_magenta:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_magenta:I

    .line 345
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_more:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_more:I

    .line 346
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_red:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_red:I

    .line 347
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_set:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_set:I

    .line 348
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_white:I

    .line 349
    sget v1, Lorg/chromium/ui/R$string;->color_picker_button_yellow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_button_yellow:I

    .line 350
    sget v1, Lorg/chromium/ui/R$string;->color_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_dialog_title:I

    .line 351
    sget v1, Lorg/chromium/ui/R$string;->color_picker_hue:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_hue:I

    .line 352
    sget v1, Lorg/chromium/ui/R$string;->color_picker_saturation:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_saturation:I

    .line 353
    sget v1, Lorg/chromium/ui/R$string;->color_picker_value:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->color_picker_value:I

    .line 354
    sget v1, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    .line 355
    sget v1, Lorg/chromium/ui/R$string;->date_picker_dialog_clear:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->date_picker_dialog_clear:I

    .line 356
    sget v1, Lorg/chromium/ui/R$string;->date_picker_dialog_other_button_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->date_picker_dialog_other_button_label:I

    .line 357
    sget v1, Lorg/chromium/ui/R$string;->date_picker_dialog_set:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->date_picker_dialog_set:I

    .line 358
    sget v1, Lorg/chromium/ui/R$string;->date_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->date_picker_dialog_title:I

    .line 359
    sget v1, Lorg/chromium/ui/R$string;->date_time_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->date_time_picker_dialog_title:I

    .line 360
    sget v1, Lorg/chromium/ui/R$string;->low_memory_error:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->low_memory_error:I

    .line 361
    sget v1, Lorg/chromium/ui/R$string;->month_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->month_picker_dialog_title:I

    .line 362
    sget v1, Lorg/chromium/ui/R$string;->opening_file_error:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->opening_file_error:I

    .line 363
    sget v1, Lorg/chromium/ui/R$string;->password_generation_popup_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->password_generation_popup_content_description:I

    .line 364
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_am:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_am:I

    .line 365
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_hour_minute_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_hour_minute_separator:I

    .line 366
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_minute_second_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_minute_second_separator:I

    .line 367
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_pm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_pm:I

    .line 368
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_second_subsecond_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_second_subsecond_separator:I

    .line 369
    sget v1, Lorg/chromium/ui/R$string;->time_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->time_picker_dialog_title:I

    .line 370
    sget v1, Lorg/chromium/ui/R$string;->updating_chrome:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->updating_chrome:I

    .line 371
    sget v1, Lorg/chromium/ui/R$string;->week_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$string;->week_picker_dialog_title:I

    .line 372
    sget v1, Lorg/chromium/ui/R$style;->ButtonCompat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->ButtonCompat:I

    .line 373
    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatBase:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->ButtonCompatBase:I

    .line 374
    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatBorderless:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->ButtonCompatBorderless:I

    .line 375
    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatBorderlessOverlay:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->ButtonCompatBorderlessOverlay:I

    .line 376
    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatOverlay:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->ButtonCompatOverlay:I

    .line 377
    sget v1, Lorg/chromium/ui/R$style;->DropdownPopupWindow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/ui/R$style;->DropdownPopupWindow:I

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 379
    sget-object v1, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    sget-object v2, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 382
    sget-object v1, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    sget-object v2, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_1
    return-void
.end method
