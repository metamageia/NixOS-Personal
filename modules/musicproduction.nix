{config, pkgs, ...}:
{

  imports = [
  ];
 # Set LV2 Directory
  environment.variables = {
    # Put environment variables here
     LV2_PATH = "/run/current-system/sw/lib/lv2";
  };



  environment.systemPackages = with pkgs; [
    # Daw
    reaper
    ardour
    lmms

    # Plugins
    distrho-ports
    bespokesynth
    rkrlv2
    mda_lv2
    x42-plugins
    carla
    soundfont-generaluser
    infamousPlugins
    talentedhack
    # gxplugins-lv2 #Guitar Plugins
     lsp-plugins
    
  ];

}
