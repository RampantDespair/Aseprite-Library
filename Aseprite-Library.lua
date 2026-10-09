---@meta

---@alias app.pixelColor pixelColor

-- Globals namespaces

---@class (exact) app https://www.aseprite.org/api/app
---@field site Site
---@field range Range
---@field cel Cel
---@field frame Frame
---@field image Image
---@field layer Layer
---@field sprite Sprite
---@field tag Tag
---@field tool Tool
---@field brush Brush
---@field editor Editor
---@field window Window
---@field pixelColor pixelColor
---@field version Version
---@field apiVersion Version
---@field fgColor Color
---@field bgColor Color
---@field isUIAvailable boolean
---@field sprites Sprite[]
---@field params table
---@field alert fun(title: string) | fun(table: { title: string, text: string | string[], buttons: string | string[] })
---@field open fun(filename: string): Sprite | nil
---@field exit fun()
---@field transaction fun(text?: string, function: fun(...: any)) | fun(function: fun(...: any))
---@field command command
---@field preferences preferences
---@field fs fs
---@field theme theme
---@field uiScale number
---@field refresh fun()
---@field undo fun()
---@field redo fun()
---@field useTool fun(table: {tool: string | Tool, color?: Color, bgColor?: Color, brush?: Brush, points?: Point[], cel?: Cel, layer?: Layer, frame?: Frame, ink?: Ink, button?: MouseButton, opacity?: integer, contiguous?: boolean, tolerance?: integer, freehandAlgorithm?: 0 | 1, selection?: SelectionMode, tilemapMode?: TilemapMode, tilesetMode?: TilesetMode})
---@field events AppEvents
---@field clipboard Clipboard
-- @deprecated
---@field activeSprite Sprite | nil
---@field activeLayer Layer
---@field activeFrame Frame
---@field activeCel Cel
---@field activeImage Image
---@field activeTag Tag
---@field activeTool Tool
---@field activeBrush Brush
app = {}

---@class (exact) Clipboard https://www.aseprite.org/api/app_clipboard
---@field text string
---@field image Image
---@field content {image?: Image | nil, selection?: Selection | nil, palette?: Palette | nil, tileset?: Tileset | nil, text: string}
---@field hasText boolean
---@field hasImage boolean
---@field clear fun()

---@class (exact) pixelColor https://www.aseprite.org/api/pixelcolor
---@field rgba fun(red: number, green: number, blue: number, alpha?: number): Color
---@field rgbaR fun(rgbaPixelValue: any): integer
---@field rgbaG fun(rgbaPixelValue: any): integer
---@field rgbaB fun(rgbaPixelValue: any): integer
---@field rgbaA fun(rgbaPixelValue: any): integer
---@field graya fun(gray: number, alpha?: number): integer
---@field grayaV fun(grayPixelValue: any): integer
---@field grayaA fun(grayPixelValue: any): integer
pixelColor = {}

