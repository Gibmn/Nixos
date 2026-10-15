{ pkgs, ...}:
{
	environment.systemPackages = with pkgs; 
	[
	git
	curl
	btop
	fastfetch
	hyfetch
	helix
	vscode-fhs
	vivaldi
	godot-mono
	dotnet-sdk
	niri
	kitty
	zsh
	noctalia
	xwayland
	xwayland-satellite
	spotify
	vesktop
	];
	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
	];
}
