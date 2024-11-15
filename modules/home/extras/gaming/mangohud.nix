{ lib, ... }:
with lib;
{
    programs.mangohud = {
        enable = true;
        enableSessionWide = true;
    };

    programs.mangohud.settings = {
        no_display = true;

        fps_limit = "75, 0";
	show_fps_limit = true;
        fps_limit_method = "early";
        af = 16;

        gpu_temp = true;
        gpu_core_clock = true;
        gpu_mem_temp = true;
        gpu_mem_clock = true;
        gpu_power = true;
        gpu_fan = true;

        cpu_temp = true;
        cpu_power = true;
        cpu_mhz = true;

        vram = true;
        ram = true;
        swap = true;

        fps = true;
        frametime = true;
        fps_metrics = "avg, 0.01, 0.001";
        fsr = true;
	gamemode = true;
	wine = true;

        throttling_status = true;
        throttling_status_graph = true;

        engine_version = true;
        exec_name = true;

        frame_timing = true;

        font_size = mkForce 20;
        font_size_text = mkForce 18;
        font_scale = mkForce 1;
        text_outline = false;
        background_alpha = mkForce 0.5;
    };
}
