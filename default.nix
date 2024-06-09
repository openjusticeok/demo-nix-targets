# This file was generated by the {rix} R package v0.7.1 on 2024-06-09
# with following call:
# >rix(r_ver = "cd18e2ae9ab8e2a0a8d715b60c91b54c0ac35ff9",
#  > r_pkgs = c("targets",
#  > "dplyr",
#  > "ggplot2",
#  > "readr",
#  > "here"),
#  > system_pkgs = NULL,
#  > git_pkgs = NULL,
#  > project_path = ".",
#  > overwrite = TRUE,
#  > print = TRUE)
# It uses nixpkgs' revision cd18e2ae9ab8e2a0a8d715b60c91b54c0ac35ff9 for reproducibility purposes
# which will install R version latest.
# Report any issues to https://github.com/b-rodrigues/rix
let
 pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/cd18e2ae9ab8e2a0a8d715b60c91b54c0ac35ff9.tar.gz") {};
 
 rpkgs = builtins.attrValues {
  inherit (pkgs.rPackages) 
      targets
      dplyr
      ggplot2
      readr
      here;
 };
   
 system_packages = builtins.attrValues {
  inherit (pkgs) R glibcLocales nix;
 };
  
in

 pkgs.mkShell {
   LOCALE_ARCHIVE = if pkgs.system == "x86_64-linux" then  "${pkgs.glibcLocales}/lib/locale/locale-archive" else "";
   LANG = "en_US.UTF-8";
   LC_ALL = "en_US.UTF-8";
   LC_TIME = "en_US.UTF-8";
   LC_MONETARY = "en_US.UTF-8";
   LC_PAPER = "en_US.UTF-8";
   LC_MEASUREMENT = "en_US.UTF-8";

   buildInputs = [  rpkgs  system_packages  ];
   
 }
