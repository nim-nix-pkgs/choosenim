{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-choosenim-v0_8_0.flake = false;
  inputs.src-choosenim-v0_8_0.ref   = "refs/tags/v0.8.0";
  inputs.src-choosenim-v0_8_0.owner = "dom96";
  inputs.src-choosenim-v0_8_0.repo  = "choosenim";
  inputs.src-choosenim-v0_8_0.type  = "github";
  
  inputs."nimble".owner = "nim-nix-pkgs";
  inputs."nimble".ref   = "master";
  inputs."nimble".repo  = "nimble";
  inputs."nimble".dir   = "v0_14_0";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."analytics".owner = "nim-nix-pkgs";
  inputs."analytics".ref   = "master";
  inputs."analytics".repo  = "analytics";
  inputs."analytics".dir   = "v0_3_0";
  inputs."analytics".type  = "github";
  inputs."analytics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo".owner = "nim-nix-pkgs";
  inputs."osinfo".ref   = "master";
  inputs."osinfo".repo  = "osinfo";
  inputs."osinfo".dir   = "v0_3_2";
  inputs."osinfo".type  = "github";
  inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-dom96-zippy".owner = "nim-nix-pkgs";
  inputs."github-dom96-zippy".ref   = "master";
  inputs."github-dom96-zippy".repo  = "github-dom96-zippy";
  inputs."github-dom96-zippy".dir   = "0_6_2";
  inputs."github-dom96-zippy".type  = "github";
  inputs."github-dom96-zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-dom96-zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_8_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-choosenim-v0_8_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}