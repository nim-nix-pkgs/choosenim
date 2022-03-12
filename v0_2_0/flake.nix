{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-choosenim-v0_2_0.flake = false;
  inputs.src-choosenim-v0_2_0.owner = "dom96";
  inputs.src-choosenim-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-choosenim-v0_2_0.repo  = "choosenim";
  inputs.src-choosenim-v0_2_0.type  = "github";
  
  inputs."nimble".dir   = "nimpkgs/n/nimble";
  inputs."nimble".owner = "riinr";
  inputs."nimble".ref   = "flake-pinning";
  inputs."nimble".repo  = "flake-nimble";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."untar".dir   = "nimpkgs/u/untar";
  inputs."untar".owner = "riinr";
  inputs."untar".ref   = "flake-pinning";
  inputs."untar".repo  = "flake-nimble";
  inputs."untar".type  = "github";
  inputs."untar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libcurl".dir   = "nimpkgs/l/libcurl";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".ref   = "flake-pinning";
  inputs."libcurl".repo  = "flake-nimble";
  inputs."libcurl".type  = "github";
  inputs."libcurl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libcurl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-choosenim-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}