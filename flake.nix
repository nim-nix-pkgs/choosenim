{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."choosenim-master".dir   = "master";
  inputs."choosenim-master".owner = "nim-nix-pkgs";
  inputs."choosenim-master".ref   = "master";
  inputs."choosenim-master".repo  = "choosenim";
  inputs."choosenim-master".type  = "github";
  inputs."choosenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_1_0".dir   = "v0_1_0";
  inputs."choosenim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_1_0".ref   = "master";
  inputs."choosenim-v0_1_0".repo  = "choosenim";
  inputs."choosenim-v0_1_0".type  = "github";
  inputs."choosenim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_2_0".dir   = "v0_2_0";
  inputs."choosenim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_2_0".ref   = "master";
  inputs."choosenim-v0_2_0".repo  = "choosenim";
  inputs."choosenim-v0_2_0".type  = "github";
  inputs."choosenim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_2_2".dir   = "v0_2_2";
  inputs."choosenim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_2_2".ref   = "master";
  inputs."choosenim-v0_2_2".repo  = "choosenim";
  inputs."choosenim-v0_2_2".type  = "github";
  inputs."choosenim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_3_0".dir   = "v0_3_0";
  inputs."choosenim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_3_0".ref   = "master";
  inputs."choosenim-v0_3_0".repo  = "choosenim";
  inputs."choosenim-v0_3_0".type  = "github";
  inputs."choosenim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_3_2".dir   = "v0_3_2";
  inputs."choosenim-v0_3_2".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_3_2".ref   = "master";
  inputs."choosenim-v0_3_2".repo  = "choosenim";
  inputs."choosenim-v0_3_2".type  = "github";
  inputs."choosenim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_4_0".dir   = "v0_4_0";
  inputs."choosenim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_4_0".ref   = "master";
  inputs."choosenim-v0_4_0".repo  = "choosenim";
  inputs."choosenim-v0_4_0".type  = "github";
  inputs."choosenim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_5_0".dir   = "v0_5_0";
  inputs."choosenim-v0_5_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_5_0".ref   = "master";
  inputs."choosenim-v0_5_0".repo  = "choosenim";
  inputs."choosenim-v0_5_0".type  = "github";
  inputs."choosenim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_5_1".dir   = "v0_5_1";
  inputs."choosenim-v0_5_1".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_5_1".ref   = "master";
  inputs."choosenim-v0_5_1".repo  = "choosenim";
  inputs."choosenim-v0_5_1".type  = "github";
  inputs."choosenim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_6_0".dir   = "v0_6_0";
  inputs."choosenim-v0_6_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_6_0".ref   = "master";
  inputs."choosenim-v0_6_0".repo  = "choosenim";
  inputs."choosenim-v0_6_0".type  = "github";
  inputs."choosenim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_6_1-20201016".dir   = "v0_6_1-20201016";
  inputs."choosenim-v0_6_1-20201016".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_6_1-20201016".ref   = "master";
  inputs."choosenim-v0_6_1-20201016".repo  = "choosenim";
  inputs."choosenim-v0_6_1-20201016".type  = "github";
  inputs."choosenim-v0_6_1-20201016".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_1-20201016".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_0".dir   = "v0_7_0";
  inputs."choosenim-v0_7_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_0".ref   = "master";
  inputs."choosenim-v0_7_0".repo  = "choosenim";
  inputs."choosenim-v0_7_0".type  = "github";
  inputs."choosenim-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_0-20201017".dir   = "v0_7_0-20201017";
  inputs."choosenim-v0_7_0-20201017".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_0-20201017".ref   = "master";
  inputs."choosenim-v0_7_0-20201017".repo  = "choosenim";
  inputs."choosenim-v0_7_0-20201017".type  = "github";
  inputs."choosenim-v0_7_0-20201017".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0-20201017".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_2".dir   = "v0_7_2";
  inputs."choosenim-v0_7_2".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_2".ref   = "master";
  inputs."choosenim-v0_7_2".repo  = "choosenim";
  inputs."choosenim-v0_7_2".type  = "github";
  inputs."choosenim-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_4".dir   = "v0_7_4";
  inputs."choosenim-v0_7_4".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_4".ref   = "master";
  inputs."choosenim-v0_7_4".repo  = "choosenim";
  inputs."choosenim-v0_7_4".type  = "github";
  inputs."choosenim-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_5-20201029-edc69bd".dir   = "v0_7_5-20201029-edc69bd";
  inputs."choosenim-v0_7_5-20201029-edc69bd".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_5-20201029-edc69bd".ref   = "master";
  inputs."choosenim-v0_7_5-20201029-edc69bd".repo  = "choosenim";
  inputs."choosenim-v0_7_5-20201029-edc69bd".type  = "github";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_5-20210102-f338473".dir   = "v0_7_5-20210102-f338473";
  inputs."choosenim-v0_7_5-20210102-f338473".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_7_5-20210102-f338473".ref   = "master";
  inputs."choosenim-v0_7_5-20210102-f338473".repo  = "choosenim";
  inputs."choosenim-v0_7_5-20210102-f338473".type  = "github";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_8_0".dir   = "v0_8_0";
  inputs."choosenim-v0_8_0".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_8_0".ref   = "master";
  inputs."choosenim-v0_8_0".repo  = "choosenim";
  inputs."choosenim-v0_8_0".type  = "github";
  inputs."choosenim-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_8_2".dir   = "v0_8_2";
  inputs."choosenim-v0_8_2".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_8_2".ref   = "master";
  inputs."choosenim-v0_8_2".repo  = "choosenim";
  inputs."choosenim-v0_8_2".type  = "github";
  inputs."choosenim-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_8_4".dir   = "v0_8_4";
  inputs."choosenim-v0_8_4".owner = "nim-nix-pkgs";
  inputs."choosenim-v0_8_4".ref   = "master";
  inputs."choosenim-v0_8_4".repo  = "choosenim";
  inputs."choosenim-v0_8_4".type  = "github";
  inputs."choosenim-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}