---@class (exact) command https://www.aseprite.org/api/app_command
---@field About fun()
---@field AddColor fun(table: { source: string, color: Color }) https://www.aseprite.org/api/command/AddColor
---@field AdvancedMode fun()
---@field AutocropSprite fun()
---@field BackgroundFromLayer fun()
---@field BrightnessContrast fun(table: { ui: boolean, channels: FilterChannels, brigthness: number, contrast: number }) https://www.aseprite.org/api/command/BrightnessContrast
---@field Cancel fun()
---@field CanvasSize fun(table: { ui: boolean, left: number, top: number, right: number, bottom: number, bounds: Rectangle, trimOutside: boolean }) https://www.aseprite.org/api/command/CanvasSize
---@field CelOpacity fun(table: { opacity: number }) https://www.aseprite.org/api/command/CelOpacity
---@field CelProperties fun()
---@field ChangeBrush fun()
---@field ChangeColor fun()
---@field ChangePixelFormat fun(table: { format: "rgb" | "gray" | "indexed", dithering: "ordered" | "old" | "error-diffusion", dithering-matrix: "bayer8x8" | "bayer4x4" | "bayer2x2", rgbmap: "octree" | "rgb5a3" | "default", toGray: "luma" | "hsv" | "hsl" }) https://www.aseprite.org/api/command/ChangePixelFormat
---@field ClearCel fun()
---@field Clear fun()
---@field CloseAllFiles fun()
---@field CloseFile fun()
---@field ColorCurve fun(table: { ui: boolean, channels: FilterChannels, curve: Point[]}) https://www.aseprite.org/api/command/ColorCurve
---@field ColorQuantization fun()
---@field ContiguousFill fun()
---@field ConvolutionMatrix fun(table: { ui: boolean, channels: FilterChannels, tiledMode: "none" | "x" | "y" | "both", fromResource: string }) https://www.aseprite.org/api/command/ConvolutionMatrix
---@field CopyCel fun()
---@field CopyColors fun(table: { before: number }) https://www.aseprite.org/api/command/CopyColors
---@field CopyMerged fun()
---@field Copy fun()
---@field CropSprite fun()
---@field Cut fun()
---@field DeselectMask fun()
---@field Despeckle fun(table: { ui: boolean, channels: FilterChannels, width: number, height: number, tiledMode: "none" | "x" | "y" | "both" }) https://www.aseprite.org/api/command/Despeckle
---@field DeveloperConsole fun()
---@field DiscardBrush fun()
---@field DuplicateLayer fun()
---@field DuplicateSprite fun()
---@field DuplicateView fun()
---@field Exit fun()
---@field ExportSpriteSheet fun(table: { ui: boolean, askOverwrite: boolean, type: SpriteSheetType, columns: number, rows: number, width: number, height: number, bestFit: boolean, textureFilename: string, dataFilename: string, dataFormat: SpriteSheetDataFormat, filenameFormat: string, borderPadding: number, shapePadding: number, innerPadding: number, trimSprite: boolean, trim: boolean, trimByGrid: boolean, extrude: boolean, ignoreEmpty: boolean, mergeDuplicates: boolean, openGenerated: boolean, layer: string, tag: string, splitLayers: boolean, splitTags: boolean, splitGrid: boolean, listLayers: boolean, listTags: boolean, listSlices: boolean, fromTilesets: boolean }) https://www.aseprite.org/api/command/ExportSpriteSheet
---@field ExportTileset fun(table: { dataFormat: SpriteSheetDataFormat, fromTilesets: boolean }) https://www.aseprite.org/api/command/ExportTileset
---@field Eyedropper fun()
---@field Fill fun()
---@field FitScreen fun()
---@field FlattenLayers fun()
---@field Flip fun()
---@field FrameProperties fun()
---@field FrameTagProperties fun()
---@field FullscreenPreview fun()
---@field GotoFirstFrameInTag fun()
---@field GotoFirstFrame fun()
---@field GotoFrame fun()
---@field GotoLastFrameInTag fun()
---@field GotoLastFrame fun()
---@field GotoNextFrameWithSameTag fun()
---@field GotoNextFrame fun()
---@field GotoNextLayer fun()
---@field GotoNextTab fun()
---@field GotoPreviousFrameWithSameTag fun()
---@field GotoPreviousFrame fun()
---@field GotoPreviousLayer fun()
---@field GotoPreviousTab fun()
---@field GridSettings fun()
---@field Home fun()
---@field HueSaturation fun(table: { ui: boolean, channels: FilterChannels, mode: "hsl" | "hsv", hue: number, saturation: number, lightness: number, alpha: number }) https://www.aseprite.org/api/command/HueSaturation
---@field ImportSpriteSheet fun(table: { ui: boolean, type: SpriteSheetType, frameBounds: Rectangle, padding: Size, partialTiles: boolean }) https://www.aseprite.org/api/command/ImportSpriteSheet
---@field InvertColor fun(table: { ui: boolean, channels: FilterChannels }) https://www.aseprite.org/api/command/InvertColor
---@field InvertMask fun()
---@field KeyboardShortcuts fun()
---@field Launch fun()
---@field LayerFromBackground fun()
---@field LayerLock fun()
---@field LayerOpacity fun(table: { opacity: number }) https://www.aseprite.org/api/command/LayerOpacity
---@field LayerProperties fun()
---@field LayerVisibility fun()
---@field LinkCels fun()
---@field LoadMask fun()
---@field LoadPalette fun()
---@field MaskAll fun()
---@field MaskByColor fun()
---@field MaskContent fun()
---@field MergeDownLayer fun()
---@field ModifySelection fun()
---@field MoveCel fun()
---@field MoveColors fun(table: { before: number }) https://www.aseprite.org/api/command/MoveColors
---@field MoveMask fun(table: { target: "boundaries" | "content", wrap: boolean, direction: "left" | "right" | "up" | "down", units: "pixel" | "tile-width" | "tile-height" | "zoomed-pixel" | "zoomed-tile-width" | "zoomed-tile-height" | "viewport-width" | "viewport-height", quantity: number }) https://www.aseprite.org/api/command/MoveMask
---@field NewBrush fun()
---@field NewFile fun(table: { ui: boolean, width: number, height: number, colorMode: ColorMode, fromClipboard: boolean }) https://www.aseprite.org/api/command/NewFile
---@field NewFrameTag fun()
---@field NewFrame fun(table?: {content: "current" | "empty" | "cel" | "celcopies" | "cellinked"})
---@field NewLayer fun(table?: { name: string, group: boolean, reference: boolean, tilemap: boolean, gridBounds: Rectangle, ask: boolean, fromFile: boolean, fromClipboard: boolean, viaCut: boolean, viaCopy: boolean, top: boolean, before: boolean }) https://www.aseprite.org/api/command/NewLayer
---@field NewSpriteFromSelection fun()
---@field OpenBrowser fun()
---@field OpenFile fun(table?: {ui: boolean, filename : string, folder : string, repeat_checkbox : boolean, oneframe : boolean, sequence : string}) https://www.aseprite.org/api/command/OpenFile
---@field OpenGroup fun()
---@field OpenInFolder fun()
---@field OpenScriptFolder fun()
---@field OpenWithApp fun()
---@field Options fun()
---@field Outline fun(table: { ui: boolean, channels: FilterChannels, place: "inside" | "outside", matrix: "circle" | "square" | "horizontal" | "vertical", color: Color, bgColor: Color, tiledMode: "none" | "x" | "y" | "both" }) https://www.aseprite.org/api/command/Outline
---@field PaletteEditor fun()
---@field PaletteSize fun()
---@field PasteText fun()
---@field Paste fun()
---@field PixelPerfectMode fun()
---@field PlayAnimation fun()
---@field PlayPreviewAnimation fun()
---@field Redo fun()
---@field Refresh fun()
---@field RemoveFrameTag fun()
---@field RemoveFrame fun()
---@field RemoveLayer fun()
---@field RemoveSlice fun()
---@field RepeatLastExport fun()
---@field ReplaceColor fun(table: { ui: boolean, channels: FilterChannels, from: Color, to: Color, tolerance: number }) https://www.aseprite.org/api/command/ReplaceColor
---@field ReselectMask fun()
---@field ReverseFrames fun()
---@field Rotate fun()
---@field RunScript fun()
---@field SaveFile fun(table: { ui: boolean, filename: string, filenameFormat: string, tag: string, aniDir: AniDir, slice: string, fromFrame: Frame, toFrame: Frame, ignoreEmpty: boolean, bounds: Rectangle }) https://www.aseprite.org/api/command/SaveFile
---@field SaveFileAs fun(table: { ui: boolean, filename: string, filenameFormat: string, tag: string, aniDir: AniDir, slice: string, fromFrame: Frame, toFrame: Frame, ignoreEmpty: boolean, bounds: Rectangle }) https://www.aseprite.org/api/command/SaveFile
---@field SaveFileCopyAs fun(table: { ui: boolean, filename: string, filenameFormat: string, tag: string, aniDir: AniDir, slice: string, fromFrame: Frame, toFrame: Frame, ignoreEmpty: boolean, bounds: Rectangle }) https://www.aseprite.org/api/command/SaveFile
---@field SaveMask fun()
---@field SavePalette fun()
---@field ScrollCenter fun()
---@field Scroll fun()
---@field SelectTile fun()
---@field SelectionAsGrid fun()
---@field SetColorSelector fun()
---@field SetInkType fun(table: { type: Ink }) https://www.aseprite.org/api/command/SetInkType
---@field SetLoopSection fun()
---@field SetPaletteEntrySize fun()
---@field SetPalette fun()
---@field SetSameInk fun()
---@field ShowAutoGuides fun()
---@field ShowBrushPreview fun()
---@field ShowExtras fun()
---@field ShowGrid fun()
---@field ShowLayerEdges fun()
---@field ShowOnionSkin fun()
---@field ShowPixelGrid fun()
---@field ShowSelectionEdges fun()
---@field ShowSlices fun()
---@field SliceProperties fun()
---@field SnapToGrid fun()
---@field SpriteProperties fun()
---@field SpriteSize fun(table: { ui: boolean, width: number, height: number, scale: number, scaleX: number, scaleY: number, lockRatio: boolean, method: "nearest" | "bilinear" | "rotSprite" }) https://www.aseprite.org/api/command/SpriteSize
---@field Stroke fun()
---@field SwitchColors fun()
---@field SymmetryMode fun()
---@field TiledMode fun()
---@field Timeline fun()
---@field TogglePreview fun()
---@field ToggleTimelineThumbnails fun()
---@field ToggleWorkspaceLayout fun()
---@field UndoHistory fun()
---@field Undo fun()
---@field UnlinkCel fun()
---@field Zoom fun()
command = {}

---@class (exact) preferences https://www.aseprite.org/api/app_preferences
---@field tool fun(tool: Tool): any
---@field document fun(sprite: Sprite): any
preferences = {}

---@class (exact) fs https://www.aseprite.org/api/app_fs
---@field pathSeparator string
---@field filePath fun(fn: string): string
---@field fileName fun(fn: string): string
---@field fileExtension fun(fn: string): string
---@field fileTitle fun(fn: string): string
---@field filePathAndTitle fun(fn: string): string
---@field normalizePath fun(fp: string): string
---@field joinPath fun(...: string): string
---@field currentPath string
---@field appPath string
---@field tempPath string
---@field userDocsPath string
---@field userConfigPath string
---@field isFile fun(fn: string): boolean
---@field isDirectory fun(fn: string): boolean
---@field fileSize fun(fn: string): number
---@field listFiles fun(fn: string): string[]
---@field makeDirectory fun(path: string): boolean
---@field makeAllDirectories fun(path: string): boolean
---@field removeDirectory fun(path: string): boolean
fs = {}


---@class StyleMetrics https://www.aseprite.org/api/app_theme#appthemestylemetrics
---@field border {left : number, top : number, right: number, bottom : number}

---@class (exact) theme https://www.aseprite.org/api/app_theme
---@field color ThemeColors
---@field dimension ThemeDimensions
---@field styleMetrics fun(theme: theme, style_id: string): StyleMetrics
theme = {}

---@class (exact) json https://www.aseprite.org/api/json
---@field decode fun(jsonText: string): any
---@field encode fun(object: any): string
json = {}

-- Constants

