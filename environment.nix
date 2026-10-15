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
	vscode
	firefox
	godot-mono
	dotnet-sdk
	niri
	alacrity
	];
}
