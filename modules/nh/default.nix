{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {


  environment.systemPackages = with pkgs; [
    nh
  ];

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/metamageia/my-nixos-config"; 
  };

}