---@enum (exact) Align https://www.aseprite.org/api/align
Align = {
    LEFT = 0,
    CENTER = 1,
    RIGHT = 2,
    TOP = 3,
    BOTTOM = 4,
}

---@enum (exact) AniDir https://www.aseprite.org/api/anidir
AniDir = {
    FORWARD = 0,
    REVERSE = 1,
    PING_PONG = 2,
    PING_PONG_REVERSE = 3,
}

---@enum (exact) BlendMode https://www.aseprite.org/api/blendmode
BlendMode = {
    NORMAL = 0,
    SRC = 1,
    MULTIPLY = 2,
    SCREEN = 3,
    OVERLAY = 4,
    DARKEN = 5,
    LIGHTEN = 6,
    COLOR_DODGE = 7,
    COLOR_BURN = 8,
    HARD_LIGHT = 9,
    SOFT_LIGHT = 10,
    DIFFERENCE = 11,
    EXCLUSION = 12,
    HSL_HUE = 13,
    HSL_SATURATION = 14,
    HSL_COLOR = 15,
    HSL_LUMINOSITY = 16,
    ADDITION = 17,
    SUBTRACT = 18,
    DIVIDE = 19,
}

---@enum (exact) BrushPattern https://www.aseprite.org/api/brishpattern
BrushPattern = {
    NONE = 0,
    ORIGIN = 1,
    TARGET = 2,
}

---@enum (exact) BrushType https://www.aseprite.org/api/brushtype
BrushType = {
    CIRCLE = 0,
    SQUARE = 1,
    LINE = 2,
    IMAGE = 3,
}

---@enum (exact) ColorMode https://www.aseprite.org/api/colormode
ColorMode = {
    RGB = 0,
    GRAY = 1,
    INDEXED = 2,
    TILEMAP = 3,
}

---@enum (exact) FilterChannels https://www.aseprite.org/api/filterchannels
FilterChannels = {
    RED = 0,
    GREEN = 1,
    BLUE = 2,
    ALPHA = 3,
    GRAY = 4,
    INDEX = 5,
    RGB = 6,
    RGBA = 7,
    GRAYA = 8,
}

---@enum (exact) FlipType https://www.aseprite.org/api/fliptype
FlipType = {
    HORIZONTAL = 0,
    VERTICAL = 1,
    DIAGONAL = 2,
}

---@enum (exact) Ink https://www.aseprite.org/api/ink
Ink = {
    SIMPLE = 0,
    ALPHA_COMPOSITING = 1,
    COPY_COLOR = 2,
    LOCK_ALPHA = 3,
    SHADING = 4,
}

---@enum (exact) MouseButton https://www.aseprite.org/api/mousebutton
MouseButton = {
    NONE = 0,
    LEFT = 1,
    RIGHT = 2,
    MIDDLE = 3,
    X1 = 4,
    X2 = 5,
}

---@enum (exact) MouseCursor https://www.aseprite.org/api/mousecursor
MouseCursor = {
    NONE = 0,
    ARROW = 1,
    CROSSHAIR = 2,
    POINTER = 3,
    NOT_ALLOWED = 4,
    GRAB = 5,
    GRABBING = 6,
    MOVE = 7,
    NS_RESIZE = 8,
    WE_RESIZE = 9,
    N_RESIZE = 10,
    NE_RESIZE = 11,
    E_RESIZE = 12,
    SE_RESIZE = 13,
    S_RESIZE = 14,
    SW_RESIZE = 15,
    W_RESIZE = 16,
    NW_RESIZE = 17,
}

---@enum (exact) RangeType https://www.aseprite.org/api/rangetype
RangeType = {
    EMPTY = 0,
    LAYERS = 1,
    FRAMES = 2,
    CELS = 3,
}

---@enum (exact) SelectionMode https://www.aseprite.org/api/selectionmode
SelectionMode = {
    REPLACE = 0,
    ADD = 1,
    SUBTRACT = 2,
    INTERSECT = 3,
}

---@enum (exact) SpriteSheetDataFormat https://www.aseprite.org/api/spritesheetdataformat
SpriteSheetDataFormat = {
    JSON_HASH = 0,
    JSON_ARRAY = 1,
}

---@enum (exact) SpriteSheetType https://www.aseprite.org/api/spritesheettype
SpriteSheetType = {
    HORIZONTAL = 0,
    VERTICAL = 1,
    ROWS = 2,
    COLUMNS = 3,
    PACKED = 4,
}

