-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their 
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)

-- ============================================================================
-- COLOR PALETTE - Change these to instantly update all graphs!
-- ============================================================================
-- Preset 0: Default
COLOR_PRIMARY = 0x232931    -- Main accent for rings/bars
COLOR_SECONDARY = 0x232931   -- CPU individual bars
COLOR_SUCCESS = 0x232931    -- Normal state rings
COLOR_WARNING = 0xFBBF24     -- High usage warning
COLOR_CRITICAL = 0xF87171    -- Critical state
BOX_COLOR = 0xFFFFFF
BOX_APLHA = 0.5
BORDER_COLOR = 0x232931
BORDER_THICKNESS = 2


-- Preset 1: Minimal Modern
-- COLOR_PRIMARY = 0xA7D129    -- Sky Blue - Main accent for rings/bars
-- COLOR_SECONDARY = 0xC6DE41   -- Purple - CPU individual bars
-- COLOR_SUCCESS = 0xFFD700    -- Emerald - Normal state rings
-- COLOR_WARNING = 0xFBBF24     -- Amber - High usage warning
-- COLOR_CRITICAL = 0xF87171    -- Soft Red - Critical state

-- Preset 2: Purple Harmony (Uncomment to use)
-- COLOR_PRIMARY = 0xA78BFA     -- Soft Purple
-- COLOR_SECONDARY = 0xC4B5FD   -- Light Lavender
-- COLOR_SUCCESS = 0x8B5CF6     -- Vibrant Purple
-- COLOR_WARNING = 0xFBBF24     -- Amber
-- COLOR_CRITICAL = 0xF87171    -- Soft Red

-- Preset 3: Cyberpunk Gradient (Uncomment to use)
-- COLOR_PRIMARY = 0x06B6D4     -- Cyan
-- COLOR_SECONDARY = 0xA78BFA   -- Purple
-- COLOR_SUCCESS = 0x14B8A6     -- Teal
-- COLOR_WARNING = 0xFBBF24     -- Amber
-- COLOR_CRITICAL = 0xF43F5E    -- Rose
-- ============================================================================

