{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."choosenim-master".url = "path:./master";
  inputs."choosenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_1_0".url = "path:./v0_1_0";
  inputs."choosenim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_2_0".url = "path:./v0_2_0";
  inputs."choosenim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_2_2".url = "path:./v0_2_2";
  inputs."choosenim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_3_0".url = "path:./v0_3_0";
  inputs."choosenim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_3_2".url = "path:./v0_3_2";
  inputs."choosenim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_4_0".url = "path:./v0_4_0";
  inputs."choosenim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_5_0".url = "path:./v0_5_0";
  inputs."choosenim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_5_1".url = "path:./v0_5_1";
  inputs."choosenim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_6_0".url = "path:./v0_6_0";
  inputs."choosenim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_6_1-20201016".url = "path:./v0_6_1-20201016";
  inputs."choosenim-v0_6_1-20201016".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_6_1-20201016".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_0".url = "path:./v0_7_0";
  inputs."choosenim-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_0-20201017".url = "path:./v0_7_0-20201017";
  inputs."choosenim-v0_7_0-20201017".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_0-20201017".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_2".url = "path:./v0_7_2";
  inputs."choosenim-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_4".url = "path:./v0_7_4";
  inputs."choosenim-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_5-20201029-edc69bd".url = "path:./v0_7_5-20201029-edc69bd";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20201029-edc69bd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_7_5-20210102-f338473".url = "path:./v0_7_5-20210102-f338473";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_7_5-20210102-f338473".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_8_0".url = "path:./v0_8_0";
  inputs."choosenim-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."choosenim-v0_8_2".url = "path:./v0_8_2";
  inputs."choosenim-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."choosenim-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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