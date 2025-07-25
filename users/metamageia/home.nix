{ config, pkgs, inputs, wallpaper, ... }:

{

imports = [
  ../../modules/niri/home.nix
  ../../modules/swww/default.nix
  ../../modules/waybar/default.nix
  ../../modules/fuzzel/default.nix
];

  home.username = "metamageia";
  home.homeDirectory = "/home/metamageia";
  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    obsidian
    inputs.zen-browser.packages."${system}".default
  ];

  stylix.targets.vscode.enable = true; 

  home.file = {
  };
 
  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
