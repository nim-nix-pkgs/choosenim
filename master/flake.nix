{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-choosenim-master.flake = false;
  inputs.src-choosenim-master.owner = "dom96";
  inputs.src-choosenim-master.ref   = "refs/heads/master";
  inputs.src-choosenim-master.repo  = "choosenim";
  inputs.src-choosenim-master.type  = "github";
  
  inputs."nimble".dir   = "nimpkgs/n/nimble";
  inputs."nimble".owner = "riinr";
  inputs."nimble".ref   = "flake-pinning";
  inputs."nimble".repo  = "flake-nimble";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."analytics".dir   = "nimpkgs/a/analytics";
  inputs."analytics".owner = "riinr";
  inputs."analytics".ref   = "flake-pinning";
  inputs."analytics".repo  = "flake-nimble";
  inputs."analytics".type  = "github";
  inputs."analytics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."analytics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo".dir   = "nimpkgs/o/osinfo";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".ref   = "flake-pinning";
  inputs."osinfo".repo  = "flake-nimble";
  inputs."osinfo".type  = "github";
  inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-choosenim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}