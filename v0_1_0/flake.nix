{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-choosenim-v0_1_0.flake = false;
  inputs.src-choosenim-v0_1_0.owner = "dom96";
  inputs.src-choosenim-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-choosenim-v0_1_0.repo  = "choosenim";
  inputs.src-choosenim-v0_1_0.type  = "github";
  
  inputs."nimble".owner = "nim-nix-pkgs";
  inputs."nimble".ref   = "master";
  inputs."nimble".repo  = "nimble";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."untar".owner = "nim-nix-pkgs";
  inputs."untar".ref   = "master";
  inputs."untar".repo  = "untar";
  inputs."untar".type  = "github";
  inputs."untar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libcurl".owner = "nim-nix-pkgs";
  inputs."libcurl".ref   = "master";
  inputs."libcurl".repo  = "libcurl";
  inputs."libcurl".type  = "github";
  inputs."libcurl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libcurl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-choosenim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}