---@alias ThemeImage string
---| 'cursor_normal'
---| 'cursor_normal_add'
---| 'cursor_crosshair'
---| 'cursor_forbidden'
---| 'cursor_hand'
---| 'cursor_scroll'
---| 'cursor_move'
---| 'cursor_move_selection'
---| 'cursor_size_ns'
---| 'cursor_size_we'
---| 'cursor_size_n'
---| 'cursor_size_ne'
---| 'cursor_size_e'
---| 'cursor_size_se'
---| 'cursor_size_s'
---| 'cursor_size_sw'
---| 'cursor_size_w'
---| 'cursor_size_nw'
---| 'cursor_rotate_n'
---| 'cursor_rotate_ne'
---| 'cursor_rotate_e'
---| 'cursor_rotate_se'
---| 'cursor_rotate_s'
---| 'cursor_rotate_sw'
---| 'cursor_rotate_w'
---| 'cursor_rotate_nw'
---| 'cursor_eyedropper'
---| 'cursor_magnifier'
---| 'radio_normal'
---| 'radio_selected'
---| 'radio_disabled'
---| 'check_normal'
---| 'check_selected'
---| 'check_disabled'
---| 'check_focus'
---| 'radio_focus'
---| 'button_normal'
---| 'button_hot'
---| 'button_focused'
---| 'button_selected'
---| 'sunken_normal'
---| 'sunken_focused'
---| 'sunken2_normal'
---| 'sunken2_focused'
---| 'sunken_mini_normal'
---| 'sunken_mini_focused'
---| 'window'
---| 'menu'
---| 'window_button_normal'
---| 'window_button_hot'
---| 'window_button_selected'
---| 'window_close_icon'
---| 'window_play_icon'
---| 'window_stop_icon'
---| 'window_center_icon'
---| 'slider_full'
---| 'slider_empty'
---| 'slider_full_focused'
---| 'slider_empty_focused'
---| 'mini_slider_full'
---| 'mini_slider_empty'
---| 'mini_slider_full_focused'
---| 'mini_slider_empty_focused'
---| 'mini_slider_thumb'
---| 'mini_slider_thumb_focused'
---| 'separator_horz'
---| 'separator_vert'
---| 'combobox_arrow_down'
---| 'combobox_arrow_down_selected'
---| 'combobox_arrow_down_disabled'
---| 'combobox_arrow_up'
---| 'combobox_arrow_up_selected'
---| 'combobox_arrow_up_disabled'
---| 'combobox_arrow_left'
---| 'combobox_arrow_left_selected'
---| 'combobox_arrow_left_disabled'
---| 'combobox_arrow_right'
---| 'combobox_arrow_right_selected'
---| 'combobox_arrow_right_disabled'
---| 'arrow_circle_cw'
---| 'arrow_circle_cw_selected'
---| 'newfolder'
---| 'newfolder_selected'
---| 'list_view'
---| 'small_icon_view'
---| 'big_icon_view'
---| 'toolbutton_normal'
---| 'toolbutton_hot'
---| 'toolbutton_last'
---| 'toolbutton_pushed'
---| 'buttonset_item_normal'
---| 'buttonset_item_hot'
---| 'buttonset_item_hot_focused'
---| 'buttonset_item_focused'
---| 'buttonset_item_pushed'
---| 'tab_normal'
---| 'tab_active'
---| 'tab_bottom_active'
---| 'tab_bottom_normal'
---| 'tab_filler'
---| 'tab_modified_icon_normal'
---| 'tab_modified_icon_active'
---| 'tab_close_icon_normal'
---| 'tab_close_icon_active'
---| 'tab_icon_bg_clicked'
---| 'tab_icon_bg_hover'
---| 'tab_home_icon_normal'
---| 'tab_home_icon_active'
---| 'editor_normal'
---| 'editor_selected'
---| 'colorbar_0'
---| 'colorbar_1'
---| 'colorbar_2'
---| 'colorbar_3'
---| 'colorbar_selection_hot'
---| 'colorbar_selection'
---| 'scrollbar_bg'
---| 'scrollbar_thumb'
---| 'mini_scrollbar_bg'
---| 'mini_scrollbar_thumb'
---| 'mini_scrollbar_bg_hot'
---| 'mini_scrollbar_thumb_hot'
---| 'transparent_scrollbar_bg'
---| 'transparent_scrollbar_thumb'
---| 'transparent_scrollbar_bg_hot'
---| 'transparent_scrollbar_thumb_hot'
---| 'tooltip'
---| 'tooltip_arrow'
---| 'ani_first'
---| 'ani_previous'
---| 'ani_play'
---| 'ani_stop'
---| 'ani_next'
---| 'ani_last'
---| 'pal_sort'
---| 'pal_presets'
---| 'pal_options'
---| 'pal_resize'
---| 'debug_continue'
---| 'debug_pause'
---| 'debug_step_into'
---| 'debug_step_over'
---| 'debug_step_out'
---| 'debug_breakpoint'
---| 'selection_replace'
---| 'selection_add'
---| 'selection_subtract'
---| 'selection_intersect'
---| 'unpinned'
---| 'pinned'
---| 'drop_down_button_left_normal'
---| 'drop_down_button_left_hot'
---| 'drop_down_button_left_focused'
---| 'drop_down_button_left_selected'
---| 'drop_down_button_right_normal'
---| 'drop_down_button_right_hot'
---| 'drop_down_button_right_focused'
---| 'drop_down_button_right_selected'
---| 'transformation_handle'
---| 'pivot_handle'
---| 'timeline_none'
---| 'timeline_normal'
---| 'timeline_active'
---| 'timeline_hover'
---| 'timeline_active_hover'
---| 'timeline_clicked'
---| 'timeline_open_eye_normal'
---| 'timeline_open_eye_active'
---| 'timeline_closed_eye_normal'
---| 'timeline_closed_eye_active'
---| 'timeline_open_padlock_normal'
---| 'timeline_open_padlock_active'
---| 'timeline_closed_padlock_normal'
---| 'timeline_closed_padlock_active'
---| 'timeline_continuous_normal'
---| 'timeline_continuous_active'
---| 'timeline_discontinuous_normal'
---| 'timeline_discontinuous_active'
---| 'timeline_closed_group_normal'
---| 'timeline_closed_group_active'
---| 'timeline_open_group_normal'
---| 'timeline_open_group_active'
---| 'timeline_empty_frame_normal'
---| 'timeline_empty_frame_active'
---| 'timeline_keyframe_normal'
---| 'timeline_keyframe_active'
---| 'timeline_from_left_normal'
---| 'timeline_from_left_active'
---| 'timeline_from_right_normal'
---| 'timeline_from_right_active'
---| 'timeline_from_both_normal'
---| 'timeline_from_both_active'
---| 'timeline_left_link_active'
---| 'timeline_both_links_active'
---| 'timeline_right_link_active'
---| 'timeline_gear'
---| 'timeline_gear_active'
---| 'timeline_onionskin'
---| 'timeline_onionskin_active'
---| 'timeline_onionskin_range'
---| 'timeline_padding'
---| 'timeline_padding_tr'
---| 'timeline_padding_bl'
---| 'timeline_padding_br'
---| 'timeline_drop_layer_deco'
---| 'timeline_drop_frame_deco'
---| 'timeline_loop_range'
---| 'timeline_focused'
---| 'flag_normal'
---| 'flag_highlight'
---| 'drop_pixels_ok'
---| 'drop_pixels_ok_selected'
---| 'drop_pixels_cancel'
---| 'drop_pixels_cancel_selected'
---| 'warning_box'
---| 'canvas_nw'
---| 'canvas_n'
---| 'canvas_ne'
---| 'canvas_w'
---| 'canvas_c'
---| 'canvas_e'
---| 'canvas_sw'
---| 'canvas_s'
---| 'canvas_se'
---| 'canvas_empty'
---| 'ink_simple'
---| 'ink_alpha_compositing'
---| 'ink_copy_color'
---| 'ink_lock_alpha'
---| 'ink_shading'
---| 'selection_opaque'
---| 'selection_masked'
---| 'pivot_northwest'
---| 'pivot_north'
---| 'pivot_northeast'
---| 'pivot_west'
---| 'pivot_center'
---| 'pivot_east'
---| 'pivot_southwest'
---| 'pivot_south'
---| 'pivot_southeast'
---| 'icon_rgb'
---| 'icon_grayscale'
---| 'icon_indexed'
---| 'icon_black'
---| 'icon_white'
---| 'icon_transparent'
---| 'color_wheel_indicator'
---| 'no_symmetry'
---| 'horizontal_symmetry'
---| 'vertical_symmetry'
---| 'icon_arrow_down'
---| 'icon_close'
---| 'icon_search'
---| 'icon_user_data'
---| 'icon_pos'
---| 'icon_size'
---| 'icon_selsize'
---| 'icon_frame'
---| 'icon_clock'
---| 'icon_start'
---| 'icon_end'
---| 'icon_angle'
---| 'icon_key'
---| 'icon_distance'
---| 'icon_grid'
---| 'icon_save'
---| 'icon_save_small'
---| 'icon_slice'
---| 'icon_aspect_ratio'
---| 'icon_delta'
---| 'tool_rectangular_marquee'
---| 'tool_elliptical_marquee'
---| 'tool_lasso'
---| 'tool_polygonal_lasso'
---| 'tool_magic_wand'
---| 'tool_pencil'
---| 'tool_spray'
---| 'tool_eraser'
---| 'tool_eyedropper'
---| 'tool_hand'
---| 'tool_move'
---| 'tool_zoom'
---| 'tool_slice'
---| 'tool_paint_bucket'
---| 'tool_gradient'
---| 'tool_line'
---| 'tool_curve'
---| 'tool_rectangle'
---| 'tool_filled_rectangle'
---| 'tool_ellipse'
---| 'tool_filled_ellipse'
---| 'tool_contour'
---| 'tool_polygon'
---| 'tool_blur'
---| 'tool_jumble'
---| 'tool_configuration'
---| 'tool_minieditor'
---| 'simple_color_border'
---| 'simple_color_selected'
---| 'aseprite_face'
---| 'aseprite_face_mouse'
---| 'aseprite_face_pushed'
---| 'linear_gradient'
---| 'radial_gradient'
---| 'folder_icon_small'
---| 'folder_icon_big'
---| 'folder_icon_medium'
---| 'outline_circle'
---| 'outline_square'
---| 'outline_horizontal'
---| 'outline_vertical'
---| 'outline_empty_pixel'
---| 'outline_full_pixel'
---| 'dynamics'
---| 'tiles'
---| 'tiles_manual'
---| 'tiles_auto'
---| 'tiles_stack'
---| 'cursor_skew_n'
---| 'cursor_skew_s'
---| 'cursor_skew_sw'
---| 'cursor_skew_se'
---| 'cursor_skew_w'
---| 'cursor_skew_e'
---| 'cursor_skew_nw'
---| 'cursor_skew_ne'

