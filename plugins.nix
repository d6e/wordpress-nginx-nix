# A list of your WordPress plugins.
{ callPackage, ... }:
let
  utils = callPackage ./utils.nix {};
  getPlugin = utils.getPlugin;

  requiredPlugins = [
    (getPlugin "opcache"      "0.3.1" "18x6fnfc7ka4ynxv4z3rf4011ivqc0qy0dsd6i4lxa113jjyqz6d")
    (getPlugin "nginx-helper" "1.9.10" "0zwhviapx3mir5qyzbbmy329vkw3km2k9gf758328rsfs8g9sd1s")
  ];
in requiredPlugins ++ [
  (getPlugin "akismet" "3.3"   "02vsjnr7bs54a744p64rx7jwlbcall6nhh1mv6w54zbwj4ygqz68")
  (getPlugin "jetpack" "4.8.2" "17bvkcb17dx969a30j0axb5kqzfxnx1sqkcdwwrski9gh7ihabqk")
]