elements = {

-- Widget boxes (backgrounds) - MUST BE FIRST so they appear behind everything
-- Clock box
{
    kind = 'box',
    from = {x = 45, y = 90},
    width = 400,
    height = 100,
    radius = 50,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- CPU box
{
    kind = 'box',
    from = {x = 45, y = 210},
    width = 400,
    height = 140,
    radius = 15,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- GPU box
{
    kind = 'box',
    from = {x = 45, y = 370},
    width = 400,
    height = 140,
    radius = 15,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- Memory box
{
    kind = 'box',
    from = {x = 45, y = 530},
    width = 400,
    height = 70,
    radius = 15,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- Storage box
{
    kind = 'box',
    from = {x = 45, y = 620},
    width = 400,
    height = 245,
    radius = 15,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- Network/Bottom box
{
    kind = 'box',
    from = {x = 45, y = 885},
    width = 400,
    height = 132,
    radius = 15,
    color = BOX_COLOR,
    alpha = BOX_APLHA,
    border_color = BORDER_COLOR,
    border_thickness = BORDER_THICKNESS,
},

-- Graphs and visual elements below

{
    kind = 'ring_graph',
    conky_value = 'cpu',
    center = {x = 110, y = 295},
    radius = 40,

    background_color = COLOR_SUCCESS,
    background_alpha = 0.15,
    background_thickness = 2,

    bar_color = COLOR_SUCCESS,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 7,
    
    start_angle = -90,
    end_angle = 270,
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu1',
    from = {x = 180, y = 330},
    to = {x = 180, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},


{
    kind = 'bar_graph',
    conky_value = 'cpu cpu2',
    from = {x = 200, y = 330},
    to = {x = 200, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu3',
    from = {x = 220, y = 330},
    to = {x = 220, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu4',
    from = {x = 240, y = 330},
    to = {x = 240, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu5',
    from = {x = 260, y = 330},
    to = {x = 260, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu6',
    from = {x = 280, y = 330},
    to = {x = 280, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu7',
    from = {x = 300, y = 330},
    to = {x = 300, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu8',
    from = {x = 320, y = 330},
    to = {x = 320, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu9',
    from = {x = 340, y = 330},
    to = {x = 340, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu10',
    from = {x = 360, y = 330},
    to = {x = 360, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu11',
    from = {x = 380, y = 330},
    to = {x = 380, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'bar_graph',
    conky_value = 'cpu cpu12',
    from = {x = 400, y = 330},
    to = {x = 400, y = 255},
    
    background_color = COLOR_SECONDARY,
    background_alpha = 0.2,
    background_thickness = 0,
        
    bar_color = COLOR_SECONDARY,
    bar_alpha = 0.7,
    bar_thickness = 12,
        
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_alpha_on_critical = false,
    change_background_alpha_on_critical = false,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 0,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 12
},

{
    kind = 'ring_graph',
    conky_value = 'nvidia gpuutil',
    center = {x = 110, y = 455},
    radius = 40,

    background_color = COLOR_SUCCESS,
    background_alpha = 0.15,
    background_thickness = 2,

    bar_color = COLOR_SUCCESS,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 7,
    
    start_angle = -90,
    end_angle = 270,
},

{
    kind = 'bar_graph',
    conky_value = 'nvidia memperc',
    from = {x = 200, y = 485},
    to = {x = 400, y = 485},

    background_thickness = 2,
    background_color = COLOR_PRIMARY,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = COLOR_PRIMARY,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,

    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 10
},

{
    kind = 'bar_graph',
    conky_value = 'memperc',
    from = {x = 290, y = 550},
    to = {x = 420, y = 550},

    background_thickness = 2,
    background_color = COLOR_PRIMARY,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = COLOR_PRIMARY,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,

    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 10
},

{
    kind = 'bar_graph',
    conky_value = 'swapperc',
    from = {x = 290, y = 585},
    to = {x = 420, y = 585},

    background_thickness = 2,
    background_color = COLOR_PRIMARY,
    background_alpha = 0.2,

    bar_thickness = 10,
    bar_color = COLOR_PRIMARY,
    bar_alpha = 0.8,

    critical_threshold = 80,

    change_color_on_critical = true,
    change_thickness_on_critical = true,

    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,

    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 10
},

{
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /',
    center = {x = 120, y = 675},
    radius = 37,

    background_color = COLOR_SUCCESS,
    background_alpha = 0.15,
    background_thickness = 2,

    bar_color = COLOR_SUCCESS,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 7,
    
    start_angle = -240,
    end_angle = 60,
},

{
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /home',
    center = {x = 247, y = 675},
    radius = 37,

    background_color = COLOR_SUCCESS,
    background_alpha = 0.15,
    background_thickness = 2,

    bar_color = COLOR_SUCCESS,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 7,
    
    start_angle = -240,
    end_angle = 60,
},

{
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /media/D-Drive',
    center = {x = 375, y = 675},
    radius = 37,

    background_color = COLOR_SUCCESS,
    background_alpha = 0.15,
    background_thickness = 2,

    bar_color = COLOR_SUCCESS,
    bar_alpha = 0.8,
    bar_thickness = 7,
    
    critical_threshold = 80,
    
    change_color_on_critical = true,
    change_thickness_on_critical = true,
    
    background_color_critical = COLOR_WARNING,
    background_thickness_critical = 2,
    
    bar_color_critical = COLOR_CRITICAL,
    bar_thickness_critical = 7,
    
    start_angle = -240,
    end_angle = 60,
},

-- Network graphs - with conditional interface detection and dynamic scaling
-- WiFi Upload Graph (wlp4s0)
{
    kind = 'line_graph',
    interface = 'wlp4s0',
    conky_value_up = 'upspeedf wlp4s0',
    from = {x = 75, y = 948},
    width = 150,
    height = 55,
    
    background_color = COLOR_PRIMARY,
    background_alpha = 0.0,
    
    graph_color = COLOR_PRIMARY,
    graph_alpha = 0.8,
    graph_thickness = 1.5,
    
    fill_color = COLOR_PRIMARY,
    fill_alpha = 0.3,
},

-- WiFi Download Graph (wlp4s0)
{
    kind = 'line_graph',
    interface = 'wlp4s0',
    conky_value_down = 'downspeedf wlp4s0',
    from = {x = 265, y = 948},
    width = 150,
    height = 55,
    
    background_color = COLOR_SUCCESS,
    background_alpha = 0.0,
    
    graph_color = COLOR_SUCCESS,
    graph_alpha = 0.8,
    graph_thickness = 1.5,
    
    fill_color = COLOR_SUCCESS,
    fill_alpha = 0.3,
},

-- Ethernet Upload Graph (eno1)
{
    kind = 'line_graph',
    interface = 'eno1',
    conky_value_up = 'upspeedf eno1',
    from = {x = 75, y = 948},
    width = 150,
    height = 55,
    
    background_color = COLOR_PRIMARY,
    background_alpha = 0.0,
    
    graph_color = COLOR_PRIMARY,
    graph_alpha = 0.8,
    graph_thickness = 1.5,
    
    fill_color = COLOR_PRIMARY,
    fill_alpha = 0.3,
},

-- Ethernet Download Graph (eno1)
{
    kind = 'line_graph',
    interface = 'eno1',
    conky_value_down = 'downspeedf eno1',
    from = {x = 265, y = 948},
    width = 150,
    height = 55,
    
    background_color = COLOR_SUCCESS,
    background_alpha = 0.0,
    
    graph_color = COLOR_SUCCESS,
    graph_alpha = 0.8,
    graph_thickness = 1.5,
    
    fill_color = COLOR_SUCCESS,
    fill_alpha = 0.3,
},

}
