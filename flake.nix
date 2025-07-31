{
  description = "A metaflake to handle inputs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    impermanence.url = "github:nix-community/impermanence";
    age.url = "github:ryantm/agenix";
    age.inputs.nixpkgs.follows = "nixpkgs";
    sops.url = "github:Mic92/sops-nix";
    sops.inputs.nixpkgs.follows = "nixpkgs";
    nixarr.url = "github:rasmus-kirk/nixarr";
    nixarr.inputs.nixpkgs.follows = "nixpkgs";
    leanback.url = "github:Jovian-Experiments/Jovian-NixOS";
    leanback.inputs.nixpkgs.follows = "nixpkgs";
    partitioner.url = "github:nix-community/disko";
    partitioner.inputs.nixpkgs.follows = "nixpkgs";
    hardware.url = "github:NixOS/nixos-hardware";
    customiser.url = "github:danth/stylix";
    customiser.inputs.nixpkgs.follows = "nixpkgs";
    boot-themes.url = "github:vinceliuice/grub2-themes";
    boot-themes.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
    browser-extensions.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    browser-extensions.inputs.nixpkgs.follows = "nixpkgs";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    apple-fonts.inputs.nixpkgs.follows = "nixpkgs";
    apple-emoji.url = "github:typedrat/apple-emoji-linux?ref=fix-flake-on-unstable";
    apple-emoji.inputs.nixpkgs.follows = "nixpkgs";
    operator-mono.url = "github:pelasgus/operator-mono";
    operator-mono.inputs.nixpkgs.follows = "nixpkgs";
    formatter.url = "github:kamadorueda/alejandra/4.0.0";
    formatter.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, ... }: {
    # Re-export inputs so other flakes can use them
    _module.args = {
      metaflake-inputs = inputs;
    };
  };
}