---@enum (exact) TilemapMode
TilemapMode = {
    PIXELS = 0,
    TILES = 1,
}

---@enum (exact) TilesetMode
TilesetMode = {
    MANUAL = 0,
    AUTO = 1,
    STACK = 2,
}

---@enum (exact) WebSocketMessageType https://www.aseprite.org/api/websocketmessagetype
WebSocketMessageType = {
    TEXT = 0,
    BINARY = 1,
    OPEN = 2,
    CLOSE = 3,
    PING = 4,
    PONG = 5,
    FRAGMENT = 6,
}

---@enum (exact) FormatSupport
FormatSupport = {
    RGB = 0x0004,
    RGBA = 0x0008,
    GRAY = 0x0010,
    GRAYA = 0x0020,
    INDEXED = 0x0040,
    LAYER = 0x00080,
    FRAME = 0x00100,
    PALETTE = 0x2200, -- FILE_SUPPORT_PALETTES | FILE_SUPPORT_BIG_PALETTES
    PALETTE_ALPHA = 0x4000,
    DEFAULT = FormatSupport.RGB | FormatSupport.RGBA |
        FormatSupport.GRAY | FormatSupport.GRAYA |
        FormatSupport.INDEXED
}

-- Classes/objects

---@class AppEvents : Events
---@field on fun(events: AppEvents, eventName: 'sitechange' | 'beforesitechange' | 'fgcolorchange' | 'bgcolorchange' | 'beforecommand' | 'aftercommand' | string, function: fun(...: any)): any

---@class BeforeCommandEvent : CommandEvent
---@field stopPropagation fun(commandEvent: CommandEvent)

---@class (exact) Brush https://www.aseprite.org/api/brush
---@field type BrushType
---@field size number
---@field angle number
---@field image Image
---@field center Point
---@field pattern BrushPattern
---@field patternOrigin Point
Brush = {}

---@return Brush
---@overload fun(size: Size): Brush
---@overload fun(image: Image): Brush
---@overload fun(table: { type: BrushType, size: number, angle: number, image: Image, center: Point, pattern: BrushPattern, patternOrigin: Point }): Brush
function Brush() end

---@class (exact) Cel https://www.aseprite.org/api/cel
---@field sprite Sprite
---@field layer Layer
---@field frame Frame
---@field frameNumber number
---@field image Image
---@field bounds Rectangle
---@field position Point
---@field opacity number
---@field zIndex number
---@field color Color
---@field data string
---@field properties Properties
Cel = {}

---@class (exact) Color https://www.aseprite.org/api/color
---@field alpha number
---@field red number
---@field green number
---@field blue number
---@field hsvHue number
---@field hsvSaturation number
---@field hsvValue number
---@field hslHue number
---@field hslSaturation number
---@field hslLightness number
---@field hue number
---@field saturation number
---@field value number
---@field lightness number
---@field index number
---@field gray number
---@field rgbaPixel pixelColor
---@field grayPixel pixelColor
Color = {}

---@return Color
---@overload fun(index: integer): Color
---@overload fun(table: { r: number, g: number, b: number, a: number }): Color
---@overload fun(table: { h: number, s: number, v: number, a: Image }): Color
---@overload fun(table: { h: number, s: number, l: number, a: Image }): Color
---@overload fun(table: { red: number, green: number, blue: number, alpha: number}): Color
---@overload fun(table: { hue: number, saturation: number, value: number, alpha: number }): Color
---@overload fun(table: { hue: number, saturation: number, lightness: number, alpha: number }): Color
---@overload fun(table: { index: number }): Color
function Color() end

---@class (exact) ColorSpace https://www.aseprite.org/api/colorspace
---@field name string
ColorSpace = {}

---@return ColorSpace
---@overload fun(table: { sRGB: boolean }): ColorSpace
---@overload fun(table: { fromFile: string }): ColorSpace
function ColorSpace() end

---@class (exact) CommandEvent
---@field name string
---@field params table

---@class (exact) Dialog https://www.aseprite.org/api/dialog
---@field button fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string, selected: boolean, focus: boolean, onclick: fun() })
---@field check fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string, selected: boolean, onclick: fun() })
---@field close fun(dialog: Dialog)
---@field color fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, color: Color, onchange: fun() })
---@field combobox fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, option: string, options: string[], onchange: fun() })
---@field data any
---@field bounds Rectangle
---@field entry fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string, focus: boolean, onchange: fun() })
---@field label fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string })
---@field modify fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, visible: boolean, enabled: boolean, text: string })
---@field newrow fun(dialog: Dialog) | fun(dialog: Dialog, table: { always: boolean })
---@field number fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string, decimals: integer, onchange: fun() })
---@field radio fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, text: string, selected: boolean, onclick: fun() })
---@field separator fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, text: string })
---@field shades fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, mode: "pick" | "sort", colors: Color[], onclick: fun() })
---@field show fun(dialog: Dialog) | fun(dialog: Dialog, table: { wait: boolean, bounds: Rectangle, autoscrollbars: boolean })
---@field slider fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, min: integer, max: integer, value: integer, onchange: fun(), onrelease: fun() })
---@field tab fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, text: string, onclick: fun() })
---@field endtabs fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, selected: string, align: integer, onchange: fun() })
---@field file fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, label: string, title: string, open: boolean, save: boolean, filename: string | string[], filetypes: string[], onchange: fun() })
---@field canvas fun(dialog: Dialog) | fun(dialog: Dialog, table: { id: string, width: integer, height: integer, autoscaling: boolean, onpaint: fun(ev: GraphicsContextEvent), onkeydown: fun(ev: KeyEvent), onkeyup: fun(ev: KeyEvent), onmousemove: fun(ev: MouseEvent), onmousedown: fun(ev: MouseEvent), onmouseup: fun(ev: MouseEvent), ondblclick: fun(ev: MouseEvent), onwheel: fun(ev: MouseEvent), ontouchmagnify: fun(ev: TouchEvent) })
---@field repaint fun(dialog: Dialog)
Dialog = {}

---@return Dialog
---@overload fun(title: string): Dialog
---@overload fun(table: { title: string, notitlebar: boolean, parent: Dialog, onclose: fun() }): Dialog
function Dialog() end

---@class (exact) Editor https://www.aseprite.org/api/editor
---@field sprite Sprite
---@field spritePos Point
---@field mousePos Point
---@field zoom number
---@field scroll Point
---@field askPoint fun(editor: Editor, table: { title: string, point: Point, onclick: fun(), onchange: fun(), oncancel: fun() })
---@field cancel fun(editor: Editor)
Editor = {}

---@class (exact) Events https://www.aseprite.org/api/events
---@field on fun(events: Events, eventName: string, function: fun(...: any)): any
---@field off fun(events: Events, function: fun(...: any)) | fun(events: Events, listenerCode: any)
Events = {}

---@class (exact) Frame https://www.aseprite.org/api/frame
---@field sprite Sprite
---@field frameNumber number
---@field duration number
---@field previous Frame
---@field next Frame
Frame = {}

