{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
}:
rustPlatform.buildRustPackage {
  pname = "ringfairy";
  version = "v0.1.3-alpha";

  src = fetchFromGitHub {
    owner = "k3rs3d";
    repo = "ringfairy";
    rev = "b33407e4a61cea9af0cb3ad18cd8bd07914e792a";
    hash = "sha256-Ft+lfPPHbPd8sLx8F6KFON1PAFBn4OU3D6LYjKa7PK0="; # Replace with actual hash;
  };

  cargoHash = "sha256-rdnTYMdymEqyLU/hG3uoQTT3SOS/SkEOSHJfxMHaPyI="; # Replace with actual hash;

  buildInputs = [ openssl ];
  nativeBuildInputs = [ pkg-config ];

  meta = {
    description = "🧚 Static webring generator in Rust";
    homepage = "https://github.com/k3rs3d/ringfairy";
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ SapphoSys ];
  };
}