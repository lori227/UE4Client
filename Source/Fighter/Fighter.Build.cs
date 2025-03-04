﻿// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;

public class Fighter : ModuleRules
{
	public Fighter(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

        PublicIncludePaths.AddRange(
            new string[]
            {
                "Fighter/Public"
            }
        );
        PrivateIncludePaths.AddRange(
            new string[]
            {
                "Fighter/Private"
            }
        );

        PublicDependencyModuleNames.AddRange(
            new string[] 
            { 
                "Core", "CoreUObject", "Engine", "InputCore",
                "slua_unreal", "lua_wrapper","Sockets", "Networking",
                "libprotobuf"
            }
        );

		PrivateDependencyModuleNames.AddRange(new string[] {  });



        bEnableShadowVariableWarnings = false;
        bEnableUndefinedIdentifierWarnings = false;
        bEnableExceptions = true;
        // Uncomment if you are using Slate UI
        // PrivateDependencyModuleNames.AddRange(new string[] { "Slate", "SlateCore" });

        // Uncomment if you are using online features
        // PrivateDependencyModuleNames.Add("OnlineSubsystem");

        // To include OnlineSubsystemSteam, add it to the plugins section in your uproject file with the Enabled attribute set to true
    }
}