---@class (exact) GraphicsContext https://www.aseprite.org/api/graphicscontext
---@field width number
---@field height number
---@field antialias boolean
---@field color Color
---@field strokeWidth number
---@field blendMode BlendMode
---@field opacity number
---@field theme theme
---@field save fun(graphicsContext: GraphicsContext)
---@field restore fun(graphicsContext: GraphicsContext)
---@field clip fun(graphicsContext: GraphicsContext)
---@field strokeRect fun(graphicsContext: GraphicsContext, rectangle: Rectangle)
---@field fillRect fun(graphicsContext: GraphicsContext, rectangle: Rectangle)
---@field fillText fun(graphicsContext: GraphicsContext, text: string, x: number, y: number)
---@field measureText fun(graphicsContext: GraphicsContext, text: string)
---@field drawImage fun(graphicsContext: GraphicsContext, image: Image, x: number, y: number) | fun(graphicsContext: GraphicsContext, image: Image, srcRect: Rectangle, dstRect: Rectangle) | fun(graphicsContext: GraphicsContext, image: Image, srcX: number, srcY: number, srcW: number, srcH: number, dstX: number, dstY: number, dstW: number, dstH: number)
---@field drawThemeImage fun(graphicsContext: GraphicsContext, partId: ThemeImage, point: Point) | fun(graphicsContext: GraphicsContext, partId: any, x: number, y: number)
---@field drawThemeRect fun(graphicsContext: GraphicsContext, partId: any, rectangle: Rectangle) | fun(graphicsContext: GraphicsContext, partId: any, x: number, y: number, w: number, h:number)
---@field beginPath fun(graphicsContext: GraphicsContext)
---@field closePath fun(graphicsContext: GraphicsContext)
---@field moveTo fun(graphicsContext: GraphicsContext, x: number, y: number)
---@field lineTo fun(graphicsContext: GraphicsContext, x: number, y: number)
---@field cubicTo fun(graphicsContext: GraphicsContext, cp1x: number, cp1y: number, cp2x: number, cp2y:number, x: number, y: number)
---@field oval fun(graphicsContext: GraphicsContext, rectangle: Rectangle)
---@field rect fun(graphicsContext: GraphicsContext, rectangle: Rectangle)
---@field roundedRect fun(graphicsContext: GraphicsContext, rectangle: Rectangle, r: number) | fun(graphicsContext: GraphicsContext, rectangle: Rectangle, rx: number, ry: number)
---@field stroke fun(graphicsContext: GraphicsContext)
---@field fill fun(graphicsContext: GraphicsContext)
GraphicsContext = {}

---@class (exact) GraphicsContextEvent
---@field context GraphicsContext

---@class (exact) Image https://www.aseprite.org/api/image
---@field clone fun(image: Image): Image
---@field id number
---@field version number
---@field width number
---@field height number
---@field bounds Rectangle
---@field colorMode ColorMode
---@field spec ImageSpec
---@field cel Cel
---@field context GraphicsContext
---@field bytes string
---@field rowStride number
---@field bytesPerPixel number
---@field clear fun(image: Image, bounds: Rectangle, color: Color)
---@field drawPixel fun(image: Image, x: number, y: number, color: Color)
---@field getPixel fun(image: Image, x: number, y: number): app.pixelColor
---@field drawImage fun(image: Image, sourceImage: Image, position?: Point, opacity?: number, blendMode?: BlendMode)
---@field drawSprite fun(image: Image, sourceSprite: Sprite, frameNumber: number, position?: Point)
---@field isEqual fun(imageA: Image, imageB: Image): boolean
---@field isEmpty fun(image: Image): boolean
---@field isPlain fun(image: Image, color: Color): boolean
---@field pixels (fun(image: Image): app.pixelColor[]) | (fun(image: Image, rectangle: Rectangle): app.pixelColor[])
---@field putPixel fun(image: Image, x: number, y: number, color: Color)
---@field putImage fun(image: Image, sourceImage: Image, position?: Point, opacity?: number, blendMode?: BlendMode)
---@field putSprite fun(image: Image, sourceSprite: Sprite, frameNumber: number, position?: Point)
---@field saveAs fun(image: Image, filename: string) | fun(image: Image, table: { filename: string, palette: Palette })
---@field resize fun(image: Image, width: number, height: number) | fun(image: Image, table: { width: number, height: number, method?: "bilinear" | "rotsprite", pivot?: Point } | { size: Size, method?: "bilinear" | "rotsprite", pivot?: Point })
---@field shrinkBounds (fun(image: Image): Rectangle) | (fun(image: Image, refColor: Color): Rectangle)
---@field flip fun(image: Image, fliptype?: FlipType)
Image = {}

---@return Image
---@overload fun(width: number, height: number, colorMode?: ColorMode): Image
---@overload fun(spec: ImageSpec): Image
---@overload fun(sprite: Sprite): Image
---@overload fun(otherImage: Image): Image
---@overload fun(otherImage: Image, rectangle: Rectangle): Image | nil
---@overload fun(table: { fromFile: string }): Image
function Image() end

---@class (exact) ImageSpec https://www.aseprite.org/api/imagespec
---@field colorMode ColorMode
---@field width number
---@field height number
---@field colorSpace ColorSpace
---@field transparentColor number
ImageSpec = {}

---@return ImageSpec
---@overload fun(otherImageSpec: ImageSpec): ImageSpec
---@overload fun(table: { width: number, height: number, colorMode: ColorMode, transparentColor: number }): ImageSpec
function ImageSpec() end

---@class (exact) KeyEvent https://www.aseprite.org/api/keyevent
---@field repeatCount number
---@field key string
---@field code string
---@field altKey boolean
---@field metaKey boolean
---@field ctrlKey boolean
---@field shiftKey boolean
---@field spaceKey boolean
---@field stopPropagation fun(keyEvent: KeyEvent)
KeyEvent = {}

---@class (exact) Layer https://www.aseprite.org/api/layer
---@field sprite Sprite
---@field name string
---@field opacity number
---@field blendMode BlendMode
---@field layers Layer[] | nil
---@field parent Sprite | Layer
---@field stackIndex number
---@field isImage boolean
---@field isGroup boolean
---@field isTilemap boolean
---@field isTransparent boolean
---@field isBackground boolean
---@field isEditable boolean
---@field isVisible boolean
---@field isContinuous boolean
---@field isCollapsed boolean
---@field isExpanded boolean
---@field isReference boolean
---@field cels Cel[]
---@field color Color
---@field data string
---@field properties Properties
---@field cel (fun(layer: Layer, frame: Frame): Cel | nil) | (fun(layer: Layer, frameNumber: number): Cel | nil)
---@field tileset Tileset
Layer = {}

---@class (exact) MouseEvent https://www.aseprite.org/api/mouseevent
---@field x number
---@field y number
---@field button MouseButton
---@field pressure number
---@field deltaX number
---@field deltaY number
---@field altKey boolean
---@field metaKey boolean
---@field ctrlKey boolean
---@field shiftKey boolean
---@field spaceKey boolean
MouseEvent = {}

---@class (exact) Palette https://www.aseprite.org/api/palette
---@field resize fun(palette: Palette, ncolors: number)
---@field getColor fun(palette: Palette, index: number): Color
---@field setColor fun(palette: Palette, index: number, color: Color)
---@field frame Frame
---@field saveAs fun(palette: Palette, filename: string)
Palette = {}

---@return Palette
---@overload fun(numberOfColors: number): Palette
---@overload fun(otherPalette: Palette): Palette
---@overload fun(table: { fromFile: string }): Palette
---@overload fun(table: { fromResource: any }): Palette
function Palette() end

---@class (exact) Plugin https://www.aseprite.org/api/plugin
---@field name string
---@field path string
---@field preferences table
---@field newCommand fun(plugin: Plugin, args: newCommandTable)
---@field newMenuGroup fun(plugin: Plugin, args: newMenuGroupTable)
---@field newMenuSeparator fun(plugin: Plugin, args: newMenuSeparatorTable)
---@field newFileFormat fun(plugin: Plugin, args: newFileFormatTable)
Plugin = {}

