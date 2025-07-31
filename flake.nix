{
  description = "A metaflake to handle inputs";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";
  inputs.import-tree.url = "github:vic/import-tree";
  inputs.home-manager.url = "github:nix-community/home-manager";
  inputs.home-manager.inputs.nixpkgs.follows = "nixpkgs";
  inputs.impermanence.url = "github:nix-community/impermanence";
  inputs.age.url = "github:ryantm/agenix";
  inputs.age.inputs.nixpkgs.follows = "nixpkgs";
  inputs.sops.url = "github:Mic92/sops-nix";
  inputs.sops.inputs.nixpkgs.follows = "nixpkgs";
  inputs.nixarr.url = "github:rasmus-kirk/nixarr";
  inputs.nixarr.inputs.nixpkgs.follows = "nixpkgs";
  inputs.leanback.url = "github:Jovian-Experiments/Jovian-NixOS";
  inputs.leanback.inputs.nixpkgs.follows = "nixpkgs";
  inputs.partitioner.url = "github:nix-community/disko";
  inputs.partitioner.inputs.nixpkgs.follows = "nixpkgs";
  inputs.hardware.url = "github:NixOS/nixos-hardware/master";
  inputs.customiser.url = "github:danth/stylix";
  inputs.customiser.inputs.nixpkgs.follows = "nixpkgs";
  inputs.boot-themes.url = "github:vinceliuice/grub2-themes";
  inputs.boot-themes.inputs.nixpkgs.follows = "nixpkgs";
  inputs.zen-browser.url = "github:MarceColl/zen-browser-flake";
  inputs.zen-browser.inputs.nixpkgs.follows = "nixpkgs";
  inputs.browser-extensions.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
  inputs.browser-extensions.inputs.nixpkgs.follows = "nixpkgs";
  inputs.apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
  inputs.apple-fonts.inputs.nixpkgs.follows = "nixpkgs";
  inputs.apple-emoji.url = "github:typedrat/apple-emoji-linux?ref=fix-flake-on-unstable";
  inputs.apple-emoji.inputs.nixpkgs.follows = "nixpkgs";
  inputs.operator-mono.url = "github:pelasgus/operator-mono";
  inputs.operator-mono.inputs.nixpkgs.follows = "nixpkgs";
  inputs.formatter.url = "github:kamadorueda/alejandra/4.0.0";
  inputs.formatter.inputs.nixpkgs.follows = "nixpkgs";
      
  outputs = { self, nixpkgs,formatter, flake-parts, import-tree, home-manager, impermanence, age, sops, nixarr, leanback, partitioner, apple-emoji, operator-mono, zen-browser,browser-extensions, apple-fonts, boot-themes,customiser, hardware, ... } @ inputs: 
  }
