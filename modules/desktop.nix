{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./sddm
    ./nh
    ./niri
    ./stylix
    ./musicproduction
    ./gaming
    ./audio
    ./fonts
    ./printing
    ./rclone
  ];
  environment.systemPackages = with pkgs; [
    inputs.alejandra.defaultPackage.${system}
  ];
}