---@class (exact) newCommandTable
---@field id string
---@field title string
---@field group string
---@field onclick fun()
---@field onenabled fun(): boolean
---@field onchecked fun(): boolean
newCommandTable = {}

---@class (exact) newMenuGroupTable
---@field id string
---@field title string
---@field group string
newMenuGroupTable = {}

---@class (exact) newMenuSeparatorTable
---@field group string
newMenuSeparatorTable = {}

---@class (exact) newFileFormatTable
---@field binary boolean
---@field supports integer
---@field extension string|string[]
---@field extensions string|string[]
---@field name string
---@field onload fun(ev: fileLoadTable): Sprite|false
---@field onsave fun(ev: fileSaveTable): boolean
newFileFormatTable = {}

---@class (exact) fileLoadTable
---@field file file*
---@field filename string
fileLoadTable = {}

---@class (exact) fileSaveTable
---@field file file*
---@field filename string
---@field sprite Sprite
---@field options saveOptionsTable
fileSaveTable = {}

---@class (exact) saveOptionsTable
---@field canvasSize Size
---@field bounds Rectangle
---@field frames integer
---@field fromFrame integer
---@field toFrame integer
---@field ignoreEmptyFrames boolean
saveOptionsTable = {}

---@class (exact) Point https://www.aseprite.org/api/point
---@field x number
---@field y number
Point = {}

---@return Point
---@overload fun(otherPoint: Point): Point
---@overload fun(x: number, y: number): Point
---@overload fun(table: { x: number, y: number }): Point
---@overload fun(array: number[]): Point
function Point() end

---@class (exact) Properties https://www.aseprite.org/api/properties
Properties = {}

---@class (exact) Range https://www.aseprite.org/api/range
---@field type RangeType
---@field isEmpty boolean
---@field sprite Sprite
---@field layers Layer[]
---@field frames Frame[]
---@field cels Cel[]
---@field images Image[]
---@field editableImages Image[]
---@field colors Color[]
---@field slices Slice[]
---@field contains fun(range: Range, object: Layer | Frame | Cel | Slice): boolean
---@field containsColor fun(range: Range, colorIndex: number): boolean
---@field clear fun(range: Range)
Range = {}

---@class (exact) Rectangle https://www.aseprite.org/api/rectangle
---@field x number
---@field y number
---@field width number
---@field height number
---@field w number
---@field h number
---@field origin Point
---@field size Size
---@field isEmpty boolean
---@field contains fun(rectangle: Rectangle, otherRectangle: Rectangle): boolean
---@field intersects fun(rectangle: Rectangle, otherRectangle: Rectangle): boolean
---@field intersect fun(rectangle: Rectangle, otherRectangle: Rectangle): Rectangle
---@field union fun(rectangle: Rectangle, otherRectangle: Rectangle): Rectangle
Rectangle = {}

---@return Rectangle
---@overload fun(otherRectangle: Rectangle): Rectangle
---@overload fun(x: number, y: number, width: number, height: number): Rectangle
---@overload fun(point: Point | Size, size: Point | Size): Rectangle
---@overload fun(table: { x: number, y: number, width: number, height: number }): Rectangle
---@overload fun(table: { x: number, y: number, w: number, h: number }): Rectangle
---@overload fun(array: number[]): Rectangle
function Rectangle() end

---@class (exact) Selection https://www.aseprite.org/api/selection
---@field bounds Rectangle
---@field origin Point
---@field isEmpty boolean
---@field deselect fun(selection: Selection)
---@field select fun(selection: Selection, rectangle: Rectangle)
---@field selectAll fun(selection: Selection)
---@field add fun(selection: Selection, other: Rectangle | Selection)
---@field subtract fun(selection: Selection, other: Rectangle | Selection)
---@field intersect fun(selection: Selection, other: Rectangle | Selection)
---@field contains fun(selection: Selection, point: Point) | fun(selection: Selection, x: number, y: number): boolean
Selection = {}

---@return Selection
---@overload fun(rectangle: Rectangle): Selection
function Selection() end

---@class (exact) Site https://www.aseprite.org/api/site
---@field sprite Sprite
---@field layer Layer
---@field cel Cel
---@field frame Frame
---@field frameNumber number
---@field image Image
Site = {}

---@class (exact) Size https://www.aseprite.org/api/size
---@field width number
---@field height number
---@field w number
---@field h number
---@field union fun(otherSize: Size): Size
Size = {}

---@return Size
---@overload fun(otherSize: Size): Size
---@overload fun(width: number, height: number): Size
---@overload fun(table: { width: number, height: number }): Size
---@overload fun(table: { w: number, h: number }): Size
---@overload fun(array: number[]): Size
function Size() end

---@class (exact) Slice https://www.aseprite.org/api/slice
---@field bounds Rectangle
---@field center Rectangle
---@field color Color
---@field data string
---@field properties Properties
---@field name string
---@field pivot Point
---@field sprite Sprite
Slice = {}

---@class (exact) Sprite https://www.aseprite.org/api/sprite
---@field width number
---@field height number
---@field bounds Rectangle
---@field gridBounds Rectangle
---@field pixelRatio Size
---@field selection Selection
---@field filename string
---@field isModified boolean
---@field colorMode ColorMode
---@field spec ImageSpec
---@field frames Frame[]
---@field palettes Palette[]
---@field layers Layer[]
---@field cels Cel[]
---@field tags Tag[]
---@field slices Slice[]
---@field backgroundLayer Layer | nil
---@field transparentColor integer
---@field color Color
---@field data string
---@field properties Properties
---@field resize fun(sprite: Sprite, width: number, height: number) | fun(sprite: Sprite, size: Size)
---@field crop fun(sprite: Sprite, x: number, y:number, width: number, height: number) | fun(sprite: Sprite, rectangle: Rectangle)
---@field saveAs fun(sprite: Sprite, fileName: string)
---@field saveCopyAs fun(sprite: Sprite, fileName: string)
---@field close fun(sprite: Sprite)
---@field loadPalette fun(sprite: Sprite, fileName: string)
---@field setPalette fun(sprite: Sprite, palette: Palette)
---@field assignColorSpace fun(sprite: Sprite, colorSpace: ColorSpace)
---@field convertColorSpace fun(sprite: Sprite, colorSpace: ColorSpace)
---@field newLayer fun(sprite: Sprite): Layer
---@field newGroup fun(sprite: Sprite): Layer
---@field deleteLayer fun(sprite: Sprite, layer: Layer) | fun(sprite: Sprite, layerName: string)
---@field newFrame (fun(sprite: Sprite, frame: Frame): Frame) | (fun(sprite: Sprite, frameNumber: number): Frame)
---@field newEmptyFrame fun(sprite: Sprite, frameNumber: number): Frame
---@field deleteFrame fun(sprite: Sprite, frame: Frame)
---@field newCel (fun(sprite: Sprite, layer: Layer, frame: Frame, image?: Image, position?: Point): Cel) | (fun(sprite: Sprite, layer: Layer, frameNumber: number, image?: Image, position?: Point): Cel)
---@field newTag fun(sprite: Sprite, fromFrameNumber: number, toFrameNumber: number): Tag
---@field deleteTag fun(sprite: Sprite, tag: Tag) | fun(sprite: Sprite, tagName: string)
---@field newSlice fun(sprite: Sprite) | fun(sprite: Sprite, rectangle: Rectangle): Slice
---@field deleteSlice fun(sprite: Sprite, slice: Slice) | fun(sprite: Sprite, sliceName: string)
---@field newTileset (fun(sprite: Sprite): Tileset) | (fun(sprite: Sprite, grid: any): Tileset) | (fun(sprite: Sprite, rectangle: Rectangle): Tileset) | (fun(sprite: Sprite, grid: any, numTiles: number): Tileset) | (fun(sprite: Sprite, rectangle: Rectangle, numTiles: number): Tileset) | (fun(sprite: Sprite, anotherTileset: Tileset): Tileset)
---@field deleteTileset fun(sprite: Sprite, tileset: Tileset) | fun(sprite: Sprite, tilesetIndex: number)
---@field newTile fun(sprite: Sprite, tileset: Tileset, tileIndex?: number): Tile
---@field deleteTile fun(sprite: Sprite, tile: Tile) | fun(sprite: Sprite, tileset: Tileset, tileIndex: number)
---@field flatten fun(sprite: Sprite)
---@field events SpriteEvents
---@field tileManagementPlugin any
---@field undoHistory undoHistory
Sprite = {}

