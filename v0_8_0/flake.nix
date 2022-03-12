{
  description = ''The Nim toolchain installer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-choosenim-v0_8_0.flake = false;
  inputs.src-choosenim-v0_8_0.owner = "dom96";
  inputs.src-choosenim-v0_8_0.ref   = "refs/tags/v0.8.0";
  inputs.src-choosenim-v0_8_0.repo  = "choosenim";
  inputs.src-choosenim-v0_8_0.type  = "github";
  
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
  
  inputs."https://github.com/dom96/zippy".dir   = "nimpkgs/h/https://github.com/dom96/zippy";
  inputs."https://github.com/dom96/zippy".owner = "riinr";
  inputs."https://github.com/dom96/zippy".ref   = "flake-pinning";
  inputs."https://github.com/dom96/zippy".repo  = "flake-nimble";
  inputs."https://github.com/dom96/zippy".type  = "github";
  inputs."https://github.com/dom96/zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/dom96/zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-choosenim-v0_8_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-choosenim-v0_8_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}