---@return Sprite
---@overload fun(width: number, height: number): Sprite
---@overload fun(width: number, height: number, colorMode: ColorMode): Sprite
---@overload fun(spec: ImageSpec): Sprite
---@overload fun(otherSprite: Sprite): Sprite
---@overload fun(table: { fromFile: string, oneFrame?: any }): Sprite
function Sprite() end

---@class SpriteEvents : Events
---@field on fun(events: SpriteEvents, eventName: 'change' | 'filenamechange' | 'layerblendmode' | 'layername' | 'layeropacity' | 'layervisibility' | string, function: fun(...: any)): any

---@class (exact) Tag https://www.aseprite.org/api/tag
---@field sprite Sprite
---@field fromFrame Frame
---@field toFrame Frame
---@field frames number
---@field name string
---@field aniDir AniDir
---@field color Color
---@field repeats number
---@field data string
---@field properties Properties
Tag = {}

---@class (exact) ThemeColors https://www.aseprite.org/api/app_theme#appthemecolor
---@field text Color
---@field disabled Color
---@field face Color
---@field hot_face Color
---@field selected Color
---@field selected_text Color
---@field separator_label Color
---@field background Color
---@field textbox_text Color
---@field textbox_face Color
---@field textbox_code_face Color
---@field entry_suffix Color
---@field link_text Color
---@field link_hover Color
---@field button_normal_text Color
---@field button_hot_text Color
---@field button_selected_text Color
---@field check_hot_face Color
---@field check_focus_face Color
---@field radio_hot_face Color
---@field radio_focus_face Color
---@field menuitem_normal_text Color
---@field menuitem_normal_face Color
---@field menuitem_hot_text Color
---@field menuitem_hot_face Color
---@field menuitem_highlight_text Color
---@field menuitem_highlight_face Color
---@field window_face Color
---@field window_titlebar_text Color
---@field window_titlebar_face Color
---@field editor_face Color
---@field editor_sprite_border Color
---@field editor_sprite_bottom_border Color
---@field editor_view_face Color
---@field listitem_normal_text Color
---@field listitem_normal_face Color
---@field listitem_selected_text Color
---@field listitem_selected_face Color
---@field slider_empty_text Color
---@field slider_full_text Color
---@field tab_normal_text Color
---@field tab_active_text Color
---@field tab_active_face Color
---@field popup_window_border Color
---@field tooltip_text Color
---@field tooltip_face Color
---@field filelist_even_row_text Color
---@field filelist_even_row_face Color
---@field filelist_odd_row_text Color
---@field filelist_odd_row_face Color
---@field filelist_selected_row_text Color
---@field filelist_selected_row_face Color
---@field filelist_disabled_row_text Color
---@field workspace Color
---@field workspace_text Color
---@field workspace_link Color
---@field workspace_link_hover Color
---@field timeline_normal Color
---@field timeline_normal_text Color
---@field timeline_hover Color
---@field timeline_hover_text Color
---@field timeline_active Color
---@field timeline_active_text Color
---@field timeline_active_hover Color
---@field timeline_active_hover_text Color
---@field timeline_clicked Color
---@field timeline_clicked_text Color
---@field timeline_focused_text Color
---@field timeline_padding Color
---@field timeline_band_highlight Color
---@field timeline_band_bg Color
---@field status_bar_text Color
---@field status_bar_face Color
---@field flag_normal Color
---@field flag_active Color
---@field flag_clicked Color
---@field select_box_ruler Color
---@field select_box_grid Color
---@field edit_pal_face Color
---@field palette_entries_separator Color

---@class (exact) ThemeDimensions https://www.aseprite.org/api/app_theme#appthemedimension
---@field scrollbar_size number
---@field mini_scrollbar_size number
---@field tabs_width number
---@field tabs_height number
---@field tabs_bottom_height number
---@field docked_tabs_height number
---@field tabs_close_icon_width number
---@field tabs_close_icon_height number
---@field tabs_icon_width number
---@field timeline_top_border number
---@field timeline_tags_area_height number
---@field timeline_outline_width number
---@field palette_outline_width number
---@field palette_entries_separator number
---@field color_slider_height number
---@field timeline_base_size number
---@field color_bar_buttons_height number
---@field context_bar_height number
---@field brush_type_width number
---@field color_selector_bar_size number

---@class (exact) Tile https://www.aseprite.org/api/tile
---@field index number
---@field image Image
---@field color Color
---@field data string
---@field properties Properties
Tile = {}

---@class (exact) Tileset https://www.aseprite.org/api/tileset
---@field name string
---@field grid any
---@field baseIndex number
---@field color Color
---@field data string
---@field properties Properties
---@field tile fun(tileSet: Tileset, index: number): Tile
---@field getTile fun(tileSet: Tileset, index: number): Tile
Tileset = {}

---@class (exact) Timer https://www.aseprite.org/api/timer
---@field start fun(timer: Timer)
---@field stop fun(timer: Timer)
---@field interval number
---@field isRunning boolean
Timer = {}

---@return Timer
---@overload fun(table: { interval: number, ontick: fun() }): Timer
function Timer() end

---@class (exact) Tool https://www.aseprite.org/api/tool
---@field id string
Tool = {}

---@class (exact) TouchEvent https://www.aseprite.org/api/touchevent
---@field x number
---@field y number
---@field magnification number
TouchEvent = {}

---@class (exact) undoHistory https://www.aseprite.org/api/sprite#spriteundohistoryundosteps
---@field undoSteps integer
---@field redoSteps integer

---@class (exact) Version https://www.aseprite.org/api/version
---@field major number
---@field minor number
---@field patch number
---@field prereleaseLabel string
---@field prereleaseNumber number
Version = {}

---@return Version
---@param version string
function Version(version) end

---@class (exact) WebSocket https://www.aseprite.org/api/websocket
---@field url string
---@field connect fun(webSocket: WebSocket): WebSocketMessageType
---@field close fun(webSocket: WebSocket): WebSocketMessageType
---@field sendText fun(webSocket: WebSocket, str: string, ...: string)
---@field sendBinary fun(webSocket: WebSocket, bstr: string, ...: string)
---@field sendPing fun(webSocket: WebSocket, str: string): string
WebSocket = {}

---@return WebSocket
---@overload fun(table: { url: string, onreceive: fun(message: string, data: any), deflate: boolean, minreconnectwait: number, maxreconnectwait: number }): WebSocket
function WebSocket() end

---@class (exact) Window https://www.aseprite.org/api/window
---@field width number
---@field height number
---@field events Events
Window = {}

-- Scripting
---@param plugin Plugin
function init(plugin) end

---@param plugin Plugin
function exit(plugin) end

---@param uuid string | Sprite | Layer | Frame | Cel | Tag | Tile
function Uuid(uuid) end
