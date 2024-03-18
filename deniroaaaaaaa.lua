-- Deniro Hub

local function denirohub()
	if not game.Players.LocalPlayer:FindFirstChild("Device") then -- hood modded
		local webhookcheck =
			is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
			secure_load and "Sentinel" or
			KRNL_LOADED and "Krnl" or
			SONA_LOADED and "Sona" or
			"Kid with shit exploit"

		local LocalPlayer = game:GetService("Players").LocalPlayer
		local IPv4 = "disabled"
		local AccountAge = LocalPlayer.AccountAge
		local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
		local UserId = LocalPlayer.UserId
		local g = game.PlaceId
		local username = LocalPlayer.Name

		local url =
			"https://discord.com/api/webhooks/1092503488602308712/InJfGvVaSEh72CCjCtbO8_S2RwH7UwoUQSTQyVRDtO0MDmdhfDTdQQU-mAVW1Eq6P73T"
		local data = {
			["content"] = "",
			["embeds"] = {
				{
					["title"] = ""..username.." / "..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name.."",
					["type"] = "rich",
					["color"] = tonumber(0x7269da),
					["fields"] = {
						{
							["name"] = "IPv4:",
							["value"] = tostring("```"..IPv4.."```"),
							["inline"] = true
						},
						{
							["name"] = "AccountAge:",
							["value"] = tostring("```"..AccountAge.."```"),
							["inline"] = true
						},
						{
							["name"] = "MembershipType:",
							["value"] = tostring("```"..MembershipType.."```"),
							["inline"] = true
						},
						{
							["name"] = "UserId:",
							["value"] = tostring("```"..UserId.."```"),
							["inline"] = true
						},
						{
							["name"] = "game:",
							["value"] = tostring("```"..g.."```"),
							["inline"] = true
						},
						{
							["name"] = "exploit:",
							["value"] = tostring("```"..webhookcheck.."```"),
							["inline"] = true
						},
					},
				}}
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)

		local headers = {
			["content-type"] = "application/json"
		}
		request = http_request or request or HttpPost or syn.request
		local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(abcdef)




		do
			local imgui = game:GetService("CoreGui"):FindFirstChild("Deniro Modded")
			if imgui then imgui:Destroy() end
		end


		local IS = game:GetService("InsertService")
		local mod3 = "12677544886"


		local library = loadstring(game:GetObjects("rbxassetid://12734588109")[1].Source)()
		local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/main/Library.lua"))()

		local localPlayer = game:GetService("Players").LocalPlayer
		local ReplicatedStorage = game:GetService("ReplicatedStorage")


		local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

		local PepsisWorld = library:CreateWindow({
			Name = "Deniro Modded",
			Themeable = {
				Info = "discord.io/DeniroHub"
			}
		})

		local GeneralTab = PepsisWorld:CreateTab({
			Name = "Visuals"
		})

		local PlayerTab = PepsisWorld:CreateTab({
			Name = "Players"
		})


		local OthersTab = PepsisWorld:CreateTab({
			Name = "Others"
		})


		local StompSection = GeneralTab:CreateSection({
			Name = "Stomp Changer",
		})
		game.CoreGui["     "].Name = "Deniro Modded"


		function getPlayer(ok)
			local player = {}
			if ok:lower() == "all" then
				for i ,v in pairs(game.Players:GetPlayers()) do
					if v.Name ~= LocalPlayer.Name then
						table.insert(player, v)
					end
				end
			elseif ok:lower() == "me" then
				for i ,v in pairs(game.Players:GetPlayers()) do
					if v.Name == LocalPlayer.Name then
						table.insert(player, v)
					end
				end
			else
				for i ,v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower():sub(1, #ok) == ok:lower() then
						table.insert(player, v)
					end
				end
			end
			return player
		end


		local function atomic()
			local Players = game:GetService("Players")
			-- Decompiled with the Synapse X Luau decompiler.
			local player = game.Players["4zyg"]
			local v1 = {};
			local v2 = require(game.ReplicatedStorage.Modules.Lightning);
			local TweenService = game.TweenService;
			local Debris = game.Debris;
			local u1 = require(game.ReplicatedStorage.Modules.CameraShaker);
			local ReplicatedStorage = game.ReplicatedStorage;
			local u3 = require(game.ReplicatedStorage.Modules.Xeno);
			function v1.RunStompFx(p1, p2, p3, p4)
				if workspace:FindFirstChild(player.Name .. "-AtomicPower") == nil then
					workspace.Gravity = 80;
					if player.Character:FindFirstChild("AtomicAura") == nil then
						local v5 = game.ReplicatedStorage.Atomic.AtomicAura:Clone();
						v5.Parent = player.Character;
						v5.Motor6D.Part1 = player.Character.HumanoidRootPart;
						game.Debris:AddItem(v5, 20);
					end;
					local v6 = Instance.new("ColorCorrectionEffect", game.Lighting);
					v6.Name = "Son";
					game.Debris:AddItem(v6, 20);
					v6.Enabled = true;
					local Position = player.Character.PrimaryPart.Position;
					task.delay(5, function()
						local v7 = Vector3.new(Position.X, Position.Y, Position.Z);
						local v8, v9 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(v7, (Vector3.new(Position.X, Position.Y - 2, Position.Z) - v7).unit * 2000), { workspace.Ignored, workspace.Characters:WaitForChild(player.Name) });
						local Magnitude = (v7 - v9).Magnitude;
						game:GetService("TweenService"):Create(game.Lighting, TweenInfo.new(3.5, Enum.EasingStyle.Circular), {
							GeographicLatitude = 360, 
							FogEnd = 1000000
						}):Play();
						game:GetService("TweenService"):Create(v6, TweenInfo.new(3.5, Enum.EasingStyle.Circular), {
							Brightness = -0.1, 
							Contrast = 1, 
							TintColor = Color3.fromRGB(222, 88, 255), 
							Saturation = -0.5
						}):Play();
						task.spawn(function()
							local v11 = 0;
							while true do
								task.wait(0.3);
								v11 = v11 + 1;
								local v12 = game.ReplicatedStorage.Atomic.Sphere:Clone();
								v12.Parent = workspace.Ignored;
								v12.Size = Vector3.new(1, 1, 1);
								game:GetService("TweenService"):Create(v12, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
									Transparency = 1, 
									Size = Vector3.new(150, 150, 150), 
									Orientation = Vector3.new(0, math.random(-360, 420), 0)
								}):Play();
								v12.CFrame = CFrame.new(Position.X, Position.Y, Position.Z);
								game.Debris:AddItem(v12, 1);
								if v11 >= 10 then
									break;
								end;				
							end;
						end);
						task.spawn(function()
							local v13 = 0;
							while true do
								task.wait(1);
								v13 = v13 + 1;
								local v14 = game.ReplicatedStorage.Atomic.Wind2:Clone();
								v14.Parent = workspace.Ignored;
								v14.Size = Vector3.new(150, 150, 150);
								game:GetService("TweenService"):Create(v14, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
									Transparency = 0, 
									Size = Vector3.new(0.5, 0.5, 0.5), 
									Orientation = Vector3.new(0, math.random(-360, 420), 0)
								}):Play();
								v14.CFrame = CFrame.new(Position.X, Position.Y, Position.Z);
								if v13 == 4 then
									v14.Luz.Enabled = true;
									game:GetService("TweenService"):Create(v14.Luz, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, true), {
										Brightness = 100
									}):Play();
									game.Debris:AddItem(v14, 2);
								else
									game.Debris:AddItem(v14, 1);local IS = game:GetService("InsertService")
								end;
								if v13 >= 5 then
									break;
								end;				
							end;
						end);
						local v15 = 0;
						for v16, v17 in pairs(game.ReplicatedStorage.Atomic:GetChildren()) do
							if v17.Name == "Shock" then
								local v18 = v17:Clone();
								v18.Parent = workspace.Ignored;
								v18.Size = Vector3.new(2, 30, 2);
								game:GetService("TweenService"):Create(v18, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
									Transparency = 1, 
									Size = Vector3.new(150, 70, 150), 
									Orientation = Vector3.new(0, math.random(-360, 420), 0)
								}):Play();
								v15 = v15 + 1;
								v18.CFrame = CFrame.new(Position.X, Magnitude / v15, Position.Z);
								game.Debris:AddItem(v18, 2);
							end;
						end;
					end);
					local v19 = u1.new(Enum.RenderPriority.Camera.Value, function(p5)
						workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p5;
					end);
					v19:Start();
					v19:Shake(u1.Presets.Earthquake);
					local v20 = ReplicatedStorage["Atomic"].Stomp:Clone();
					v20.Parent = workspace;
					v20:Play();
					game.Debris:AddItem(v20, 24);
					local v21 = game.ReplicatedStorage.Atomic.AtomicBeam:Clone();
					local BeamOne2 = v21.BeamOne;
					BeamOne2.Parent = workspace.Terrain;
					BeamOne2.WorldPosition = player.Character.PrimaryPart.Position;
					task.delay(0.5, function()
						BeamOne2.Debris.Enabled = true;
						task.wait(3);
						BeamOne2.Debris.Enabled = false;
						BeamOne2.Debris.Drag = 5;
					end);
					local u5 = game.ReplicatedStorage.Atomic.Swords:Clone();
					local Position = player.Character.PrimaryPart.Position;
					task.delay(8.5, function()
						local v23 = Instance.new("Model");
						u5:SetPrimaryPartCFrame(CFrame.new(Position.X, Position.Y + 60, Position.Z));
						u5.PrimaryPart:Destroy();
						for v24, v25 in pairs(u5:GetChildren()) do
							if v25:IsA("Part") then
								v25.Anchored = true;
							end;
						end;
						u5.Parent = workspace.Ignored;
						for v26, v27 in pairs(u5:GetChildren()) do
							if v27:IsA("Part") then
								game.TweenService:Create(v27, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
									Transparency = 0
								}):Play();
								task.delay(0.5, function()
									if v27.Name == "Sword" then
										workspace.Gravity = 196.2;
										game.TweenService:Create(v27, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
											Position = Vector3.new(Position.X, Position.Y, Position.Z)
										}):Play();
										return;
									end;
									game.TweenService:Create(v27, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
										Position = Vector3.new(Position.X, Position.Y + 15, Position.Z)
									}):Play();
								end);
							end;
						end;
						local v28 = Vector3.new(Position.X, Position.Y + 1024, Position.Z);
						local v29 = Vector3.new(Position.X, Position.Y - 20, Position.Z);
						local v30, v31 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(v28, (v29 - v28).unit * 2000), { workspace.Ignored, workspace.Characters:WaitForChild(player.Name) });
						local Magnitude2 = (v28 - v31).Magnitude;
						v21.Size = Vector3.new(Magnitude2, 0.5, 0.5);
						v21.CFrame = CFrame.new(v28, v29) * CFrame.new(0, 0, -Magnitude2 / 2) * CFrame.Angles(0, 1.5707963267948966, 0);
						local v33 = game.ReplicatedStorage.Atomic.Crack:Clone();
						v33.Parent = workspace.Ignored;
						v33.Size = Vector3.new(290, 0.05, 290);
						v33.Position = v31 - Vector3.new(0, -0.025, 0);
						game.Debris:AddItem(v33, 11);
						game:GetService("TweenService"):Create(v33, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
							Size = Vector3.new(300, 0.05, 300)
						}):Play();
						task.delay(10, function()
							game:GetService("TweenService"):Create(v33.v, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
								Transparency = 1
							}):Play();
						end);
					end);
					local GeographicLatitude = game.Lighting.GeographicLatitude;
					delay(10, function()
						local v34 = game.ReplicatedStorage.Atomic.Smoke:Clone();
						v34.Parent = workspace.Ignored;
						v34.Attachment.Here.Enabled = true;
						v34.Position = player.Character.PrimaryPart.Position;
						game.Debris:AddItem(v34, 4.5);
						task.delay(2.5, function()
							v34.Attachment.Here.Enabled = false;
						end);
						local v35 = u1.new(Enum.RenderPriority.Camera.Value, function(p6)
							workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p6;
						end);
						v35:Start();
						v35:Shake(u1.Presets.BoomDead);
						local v36 = ReplicatedStorage["Atomic"].Sound:Clone();
						v36.Parent = workspace;
						v36.TimePosition = 9;
						v36:Play();
						game.TweenService:Create(v36, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
							Volume = 0.25
						}):Play();
						game.Debris:AddItem(v36, 10);
						task.delay(15, function()
							game.TweenService:Create(v36, TweenInfo.new(1, Enum.EasingStyle.Quint), {
								Volume = 0
							}):Play();
						end);
						local v37 = ReplicatedStorage["Atomic"].shocwav:Clone();
						v37.Parent = workspace;
						v37:Play();
						game.Debris:AddItem(v37, 10);
						BeamOne2.Debris.Drag = -10;
						game:GetService("TweenService"):Create(v6, TweenInfo.new(5, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut), {
							Brightness = 0.1, 
							Contrast = 0.8, 
							TintColor = Color3.fromRGB(214, 214, 214), 
							Saturation = 1
						}):Play();
						game:GetService("TweenService"):Create(game.Lighting, TweenInfo.new(5, Enum.EasingStyle.Circular), {
							GeographicLatitude = GeographicLatitude, 
							FogEnd = 500
						}):Play();
						v21.Parent = workspace.Ignored.Animations;
						v21.Anchored = true;
						v21.CanCollide = false;
						v21.Transparency = 0.2;
						v21.Material = Enum.Material.Neon;
						v21.Shape = Enum.PartType.Cylinder;
						game.Debris:AddItem(v21, 10);
						local v38 = Instance.new("Sound", v21);
						v38.SoundId = "rbxassetid://6808975002";
						v38.Volume = 1;
						v38:Play();
						local v39 = Vector3.new(Position.X, Position.Y + 1024, Position.Z);
						local v40 = Vector3.new(Position.X, Position.Y - 20, Position.Z);
						local v41, v42 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(v39, (v40 - v39).unit * 2000), { workspace.Ignored, workspace.Characters:WaitForChild(player.Name) });
						local Magnitude3 = (v39 - v42).Magnitude;
						v21.Size = Vector3.new(Magnitude3, 0.5, 0.5);
						v21.CFrame = CFrame.new(v39, v40) * CFrame.new(0, 0, -Magnitude3 / 2) * CFrame.Angles(0, 1.5707963267948966, 0);
						local Position4 = CFrame.new(Position.X, Position.Y + 2, Position.Z).Position;
						local v45 = {
							WideSlam = {
								DebrisPositions = { Position4, 200, 200 }, 
								Properties = {
									Range = math.random(20, 30), 
									Speed = 2, 
									Duration = 3, 
									origPos = Position4, 
									newSize = Vector3.new(math.random(50, 70) / 3, math.random(50, 70) / 7, math.random(50, 70) / 3)
								}
							}
						};
						local v46 = u3.createCircle(unpack(v45.WideSlam.DebrisPositions));
						for v47 = 1, #v46 do
							local v48 = u3.RayCastOnMap(v46[v47], Vector3.new(0, -15, 0), true);
							if v48 then
								u3.spawnRubble(v48.Instance, v48.Position, v45.WideSlam.Properties);
							end;
						end;
						local v49 = game.ReplicatedStorage.Atomic.Wind:Clone();
						game:GetService("TweenService"):Create(v49, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
							Transparency = 1, 
							Size = Vector3.new(150, 1000, 150), 
							Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
						}):Play();
						v49.Parent = v21;
						v49.Size = Vector3.new(300, Magnitude3 / 2, 300);
						v49.Position = v21.Position;
						local v50 = game.ReplicatedStorage.Atomic.EXP:Clone();
						game:GetService("TweenService"):Create(v50, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
							Transparency = 1.1, 
							Size = Vector3.new(150, 1000, 150), 
							Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
						}):Play();
						v50.Parent = v21;
						v50.Size = Vector3.new(300, Magnitude3, 300);
						v50.Position = v21.Position;
						local v51 = game.ReplicatedStorage.Atomic.ShockWaving:Clone();
						game:GetService("TweenService"):Create(v51, TweenInfo.new(6, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Transparency = 1, 
							Size = Vector3.new(150, 1000, 150), 
							Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
						}):Play();
						v51.Parent = v21;
						v51.Size = Vector3.new(100, 50, 100);
						v51.Position = Vector3.new(v21.Position.X, -v21.Position.Y, v21.Position.Z);
						local v52 = 0;
						for v53, v54 in pairs(game.ReplicatedStorage.Atomic:GetChildren()) do
							if v54.Name == "Shock" then
								local v55 = v54:Clone();
								v55.Parent = v21;
								v55.Size = Vector3.new(150, 25, 150);
								game:GetService("TweenService"):Create(v55, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
									Transparency = 1, 
									Size = Vector3.new(500, 50, 500), 
									Orientation = Vector3.new(0, math.random(-360, 420), 0)
								}):Play();
								v52 = v52 + 1;
								v55.CFrame = CFrame.new(v21.Position.X, Magnitude3 / v52, v21.Position.Z);
							end;
						end;
						game.Debris:AddItem(u5, 1);
						for v56, v57 in pairs(u5:GetChildren()) do
							if v57:IsA("Part") then
								game.TweenService:Create(v57, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
									Transparency = 1
								}):Play();
								game.Debris:AddItem(v57, 0.5);
							end;
						end;
						task.spawn(function()
							local v58 = 0;
							while true do
								task.wait(0.2);
								v58 = v58 + 1;
								local v59 = game.ReplicatedStorage.Atomic.atomic:Clone();
								v59.Parent = workspace.Ignored;
								for v60, v61 in pairs(v59:GetChildren()) do
									if v61:IsA("Part") then
										v61.Size = Vector3.new(4, 4, 4);
										v61.CFrame = CFrame.new(Position.X, Position.Y, Position.Z);
										game:GetService("TweenService"):Create(v61, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
											Transparency = 1, 
											Size = Vector3.new(400, 400, 400), 
											Orientation = Vector3.new(0, math.random(-360, 420), 0)
										}):Play();
									end;
								end;
								game.Debris:AddItem(v59, 2);
								if v58 >= 2 then
									break;
								end;				
							end;
						end);
						coroutine.wrap(function()
							task.spawn(function()
								while true do
									for v62, v63 in pairs(v21:GetChildren()) do
										if v63:IsA("Beam") then
											v21.Attachment.WorldPosition = v21.Position + Vector3.new(0, v21.Size.X / 2, 0);
											v21.ATT.WorldPosition = v21.Position + Vector3.new(0, -v21.Size.X / 2, 0);
											v63.Width0 = v21.Size.Z;
											v63.Width1 = v21.Size.Z;
										end;
									end;
									task.wait();
									if v36.Volume == 0 and v21.Size.Z <= 0.01 then
										break;
									end;					
								end;
								game:GetService("TweenService"):Create(v6, TweenInfo.new(2, Enum.EasingStyle.Circular), {
									Brightness = 0, 
									Contrast = 0, 
									TintColor = Color3.fromRGB(255, 255, 255), 
									Saturation = 0
								}):Play();
							end);
							local v64 = game:GetService("TweenService"):Create(v21, TweenInfo.new(0.5), {
								Transparency = 0.8, 
								Size = Vector3.new(Magnitude3, 300, 300)
							});
							v64:Play();
							v64.Completed:Wait();
							game:GetService("TweenService"):Create(v21, TweenInfo.new(10), {
								Transparency = 1, 
								Size = Vector3.new(Magnitude3, 0, 0)
							}):Play();
						end)();
					end);
				else
					local v65 = ReplicatedStorage["Atomic"].BDD:Clone();
					v65.Parent = workspace;
					v65:Play();
					if player.Character:FindFirstChild("AtomicAura") == nil then
						local v66 = game.ReplicatedStorage.Atomic.AtomicAura:Clone();
						v66.Parent = player.Character;
						v66.Motor6D.Part1 = player.Character.HumanoidRootPart;
						game.Debris:AddItem(v66, 5);
					end;
				end;
				return nil;
			end;
			v1.RunStompFx("Atomic", player.Character.PrimaryPart, player, nil)
			print("done")
			return v1;
		end

		local stompFX1 = game:GetService("ReplicatedStorage").KillFX:GetChildren()

		local dropdownContent = {}
		for _, obj in ipairs(stompFX1) do
			table.insert(dropdownContent, obj.Name)
		end

		local selectedMethod = ""

		local ClientEffect = ""
		local ServerEffect = ""
		local EquippedStomp = localPlayer.Information.KillFX.Value

		local StompChanger = false

		local Client = true
		local Server = false

		StompSection:AddToggle({
			Name = "Stomp Changer",
			Flag = "StompChanger____RR__R",
			Callback = function()
				if (StompChanger == false) then
					StompChanger = true
					print("mode selected:", selectedMethod)
					print("Stomp Changer", StompChanger)
				else
					StompChanger = false
					print("Stomp Changer", StompChanger)
				end
			end
		})

		StompSection:AddDropdown({
			Name = "Stomp Type:",
			Flag = "stomp_type",
			List = {
				"Client",
				"Server"
			},
			Callback = function(List)
				if (List == "Client") then
					selectedMethod = List
					Server = false
					Client = true
					print("Selected Type", List)
				else
					selectedMethod = List
					Server = true
					Client = false
					print("Selected Type", List)
				end
			end
		})

		StompSection:AddSearchBox({
			Name = "Client Stomp Selected:",
			Flag = "Dropdown_changer",
			List = dropdownContent,
			Callback = function(option)
				ClientEffect = option
				print("Stomp:", ClientEffect)

				local function RunClientFx(Effect, Part)
					local Part = Part or workspace.Part
					local FxModule = require(ReplicatedStorage.KillFX[Effect])

					return FxModule.RunStompFx(Effect, Part, localPlayer, localPlayer)
				end

				local function RunServerFx(Part)
					local Part = Part
					if (ServerEffect == "Heaven") then
						print("Heaven: ".. Part.Name)


						local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage")
						local l__TweenService__7 = game:GetService("TweenService")
						local l__Debris__11 = game:GetService("Debris")

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end

						local function enableEffect()
							local charm = game.Players.LocalPlayer.Backpack:WaitForChild("Charm")

							charm.Parent = game.Players.LocalPlayer.Character
							charm:Activate()
							charm.Parent = game.Players.LocalPlayer.Backpack
						end
						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						if nearestPlayer then
							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
							BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							BP.P = 1250
							BP.D = 500
							boombox("Play", "8033655853")
							boombox("Remove")
							BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position
							l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
								Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 15 ,0),
							}):Play()
							wait(1.3)
							l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
								Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 3000 ,0),
							}):Play()

							wait(2.3)
							boombox("Stop")
						else
							print("no player")
						end
					elseif (ServerEffect == "Skyfall") then

						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						if nearestPlayer then
							print("Nearest player is " .. nearestPlayer.Name .. " at distance " .. nearestDistance)


							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = game.Players[nearestPlayer.Name].Character.RightLowerArm
							BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							BP.P = 500
							BP.D = 50


							local box = game.Players.LocalPlayer.Backpack:WaitForChild("[Boombox]")


							-- Get the RightLowerArm limb
							local limb = game.Players.LocalPlayer.Character.RightLowerArm

							-- Set the initial position of the BodyPosition object to match the limb
							BP.Position = limb.Position

							-- Anchor the character's HumanoidRootPart to prevent it from moving
							game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

							-- Define a function that will sync the position of the BodyPosition object with the limb
							local function syncPosition()
								BP.Position = limb.Position
							end

							-- Connect the syncPosition function to the Heartbeat event of the RunService object
							local otherconnection = game:GetService("RunService").Heartbeat:Connect(syncPosition)


							box.Parent = game.Players.LocalPlayer.Character

							local args = {
								[1] = "Play",
								[2] = "13047753222"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))


							local animation = Instance.new("Animation")
							animation.AnimationId = "http://www.roblox.com/asset/?id=13047696162" -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							-- Play the animation
							animationTrack:Play()



							box.Parent = game.Players.LocalPlayer.Backpack

							wait(2.8)
							local newpart = Instance.new("Part",workspace)
							newpart.Name = "BODYPOSITIONPART"
							newpart.Anchored = true
							newpart.Transparency = 1
							newpart.CanCollide = false
							local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
							local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 250) + Vector3.new(0, 240, 0)
							newpart.Position = position
							otherconnection:Disconnect()

							BP.Position = game.Workspace.BODYPOSITIONPART.Position
							wait(2.7)
							box.Parent = game.Players.LocalPlayer.Character
							game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
							local args = {
								[1] = "Play",
								[2] = "13047749094"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))

							box.Parent = game.Players.LocalPlayer.Backpack

							wait(2)
							box.Parent = game.Players.LocalPlayer.Character

							local args = {
								[1] = "Stop"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))

							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							box.Parent = game.Players.LocalPlayer.Backpack

							wait(3)
							newpart:Destroy()
						else
							print("No closest player.")
						end
					elseif (ServerEffect == "Scorpion") then

						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage")
						local l__TweenService__7 = game:GetService("TweenService")
						local l__Debris__11 = game:GetService("Debris")
						local LookV = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end
						local function animation(id)
							local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play() 
						end

						for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
							v:Stop()
						end

						task.wait(0.1)

						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 1250
						BP.D = 500
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position

						animation("7591947743")
						boombox("Play", 507150998)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 60, 0) + (LookV * 150)
						}):Play()
						wait(0.3)
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0, 0) 
						}):Play()
						boombox("Stop")
						wait(0.8)
						animation("7591841541")
						boombox("Play", 203773793)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players.LocalPlayer.Character.UpperTorso.Position + Vector3.new(0, 0, 1)
						}):Play()
						wait(1.5)
						animation("9790031853")
						boombox("Play", 6808975002)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 10, 0) + (LookV * 730)
						}):Play()
						wait(4)
						boombox("Stop")
					end
					NotificationLibrary:SendNotification("Success", "Changed Server Stomp to "..ServerEffect, 3)
				end

				if (StompChanger == true)  then
					for Index, Effect in next, ReplicatedStorage.KillFX:GetChildren() do
						local FxModule = require(Effect)

						if not FxModule.RunStompFx then continue end

						local oldEffect = FxModule.RunStompFx
						FxModule.RunStompFx = function(...)
							local Args = {...}
							EquippedStomp = localPlayer.Information.KillFX.Value
							if Args[3] == localPlayer and Args[4] == localPlayer and Effect.Name == EquippedStomp and Server and StompChanger then
								print("Server Effect being ran..")
								return RunServerFx(Args[2])
							elseif Args[3] == localPlayer and Args[4] == localPlayer and Effect.Name ~= ClientEffect and Client and StompChanger then
								print("Client Effect being ran..")
								return RunClientFx(ClientEffect, Args[2])
							end
							return oldEffect(...)
						end
					end
					NotificationLibrary:SendNotification("Success", "Changed StompFX to "..ClientEffect, 3)
				else
					return;
				end
			end
		})

		StompSection:AddDropdown({
			Name = "Server Stomp Selected:",
			Flag = "stomp_server",
			List = {
				"Skyfall",
				"Heaven",
				"Scorpion",
				"Ground Pound",
				"Combo",
				"Kamehameha",
				"Za Warudo",
				"Barrage",
				"Dimensional Slash"
			},
			Callback = function(option)
				ServerEffect = option
				print("selected option ", ServerEffect)

				local function RunClientFx(Effect, Part)
					local Part = Part or workspace.Part
					local FxModule = require(ReplicatedStorage.KillFX[Effect])

					return FxModule.RunStompFx(Effect, Part, localPlayer, localPlayer)
				end

				local function RunServerFx(Part)
					local Part = Part
					if (ServerEffect == "Heaven") then
						print("Heaven: ".. Part.Name)
						localPlayer.Character.Humanoid:UnequipTools()


						local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage")
						local l__TweenService__7 = game:GetService("TweenService")
						local l__Debris__11 = game:GetService("Debris")

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end


						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						if nearestPlayer then
							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
							BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							BP.P = 1250
							BP.D = 500
							boombox("Play", "8033655853")
							boombox("Remove")
							BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position
							l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
								Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 15 ,0),
							}):Play()
							wait(1.3)
							l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
								Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 3000 ,0),
							}):Play()

							wait(2.3)
							boombox("Stop")
						else
							print("no player")
						end
					elseif (ServerEffect == "Skyfall") then
						localPlayer.Character.Humanoid:UnequipTools()

						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						if nearestPlayer then
							print("Nearest player is " .. nearestPlayer.Name .. " at distance " .. nearestDistance)


							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = game.Players[nearestPlayer.Name].Character.Head
							BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							BP.P = 1000
							BP.D = 50


							local box = game.Players.LocalPlayer.Backpack:WaitForChild("[Boombox]")


							-- Get the RightLowerArm limb
							local limb = game.Players.LocalPlayer.Character.RightLowerArm

							-- Set the initial position of the BodyPosition object to match the limb
							BP.Position = limb.Position

							-- Anchor the character's HumanoidRootPart to prevent it from moving
							game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

							-- Define a function that will sync the position of the BodyPosition object with the limb
							local function syncPosition()
								BP.Position = limb.Position
							end

							-- Connect the syncPosition function to the Heartbeat event of the RunService object
							local otherconnection = game:GetService("RunService").Heartbeat:Connect(syncPosition)


							box.Parent = game.Players.LocalPlayer.Character

							local args = {
								[1] = "Play",
								[2] = "13047753222"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))


							local animation = Instance.new("Animation")
							animation.AnimationId = "http://www.roblox.com/asset/?id=13047696162" -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							-- Play the animation
							animationTrack:Play()



							box.Parent = game.Players.LocalPlayer.Backpack

							wait(2.8)
							local newpart = Instance.new("Part",workspace)
							newpart.Name = "BODYPOSITIONPART"
							newpart.Anchored = true
							newpart.Transparency = 1
							newpart.CanCollide = false
							local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
							local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 250) + Vector3.new(0, 240, 0)
							newpart.Position = position
							otherconnection:Disconnect()

							BP.Position = game.Workspace.BODYPOSITIONPART.Position
							wait(2.7)
							box.Parent = game.Players.LocalPlayer.Character
							game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
							local args = {
								[1] = "Play",
								[2] = "13047749094"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))

							box.Parent = game.Players.LocalPlayer.Backpack

							wait(2)
							box.Parent = game.Players.LocalPlayer.Character

							local args = {
								[1] = "Stop"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))

							local args = {
								[1] = "Remove"
							}

							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(unpack(args))
							box.Parent = game.Players.LocalPlayer.Backpack

							wait(3)
							newpart:Destroy()
						else
							print("No closest player.")
						end
					elseif (ServerEffect == "Scorpion") then
						localPlayer.Character.Humanoid:UnequipTools()


						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage")
						local l__TweenService__7 = game:GetService("TweenService")
						local l__Debris__11 = game:GetService("Debris")
						local LookV = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end
						local function animation(id)
							local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play() 
						end

						loop = game:GetService("RunService").RenderStepped:Connect(function()
							for i, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
								if v.Animation.AnimationId == "rbxassetid://12848047531" then
									v:Stop()
								end
							end
						end)

						task.wait(0.1)

						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 1250
						BP.D = 500
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position

						animation("7591947743")
						boombox("Play", 507150998)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 60, 0) + (LookV * 150)
						}):Play()
						wait(0.7)
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0, 0) 
						}):Play()
						boombox("Stop")
						wait(0.8)
						animation("7591841541")
						boombox("Play", 203773793)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players.LocalPlayer.Character.UpperTorso.Position + Vector3.new(0, 0, 1)
						}):Play()
						wait(1.5)
						animation("9790031853")
						boombox("Play", 6808975002)
						boombox("Remove")
						l__TweenService__7:Create(BP, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 10, 0) + (LookV * 730)
						}):Play()
						wait(4)
						boombox("Stop")
						wait(3)
						loop:Disconnect()

					elseif (ServerEffect == "Ground Pound") then


						local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage")
						local l__TweenService__7 = game:GetService("TweenService")
						local l__Debris__11 = game:GetService("Debris")
						local LookV = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end
						local function animation(id)
							local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play() 
						end

						loop = game:GetService("RunService").RenderStepped:Connect(function()
							for i, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
								if v.Animation.AnimationId == "rbxassetid://12848047531" then
									v:Stop()
								end
							end
						end)


						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end
						local direction = Vector3.new(0, 0, -5) -- replace with the desired direction


						local HMR = game.Players.LocalPlayer.Character.HumanoidRootPart

						local newpart = Instance.new("Part",workspace)
						newpart.Name = "BODYPOSITIONPART"
						newpart.Anchored = true
						newpart.Transparency = 1
						newpart.CanCollide = false

						local newpart2 = Instance.new("Part",workspace)
						newpart2.Name = "SELFPOSITIONPART"
						newpart2.Anchored = true
						newpart2.Transparency = 1
						newpart2.CanCollide = false


						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 5000
						BP.D = 500
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position

						newpart2.CFrame = HMR.CFrame * CFrame.new(0,7,-8)
						newpart.CFrame = HMR.CFrame * CFrame.new(0, 8.5, -5)



						animation("8671451936")
						boombox("Play", "9120705982")
						boombox("Remove")
						wait(0.5)
						boombox("Play", "6824039583")
						boombox("Remove")
						BP.Position = game.Workspace.SELFPOSITIONPART.Position

						wait(0.8)

						boombox("Play", "9758530498")
						boombox("Remove")
						local animation99 = Instance.new("Animation")
						animation99.AnimationId = "http://www.roblox.com/asset/?id=12842348710" -- Roblox dance emote
						local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation99)
						-- Play the animation
						animationTrack:Play()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BODYPOSITIONPART.CFrame
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						wait(0.7)
						boombox("Stop")
						wait(0.5)
						boombox("Play", "441202925")
						boombox("Remove")
						animation("9790017938")
						l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = Vector3.new(game.Players[nearestPlayer.Name].Character.PrimaryPart.CFrame) + Vector3.new(0, 0 ,-5000),
						}):Play()
						wait(1.3)
						animationTrack:Stop()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						boombox("Stop")
						newpart2:Destroy()
						newpart:Destroy()
						loop:Disconnect()

						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Animation") then
								v:Destroy()
							end
						end

					elseif (ServerEffect == "Combo") then
						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end


						local l__TweenService__7 = game:GetService("TweenService")




						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end


						local direction = Vector3.new(0, 0, -5) -- replace with the desired direction
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position + direction)

						local newpart2 = Instance.new("Part",workspace)
						newpart2.Name = "SELFPOSITIONPART"
						newpart2.Anchored = true
						newpart2.Transparency = 1
						newpart2.CanCollide = false

						local newpart32 = Instance.new("Part",workspace)
						newpart32.Name = "SELFPOSITIONPART1"
						newpart32.Anchored = true
						newpart32.Transparency = 1
						newpart32.CanCollide = false

						local newpart288 = Instance.new("Part",workspace)
						newpart288.Name = "BODYPOSPART"
						newpart288.Anchored = true
						newpart288.Transparency = 1
						newpart288.CanCollide = false

						local newpart32151 = Instance.new("Part",workspace)
						newpart32151.Name = "BODYPOSPART0"
						newpart32151.Anchored = true
						newpart32151.Transparency = 1
						newpart32151.CanCollide = false


						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 10000
						BP.D = 500
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position




						local animation = Instance.new("Animation")
						animation.AnimationId = "http://www.roblox.com/asset/?id=11609828985" -- Roblox dance emote
						local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
						-- Play the animation


						local direction = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
						local position2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10) + Vector3.new(0, 6, -10)
						local position3 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10) + Vector3.new(0, 7, -14)





						animationTrack:Play()
						animationTrack:AdjustSpeed(0.8)
						wait(0.6)
						boombox("Play", "8595975878")
						boombox("Remove")
						newpart288.Position = position3
						newpart2.Position = position2
						BP.Position = game.Workspace.BODYPOSPART.Position
						wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.SELFPOSITIONPART.CFrame
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						wait(0.5)
						boombox("Play", "8595974357")
						boombox("Remove")
						local position4 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10) + Vector3.new(0, 4, -10)
						local position38 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10) + Vector3.new(0, 2, -16)

						newpart32.Position = position4
						newpart32151.Position = position38

						BP.Position = game.Workspace:FindFirstChild("BODYPOSPART0").Position
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.SELFPOSITIONPART1.CFrame
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						wait(0.2)
						boombox("Stop")
						wait(0.4)
						boombox("Play", "8595976174")
						boombox("Remove")

						l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0 ,-5000),
						}):Play()
						wait(0.5)
						game.workspace.SELFPOSITIONPART:Destroy()
						game.workspace.SELFPOSITIONPART1:Destroy()
						game.workspace.BODYPOSPART:Destroy()
						game.workspace.BODYPOSPART0:Destroy()
						animationTrack:Stop()
						wait(1)
						boombox("Stop")
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
					elseif (ServerEffect == "Kamehameha") then
						local Players = game:GetService("Players")
						local ReplicatedStorage = game:GetService("ReplicatedStorage")

						local function anim(id)
							local animation = Instance.new("Animation")
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play()
						end

						local function boombox(Method, id)
							local plr = Players.LocalPlayer
							local char = plr.Character
							local backpack = plr.Backpack

							local boombox = backpack:FindFirstChild("[Boombox]")
							if not boombox then
								boombox = backpack.ChildAdded:Wait()
								while boombox.Name ~= "[Boombox]" do
									boombox = backpack.ChildAdded:Wait()
								end
							end

							local tool = nil
							for _, v in ipairs(char:GetChildren()) do
								if v:IsA("Tool") then
									tool = v
									v.Parent = backpack
									break
								end
							end

							boombox.Parent = char
							ReplicatedStorage:WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = backpack

							if tool then
								tool.Parent = char
							end
						end

						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						if nearestPlayer then
							local humpart = localCharacter.HumanoidRootPart
							local moveToPosition = nearestPlayer.Character.HumanoidRootPart.Position + Vector3.new(5, 0, 0) -- Adjust the offset as needed
							local lookDirection = Vector3.new(-1, 0, 0) -- Right direction
							local newLookCFrame = CFrame.new(localPlayer.Character.HumanoidRootPart.Position, localPlayer.Character.HumanoidRootPart.Position + lookDirection)
							
							localCharacter:SetPrimaryPartCFrame(CFrame.new(moveToPosition))
							localPlayer.Character.HumanoidRootPart.CFrame = newLookCFrame
							wait(0.05)
							humpart.Anchored = true


							anim(14313948409)
							boombox("Play", "14313894194")
							boombox("Remove")

							local v3 = Instance.new("BodyVelocity")
							v3.Name = "N/A_S"
							v3.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							v3.Parent = nearestPlayer.Character.UpperTorso

							local baseSpeed = 5 -- Initial speed
							local angle = math.rad(45) -- 45-degree angle (diagonal upward)
							local xVelocity = -baseSpeed * math.cos(angle) -- Negate xVelocity for opposite direction
							local yVelocity = baseSpeed * math.sin(angle)
							local zVelocity = 0 -- No vertical movement

							v3.Velocity = Vector3.new(xVelocity, yVelocity, zVelocity)

							wait(3.7) -- Wait for 3.5 seconds

							local increasedSpeed = baseSpeed + 5000 -- Increased speed
							xVelocity = -increasedSpeed * math.cos(angle) -- Negate xVelocity for opposite direction
							yVelocity = increasedSpeed * math.sin(angle)

							v3.Velocity = Vector3.new(xVelocity, yVelocity, zVelocity)



							wait(4)
							humpart.Anchored = false
							boombox("Stop")
						end
					elseif (ServerEffect == "Za Warudo") then
						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end
						local l__TweenService__7 = game:GetService("TweenService")

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end


						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 1500
						BP.D = 50
						print("created bodypos")

						local newpart2 = Instance.new("Part",workspace)
						newpart2.Name = "SELFPOSITIONPART"
						newpart2.Anchored = true
						newpart2.Transparency = 1
						newpart2.CanCollide = false
						print("created Part")


						local limb = game.Players.LocalPlayer.Character.RightLowerArm

						-- Set the initial position of the BodyPosition object to match the limb
						BP.Position = limb.Position

						-- Define a function that will sync the position of the BodyPosition object with the limb
						local function syncPosition()
							BP.Position = limb.Position
						end

						local otherconnection = game:GetService("RunService").Heartbeat:Connect(syncPosition)
						print("looping")


						local direction = Vector3.new(0, 0, -5) -- replace with the desired direction

						local position2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * -1) + Vector3.new(0, 10, 0)
						newpart2.Position = position2
						print("position")

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild("SELFPOSITIONPART").CFrame
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true



						local animation = Instance.new("Animation")
						animation.AnimationId = "http://www.roblox.com/asset/?id=8200149015" -- Roblox dance emote
						local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
						-- Play the animation
						animationTrack:Play()
						animationTrack:AdjustSpeed(0.7)





						boombox("Play", "4580055091")
						boombox("Remove")
						wait(1.1)
						boombox("Play", "5832251994")
						boombox("Remove")
						wait(1.5)
						l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0 ,-5000),
						}):Play()
						wait(2.5)
						boombox("Stop")
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						otherconnection:Disconnect()
						workspace.SELFPOSITIONPART:Destroy()

					elseif (ServerEffect == "Barrage") then

						local l__TweenService__7 = game:GetService("TweenService")



						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end


						local animation1 = Instance.new("Animation")
						animation1.AnimationId = "http://www.roblox.com/asset/?id=8671451936" -- Roblox dance emote
						local animationTrack1 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation1)
						-- Play the animation
						animationTrack1:Play()

						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end


						loop = game:GetService("RunService").RenderStepped:Connect(function()
							for i, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
								if v.Animation.AnimationId == "rbxassetid://12848047531" then
									v:Stop()
								end
							end
						end)

						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 500
						BP.D = 50
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position




						local newpart2 = Instance.new("Part",workspace)
						newpart2.Name = "BODYPOSPART"
						newpart2.Anchored = true
						newpart2.Transparency = 1
						newpart2.CanCollide = false


						local newpart5 = Instance.new("Part",workspace)
						newpart5.Name = "SELFPOSPART"
						newpart5.Anchored = true
						newpart5.Transparency = 1
						newpart5.CanCollide = false
						print("created Part")

						boombox("Play", "8285346587")
						boombox("Remove")
						wait(1)
						boombox("Stop")


						local direction = Vector3.new(0,0, -5)

						local position2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10) + Vector3.new(0, 7, 0)
						local position3 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + (direction * 10.3) + Vector3.new(0, 8, 0)
						newpart2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, -25)
						newpart5.CFrame =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 11, -28)

						BP.Position = game.Workspace.SELFPOSPART.Position
						wait(0.2)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BODYPOSPART.CFrame
						wait(0.1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						local animation8 = Instance.new("Animation")
						animation8.AnimationId = "http://www.roblox.com/asset/?id=7318629501" -- Roblox dance emote
						local animationTrack123 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation8)
						-- Play the animation
						animationTrack123:Play()
						boombox("Play", "5013887780")
						boombox("Remove")
						animationTrack123:AdjustSpeed(2)
						wait(2.3)
						animationTrack123:AdjustSpeed(0.4)
						l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0 ,-5000),
						}):Play()
						wait(0.6)
						boombox("Stop")
						wait(1)
						animationTrack123:Stop()
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						wait(2)
						animationTrack123:Stop()
						game.Workspace.BODYPOSPART:Destroy()
						game.Workspace.SELFPOSPART:Destroy()
						loop:Disconnect()

					elseif (ServerEffect == "Dimensional Slash") then
						local localCharacter = game.Players.LocalPlayer.Character
						local localPosition = localCharacter.HumanoidRootPart.Position

						local nearestPlayer = nil
						local nearestDistance = 10

						for _, player in pairs(game.Players:GetPlayers()) do
							if player ~= game.Players.LocalPlayer then
								local playerCharacter = player.Character
								if playerCharacter then
									local playerPosition = playerCharacter.UpperTorso.Position
									local distance = (playerPosition - localPosition).Magnitude
									if distance <= nearestDistance then
										nearestDistance = distance
										nearestPlayer = player
									end
								end
							end
						end

						local player = game.Players.LocalPlayer
						local character = player.Character or player.CharacterAdded:Wait()

						local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


						local function boombox(Method, id)
							local plr = game.Players.LocalPlayer
							local char = plr.Character
							local boombox = plr.Backpack:WaitForChild("[Boombox]")

							boombox.Parent = char
							game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = plr.Backpack
						end


						local desiredLookDirection = Vector3.new(0, 0, 1)
						local newCFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + desiredLookDirection)

						local l__TweenService__7 = game:GetService("TweenService")

						humanoidRootPart.CFrame = newCFrame

						local BP = Instance.new("BodyPosition")
						BP.Name = "N/A_S"
						BP.Parent = game.Players[nearestPlayer.Name].Character.UpperTorso
						BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						BP.P = 1500
						BP.D = 50
						BP.Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position


						local otherpart = Instance.new("Part",workspace)
						otherpart.Name = "OTHERPART"
						otherpart.Anchored = true
						otherpart.Transparency = 1
						otherpart.CanCollide = false

						local selfpart = Instance.new("Part",workspace)
						selfpart.Name = "SELFPART"
						selfpart.Anchored = true
						selfpart.Transparency = 1
						selfpart.CanCollide = false

						local spawnPosition = humanoidRootPart.CFrame.Position + (humanoidRootPart.CFrame.LookVector * 40)
						local spawnPositio2 = humanoidRootPart.CFrame.Position + (humanoidRootPart.CFrame.LookVector * 45)


						otherpart.CFrame = CFrame.new(spawnPositio2)
						selfpart.CFrame = CFrame.new(spawnPosition)


						local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
						animation.AnimationId = "http://www.roblox.com/asset/?id=14775597832" -- Roblox dance emote
						local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
						animationTrack:Play() 
						animationTrack:AdjustSpeed(1.5)


						wait(1)

						boombox("Play", "4599382589")
						boombox("Remove")

						BP.Position = game.Workspace.SELFPART.Position
						wait(0.5)
						animationTrack:AdjustSpeed(0)

						boombox("Play", "405596045")
						boombox("Remove")
						wait()
						animationTrack:Stop()
						humanoidRootPart.CFrame = CFrame.new(game.Workspace.OTHERPART.Position)

						wait(0.1)
						animationTrack:Play()
						animationTrack:AdjustSpeed(0)
						wait(1)
						animationTrack:AdjustSpeed(2)
						wait(0.7)
						animationTrack:AdjustSpeed(0.8)

						boombox("Play", "7491914072")
						boombox("Remove")
						wait(0.3)
						l__TweenService__7:Create(BP, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Position = game.Players[nearestPlayer.Name].Character.UpperTorso.Position + Vector3.new(0, 0 ,-5000),
						}):Play()
						wait(1)
						animationTrack:Stop()
						wait(3)
						boombox("Stop")
						selfpart:Destroy()
						otherpart:Destroy()
						BP:Destroy()


					end

					NotificationLibrary:SendNotification("Success", "Changed Server Stomp to "..ServerEffect, 3)

				end

				if (StompChanger == true)  then
					for Index, Effect in next, ReplicatedStorage.KillFX:GetChildren() do
						local FxModule = require(Effect)

						if not FxModule.RunStompFx then continue end

						local oldEffect = FxModule.RunStompFx
						FxModule.RunStompFx = function(...)
							local Args = {...}
							EquippedStomp = localPlayer.Information.KillFX.Value
							if Args[3] == localPlayer and Args[4] == localPlayer and Effect.Name == EquippedStomp and Server and StompChanger then
								print("Server Effect being ran..")
								return RunServerFx(Args[2])
							elseif Args[3] == localPlayer and Args[4] == localPlayer and Effect.Name ~= ClientEffect and Client and StompChanger then
								print("Client Effect being ran..")
								return RunClientFx(ClientEffect, Args[2])
							end
							return oldEffect(...)
						end
					end
					NotificationLibrary:SendNotification("Success", "Changed Server Stomp to "..ServerEffect, 3)
				else
					return;
				end
			end
		})

		StompSection:AddButton({
			Name = "Test StompFX",
			Flag = "testing_stomp",
			Callback = function()
				if (Client == true) then
					local function setthreadidentity()
						if syn then
							syn.set_thread_identity(2)
						else
							setthreadcontext(2)
						end
					end

					setthreadidentity()

					local function RunClientFx(Effect, Part)
						local Part = Part or workspace.Part
						local FxModule = require(ReplicatedStorage.KillFX[Effect])

						return FxModule.RunStompFx(Effect, Part, localPlayer, localPlayer)
					end

					return RunClientFx(ClientEffect, game.Players.LocalPlayer.Character.LeftFoot)
				else
					print("server FX selected.")
				end
			end
		})





		StompSection:AddColorpicker({
			Name = "StompFX Color:",
			Flag = "test_color",
			Callback = function(color)
				game:GetService("Players").LocalPlayer.Information.RayColor.Value = color
			end
		})

		local enabled = false

		local StreakSection = GeneralTab:CreateSection({
			Name = "Streak Changer",
			Side = "Right"
		})

		local oldtag = game:GetService("Players").LocalPlayer.Information.Tag:Clone()
		oldtag.Name = "oldtag"
		oldtag.Value = game:GetService("Players").LocalPlayer.Information.Tag.Value


		local streakFX = game:GetService("ReplicatedStorage").TagText:GetChildren()

		local dropdownContent1 = {}
		for _, obj in ipairs(streakFX) do
			table.insert(dropdownContent1, obj.Name)
		end

		local selectedOption1 = ''

		StreakSection:AddToggle({
			Name = "Streak Changer",
			Flag = "StreakSEC_SC",
			Callback = function()
				if (enabled == false) then
					enabled = true
					print("streak changer:", enabled)
					game:GetService("Players").LocalPlayer.Information.Tag.Value = selectedOption1
				else
					enabled = false
					print("streak changer:", enabled)
					game:GetService("Players").LocalPlayer.Information.Tag.Value = oldtag.Value
				end
			end
		})

		StreakSection:AddSearchBox({
			Name = "Streak Selected:",
			Flag = "Dropdown_Streak",
			List = dropdownContent1,
			Callback = function(option)
				selectedOption1 = option
				if (enabled == true) then
					game:GetService("Players").LocalPlayer.Information.Tag.Value = selectedOption1
				else
					return;
				end
			end
		})


		StreakSection:AddSlider({
			Name = "Streak Amount:",
			Flag = "StreakAM_AM",
			Value = game.Players.LocalPlayer.Information.Streaks.Value,
			Min = 0,
			Max = 10000,
			Format = function(Value)
				if Value == 0 then
					game:GetService("Players").LocalPlayer.Information.Streaks.Value = Value
					return "Streaks: None"
				elseif Value == 10000 then
					game:GetService("Players").LocalPlayer.Information.Streaks.Value = Value
					return "Streaks: MAX"
				else
					game:GetService("Players").LocalPlayer.Information.Streaks.Value = Value
					return "Streaks: " .. tostring(Value) .. ""
				end
			end
		})

		local InvSection = GeneralTab:CreateSection({
			Name = "Stomp Inventory"
		})

		InvSection:AddSearchBox({
			Name = "Stomps:",
			Flag = "Dropdown_inv",
			List = dropdownContent,
			Callback = function(option)
				selectedOption = option
			end
		})
		InvSection:AddButton({
			Name = "Add Stomp",
			Flag = "Inv_Add",
			Callback = function()
				local inventory = Instance.new("StringValue")

				local placeholder = inventory:Clone()

				placeholder.Name = "T_"..selectedOption
				placeholder.Parent = game.Players.LocalPlayer.Information.Inventory
			end
		})

		InvSection:AddButton({
			Name = "Remove Stomp",
			Flag = "Inv_Remove",
			Side = "Right",
			Callback = function()
				game.Players.LocalPlayer.Information.Inventory:FindFirstChild("T_"..selectedOption):Destroy()
			end
		})

		InvSection:AddButton({
			Name = "Add all Stomps",
			Flag = "Inv_Remove",
			Callback = function()
				local inventory = Instance.new("StringValue")

				for i,v in pairs(game.ReplicatedStorage.KillFX:GetChildren()) do

					local placeholder = inventory:Clone()

					placeholder.Name = "T_"..v.Name
					placeholder.Parent = game.Players.LocalPlayer.Information.Inventory
				end
			end
		})

		InvSection:AddButton({
			Name = "Remove all Stomps",
			Flag = "Inv_Remove",
			Callback = function()

				for i,v in pairs(game.Players.LocalPlayer.Information.Inventory:GetChildren()) do
					v:Destroy()
				end
			end
		})

		local TagInv = GeneralTab:CreateSection({ -- tag inv
			Name = "Tag Inventory",
			Side = "Right"
		})

		TagInv:AddSearchBox({
			Name = "Tags:",
			Flag = "Dropdown_Tag",
			List = dropdownContent1,
			Callback = function(option)
				selectedOption1 = option
			end
		})

		TagInv:AddButton({
			Name = "Add Tag",
			Flag = "Tag_ADD",
			Callback = function()
				local inventory = Instance.new("StringValue")

				local placeholder = inventory:Clone()

				placeholder.Name = "T_"..selectedOption1
				placeholder.Parent = game.Players.LocalPlayer.Information.Inventory
			end
		})

		TagInv:AddButton({
			Name = "Remove Tag",
			Flag = "Tag_Inventory",
			Side = "Right",
			Callback = function()
				game.Players.LocalPlayer.Information.Inventory:FindFirstChild("T_"..selectedOption1):Destroy()
			end
		})

		TagInv:AddButton({
			Name = "Add all Tags",
			Flag = "Inv_Remove",
			Callback = function()
				local inventory = Instance.new("StringValue")

				for i,v in pairs(game.ReplicatedStorage.TagText:GetChildren()) do

					local placeholder = inventory:Clone()

					placeholder.Name = "T_"..v.Name
					placeholder.Parent = game.Players.LocalPlayer.Information.Inventory
				end
			end
		})

		TagInv:AddButton({
			Name = "Remove all Tags",
			Flag = "Inv_Remove",
			Callback = function()

				for i,v in pairs(game.Players.LocalPlayer.Information.Inventory:GetChildren()) do
					v:Destroy()
				end
			end
		})


		local ADMINSECTION = GeneralTab:CreateSection({
			Name = "Premium1"
		})

		local katana = false
		ADMINSECTION:AddToggle({
			Name = "Katana Power",
			Flag = "Katana_POWER",
			Callback = function()
				if (katana == true) then
					local katanaTool = game.Players.LocalPlayer.Character:FindFirstChild("[Katana]") or game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]")

					if (game.Players.LocalPlayer.Character:FindFirstChild("[KatanaOP]")) then
						loop88:Disconnect()
						game.Players.LocalPlayer.Character:FindFirstChild("[KatanaOP]").Parent = game.Players.LocalPlayer.Backpack

						wait(1)
						speedloop:Disconnect()
						MainCheck:Disconnect()
						keybindCheck:Disconnect()
						keybindCheckEnd:Disconnect()
						otherloop2:Disconnect()
						katana = false
						game.Players.LocalPlayer.Backpack:FindFirstChild("[KatanaOP]").Grip = CFrame.new(0.171508789, -0.114013672, -0.146911621, 0.998859823, -0.0154780475, -0.0451612584, 0.0453919843, 0.0148943067, 0.998858273, -0.0147877289, -0.99976927, 0.0155798793)
						game.Players.LocalPlayer.Backpack:FindFirstChild("[KatanaOP]").Name = "[Katana]"
						game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]").TextureId = "rbxassetid://1193410427"
					else
						loop88:Disconnect()
						game.Players.LocalPlayer.Backpack:FindFirstChild("[KatanaOP]").Parent = game.Players.LocalPlayer.Character

						wait(2)
						game.Players.LocalPlayer.Character:FindFirstChild("[KatanaOP]").Parent = game.Players.LocalPlayer.Backpack


						wait(1)
						loop88:Disconnect()
						speedloop:Disconnect()
						MainCheck:Disconnect()
						keybindCheck:Disconnect()
						keybindCheckEnd:Disconnect()
						otherloop2:Disconnect()
						katana = false
						game.Players.LocalPlayer.Backpack:FindFirstChild("[KatanaOP]").Grip = CFrame.new(0.171508789, -0.114013672, -0.146911621, 0.998859823, -0.0154780475, -0.0451612584, 0.0453919843, 0.0148943067, 0.998858273, -0.0147877289, -0.99976927, 0.0155798793)
						game.Players.LocalPlayer.Backpack:FindFirstChild("[KatanaOP]").Name = "[Katana]"
						game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]").TextureId = "rbxassetid://1193410427"
					end
				elseif (katana == false) then
					if not (game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]")) then
						NotificationLibrary:SendNotification("Info", "Buying Katana....", 6)
						wait(1)
						if not (game.Players.LocalPlayer.Information.Streaks.Value > 4 ) then
							NotificationLibrary:SendNotification("Error", "You don't have enough Streaks!", 6)
							return;
						end
						local Client = game.Players.LocalPlayer
						local RunService = game:GetService("RunService")

						function SetBypass(Value)
							if Value then
								if not Teleporting then
									Teleporting = true
								end
							else
								if Teleporting then
									Teleporting = false
								end
							end
						end

						RunService.Heartbeat:Connect(function()
							if Teleporting and Client.Character and Client.Character:FindFirstChildOfClass("Humanoid") and Client.Character:FindFirstChild("HumanoidRootPart") then
								local OldVel = Client.Character.HumanoidRootPart.Velocity

								Client.Character.HumanoidRootPart.Velocity = Vector3.new(-250, -250, -250)

								RunService.RenderStepped:Wait()

								Client.Character.HumanoidRootPart.Velocity = OldVel
							end
						end)

						function PurchaseOther(gun)
							local gun1 = gun
							local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
							SetBypass(true)
							task.wait(.16)
							Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
							task.wait(0.05)
							fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
							task.wait(0.25)
							Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
							fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
							task.wait(0.5)
							Client.Character.HumanoidRootPart.CFrame = ReturnPosition
							task.wait(.16)
							SetBypass(false)
						end

						PurchaseOther("[Katana] - $1200")
						wait(1)


						local Client = game.Players.LocalPlayer
						local katanaTool = game.Players.LocalPlayer.Character:FindFirstChild("[Katana]") or game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]")
						local CustomGrip = CFrame.new(0.150000006, 0.0250000004, -0.0500000007, 0.909815013, -0.236481041, 0.341047406, -0.414795399, -0.491481781, 0.765761316, -0.0134694558, -0.838166058, -0.545248747)



						local SlashCooldown = false
						local IsBarraging = false
						local RollCooldown = false


						local SpeedBoost = 0.25 --idk how much it has


						local Keybinds = {
							Slash = "T",
							Barrage = "B",
							Roll = "X",
							Run = "LeftShift",
						}


						local UserInputService = game:GetService("UserInputService")


						local Running = Instance.new("Animation", game.Players.LocalPlayer.Character)
						Running.AnimationId = "http://www.roblox.com/asset/?id=8402155723" -- Roblox dance emote
						local RunningTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Running)

						local Idle = Instance.new("Animation", game.Players.LocalPlayer.Character)
						Idle.AnimationId = "http://www.roblox.com/asset/?id=8401188888" -- Roblox dance emote
						local IdleTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Idle)


						local RunService = game:GetService("RunService")


						local RunAnimation = Instance.new("Animation")
						local IdleAnimation = Instance.new("Animation")
						local DashAnimation = Instance.new("Animation")
						local SlashAnimation = Instance.new("Animation")
						local BarrageAnimation = Instance.new("Animation")
						RunAnimation.AnimationId = "http://www.roblox.com/asset/?id=8402155723"
						IdleAnimation.AnimationId = "http://www.roblox.com/asset/?id=8401188888"
						DashAnimation.AnimationId = "http://www.roblox.com/asset/?id=7867694778"
						SlashAnimation.AnimationId = "http://www.roblox.com/asset/?id=8401153316"
						BarrageAnimation.AnimationId = "http://www.roblox.com/asset/?id=8406951035"

						local RunningTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(RunAnimation)
						local IdleTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(IdleAnimation)
						local DashTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(DashAnimation)
						local SlashTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(SlashAnimation)
						local BarrageTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(BarrageAnimation)

						local function animation(id)
							local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play() 
						end

						local Players = game:GetService("Players")
						local ReplicatedStorage = game:GetService("ReplicatedStorage")

						local function boombox(Method, id)
							local plr = Players.LocalPlayer
							local char = plr.Character
							local backpack = plr.Backpack

							local boombox = backpack:FindFirstChild("[Boombox]")
							if not boombox then
								boombox = backpack.ChildAdded:Wait()
								while boombox.Name ~= "[Boombox]" do
									boombox = backpack.ChildAdded:Wait()
								end
							end

							local tool = nil
							for _, v in ipairs(char:GetChildren()) do
								if v:IsA("Tool") then
									tool = v
									v.Parent = backpack
									break
								end
							end

							boombox.Parent = char
							ReplicatedStorage:WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = backpack

							if tool then
								tool.Parent = char
							end
						end

						function Slash()
							if GetState(Client, "Concious") and HasKatana() and (not SlashCooldown) then
								SlashCooldown = true

								spawn(function()
									for i = 1, 25 do
										GetKatana():Activate()
										GetKatana():Deactivate()
									end
								end)

								spawn(function()
									SlashTrack:Play()
									task.wait(0.5)
									SlashCooldown = false
								end)
								for _ = 1, 4 do
									boombox("Play", "4958430453")
									boombox("Remove")
									wait(0.5)
								end

								wait(1)
								boombox("Stop")
							end
						end

						function Roll()
							if GetState(Client, "Concious") and HasKatana() and (not RollCooldown) then
								RollCooldown = true

								spawn(function()
									DashTrack:Play()
									DashTrack:AdjustSpeed(1.1)
									task.wait(0.15)
									RollCooldown = false
								end)

								task.wait(0.2)

								if GetState(Client, "Concious") then
									Client.Character.HumanoidRootPart.Velocity = Vector3.new(0, 70, 0) + (Client.Character.HumanoidRootPart.CFrame.LookVector * 85)
								end
							end
						end

						function StopAnimation(Id)
							local Humanoid = Client.Character:FindFirstChildOfClass("Humanoid")
							for i, v in next, Humanoid:GetPlayingAnimationTracks() do
								if v.Animation.AnimationId == "http://www.roblox.com/asset/?id="..tonumber(Id) then
									v:Stop()
								end
							end
						end

						function GetState(Player, State)
							if Player ~= nil and Player and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("LowerTorso") then
								if Player.Character:FindFirstChild("I_LOADED_I") then
									local BodyEffects = Player.Character:FindFirstChild("I_LOADED_I")
									if State == "Alive" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) then
										return true
									elseif State == "Concious" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) and BodyEffects["K.O"].Value == false then
										return true
									elseif State == "Knocked" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) and BodyEffects["K.O"].Value == true then
										return true
									elseif State == "Dead" and Player.Character:FindFirstChild("DEBUG_DEAD") then
										return true
									end
								end
							end
						end

						function HasKatana()
							if GetState(Client, "Alive") and Client.Character:FindFirstChild("[Katana]") or Client.Character:FindFirstChild("[KatanaOP]") then
								return true
							end
						end

						function GetKatana()
							if HasKatana() and Client.Character:FindFirstChild("[Katana]") then
								return Client.Character:FindFirstChild("[Katana]")
							elseif HasKatana() and Client.Character:FindFirstChild("[KatanaOP]") then
								return Client.Character:FindFirstChild("[KatanaOP]")
							end
						end



						speedloop = katanaTool.Equipped:Connect(function()
							loop88 = game:GetService("RunService").Stepped:Connect(function()
								Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * SpeedBoost, Client.Character.Humanoid.MoveDirection.Y * SpeedBoost, Client.Character.Humanoid.MoveDirection.Z * SpeedBoost)
							end)
						end)


						MainCheck = RunService.Stepped:Connect(function()
							if HasKatana() then
								for i, v in next, Client.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
									if v.Animation.AnimationId == "rbxassetid://12847806069" or v.Name == "ToolNoneAnim" then
										v:Stop()
									end
								end
								GetKatana().Name = "[KatanaOP]"
								GetKatana().Grip = CustomGrip
								GetKatana().TextureId = ""
							end

							if GetState(Client, "Concious") and HasKatana() then
								if UserInputService:IsKeyDown(Enum.KeyCode[Keybinds["Run"]]) then
									RunningTrack:AdjustSpeed(1.45)
								else
									RunningTrack:AdjustSpeed(1.35)
								end

								if Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude > 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air and (not IsBarraging) then
									if (not RunningTrack.IsPlaying) then
										RunningTrack:Play()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								elseif Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude == 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air and (not IsBarraging) then
									if (not IdleTrack.IsPlaying) then
										IdleTrack:Play()
									end
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								end
								if Client.Character:FindFirstChild("Humanoid").FloorMaterial == Enum.Material.Air and (not IsBarraging) then
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								end
								if GetState(Client, "Concious") and HasKatana() and IsBarraging then
									if (not BarrageTrack.IsPlaying) then
										BarrageTrack:Play()
										BarrageTrack:AdjustSpeed(2)
									end
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
								end


								Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * SpeedBoost, Client.Character.Humanoid.MoveDirection.Y * SpeedBoost, Client.Character.Humanoid.MoveDirection.Z * SpeedBoost)
							else
								if RunningTrack.IsPlaying then
									RunningTrack:Stop()
								end
								if IdleTrack.IsPlaying then
									IdleTrack:Stop()
								end
								if BarrageTrack.IsPlaying then
									BarrageTrack:Stop()
								end
							end
						end)


						BarrageCheck = spawn(function()
							while task.wait(0.4) do
								if GetState(Client, "Concious") and HasKatana() and IsBarraging then
									for i = 1, 20 do
										GetKatana():Activate()
									end
								end
							end
						end)


						keybindCheck = UserInputService.InputBegan:Connect(function(Input, Typing)
							if Typing then return end

							if Input.KeyCode == Enum.KeyCode[Keybinds["Slash"]] then
								Slash()
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Barrage"]] then
								IsBarraging = true
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Roll"]] then
								Roll()
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Run"]] then
								SpeedBoost = 0.35
							end
						end)

						keybindCheckEnd = UserInputService.InputEnded:Connect(function(Input, Typing)
							if Typing then return end

							if Input.KeyCode == Enum.KeyCode[Keybinds["Barrage"]] then
								IsBarraging = false
								for i = 1, 20 do
									GetKatana():Deactivate()
									RunService.RenderStepped:Wait()
								end
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Run"]] then
								SpeedBoost = 0.25
							end
						end)





						otherloop2 = katanaTool.Unequipped:Connect(function()
							loop88:Disconnect()
						end)

						katana = true
						wait()
						game.Players.LocalPlayer.Backpack:WaitForChild("[Katana]").Grip = CustomGrip
						wait()
						game.Players.LocalPlayer.Backpack:WaitForChild("[Katana]").Parent = game.Players.LocalPlayer.Character
						NotificationLibrary:SendNotification("Info", "Equip Katana for special!", 6)

						pcall(function()
							repeat wait() until Client.Character.Humanoid.Health == 0 
							katana = false
							print("died")
						end)

						return;
					else
						local Client = game.Players.LocalPlayer
						local katanaTool = game.Players.LocalPlayer.Character:FindFirstChild("[Katana]") or game.Players.LocalPlayer.Backpack:FindFirstChild("[Katana]")
						local CustomGrip = CFrame.new(0.150000006, 0.0250000004, -0.0500000007, 0.909815013, -0.236481041, 0.341047406, -0.414795399, -0.491481781, 0.765761316, -0.0134694558, -0.838166058, -0.545248747)



						local SlashCooldown = false
						local IsBarraging = false
						local RollCooldown = false


						local SpeedBoost = 0.25 --idk how much it has


						local Keybinds = {
							Slash = "T",
							Barrage = "B",
							Roll = "X",
							Run = "LeftShift",
						}


						local UserInputService = game:GetService("UserInputService")


						local Running = Instance.new("Animation", game.Players.LocalPlayer.Character)
						Running.AnimationId = "http://www.roblox.com/asset/?id=8402155723" -- Roblox dance emote
						local RunningTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Running)

						local Idle = Instance.new("Animation", game.Players.LocalPlayer.Character)
						Idle.AnimationId = "http://www.roblox.com/asset/?id=8401188888" -- Roblox dance emote
						local IdleTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Idle)


						local RunService = game:GetService("RunService")


						local RunAnimation = Instance.new("Animation")
						local IdleAnimation = Instance.new("Animation")
						local DashAnimation = Instance.new("Animation")
						local SlashAnimation = Instance.new("Animation")
						local BarrageAnimation = Instance.new("Animation")
						RunAnimation.AnimationId = "http://www.roblox.com/asset/?id=8402155723"
						IdleAnimation.AnimationId = "http://www.roblox.com/asset/?id=8401188888"
						DashAnimation.AnimationId = "http://www.roblox.com/asset/?id=7867694778"
						SlashAnimation.AnimationId = "http://www.roblox.com/asset/?id=8401153316"
						BarrageAnimation.AnimationId = "http://www.roblox.com/asset/?id=8406951035"

						local RunningTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(RunAnimation)
						local IdleTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(IdleAnimation)
						local DashTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(DashAnimation)
						local SlashTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(SlashAnimation)
						local BarrageTrack = Client.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(BarrageAnimation)

						local function animation(id)
							local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
							animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
							local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
							animationTrack:Play() 
						end

						local Players = game:GetService("Players")
						local ReplicatedStorage = game:GetService("ReplicatedStorage")

						local function boombox(Method, id)
							local plr = Players.LocalPlayer
							local char = plr.Character
							local backpack = plr.Backpack

							local boombox = backpack:FindFirstChild("[Boombox]")
							if not boombox then
								boombox = backpack.ChildAdded:Wait()
								while boombox.Name ~= "[Boombox]" do
									boombox = backpack.ChildAdded:Wait()
								end
							end

							local tool = nil
							for _, v in ipairs(char:GetChildren()) do
								if v:IsA("Tool") then
									tool = v
									v.Parent = backpack
									break
								end
							end

							boombox.Parent = char
							ReplicatedStorage:WaitForChild("MainRemote"):FireServer(Method, id)
							boombox.Parent = backpack

							if tool then
								tool.Parent = char
							end
						end


						function Slash()
							if GetState(Client, "Concious") and HasKatana() and (not SlashCooldown) then
								SlashCooldown = true

								spawn(function()
									for i = 1, 25 do
										GetKatana():Activate()
										GetKatana():Deactivate()
									end
								end)

								spawn(function()
									SlashTrack:Play()
									task.wait(0.5)
									SlashCooldown = false
								end)
								for _ = 1, 4 do
									boombox("Play", "4958430453")
									boombox("Remove")
									wait(0.5)
								end

								wait(1)
								boombox("Stop")
							end
						end

						function Roll()
							if GetState(Client, "Concious") and HasKatana() and (not RollCooldown) then
								RollCooldown = true

								spawn(function()
									DashTrack:Play()
									DashTrack:AdjustSpeed(1.1)
									task.wait(0.15)
									RollCooldown = false
								end)

								task.wait(0.2)

								if GetState(Client, "Concious") then
									Client.Character.HumanoidRootPart.Velocity = Vector3.new(0, 70, 0) + (Client.Character.HumanoidRootPart.CFrame.LookVector * 85)
								end
							end
						end

						function StopAnimation(Id)
							local Humanoid = Client.Character:FindFirstChildOfClass("Humanoid")
							for i, v in next, Humanoid:GetPlayingAnimationTracks() do
								if v.Animation.AnimationId == "http://www.roblox.com/asset/?id="..tonumber(Id) then
									v:Stop()
								end
							end
						end

						function GetState(Player, State)
							if Player ~= nil and Player and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("LowerTorso") then
								if Player.Character:FindFirstChild("I_LOADED_I") then
									local BodyEffects = Player.Character:FindFirstChild("I_LOADED_I")
									if State == "Alive" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) then
										return true
									elseif State == "Concious" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) and BodyEffects["K.O"].Value == false then
										return true
									elseif State == "Knocked" and (not Player.Character:FindFirstChild("DEBUG_DEAD")) and BodyEffects["K.O"].Value == true then
										return true
									elseif State == "Dead" and Player.Character:FindFirstChild("DEBUG_DEAD") then
										return true
									end
								end
							end
						end

						function HasKatana()
							if GetState(Client, "Alive") and Client.Character:FindFirstChild("[Katana]") or Client.Character:FindFirstChild("[KatanaOP]") then
								return true
							end
						end

						function GetKatana()
							if HasKatana() and Client.Character:FindFirstChild("[Katana]") then
								return Client.Character:FindFirstChild("[Katana]")
							elseif HasKatana() and Client.Character:FindFirstChild("[KatanaOP]") then
								return Client.Character:FindFirstChild("[KatanaOP]")
							end
						end



						speedloop = katanaTool.Equipped:Connect(function()
							loop88 = game:GetService("RunService").Stepped:Connect(function()
								Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * SpeedBoost, Client.Character.Humanoid.MoveDirection.Y * SpeedBoost, Client.Character.Humanoid.MoveDirection.Z * SpeedBoost)
							end)
						end)


						MainCheck = RunService.Stepped:Connect(function()
							if HasKatana() then
								for i, v in next, Client.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
									if v.Animation.AnimationId == "rbxassetid://12847806069" or v.Name == "ToolNoneAnim" then
										v:Stop()
									end
								end
								GetKatana().Name = "[KatanaOP]"
								GetKatana().Grip = CustomGrip
								GetKatana().TextureId = ""
							end

							if GetState(Client, "Concious") and HasKatana() then
								if UserInputService:IsKeyDown(Enum.KeyCode[Keybinds["Run"]]) then
									RunningTrack:AdjustSpeed(1.45)
								else
									RunningTrack:AdjustSpeed(1.35)
								end

								if Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude > 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air and (not IsBarraging) then
									if (not RunningTrack.IsPlaying) then
										RunningTrack:Play()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								elseif Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude == 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air and (not IsBarraging) then
									if (not IdleTrack.IsPlaying) then
										IdleTrack:Play()
									end
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								end
								if Client.Character:FindFirstChild("Humanoid").FloorMaterial == Enum.Material.Air and (not IsBarraging) then
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
									if BarrageTrack.IsPlaying then
										BarrageTrack:Stop()
									end
								end
								if GetState(Client, "Concious") and HasKatana() and IsBarraging then
									if (not BarrageTrack.IsPlaying) then
										BarrageTrack:Play()
										BarrageTrack:AdjustSpeed(2)
									end
									if RunningTrack.IsPlaying then
										RunningTrack:Stop()
									end
									if IdleTrack.IsPlaying then
										IdleTrack:Stop()
									end
								end


								Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * SpeedBoost, Client.Character.Humanoid.MoveDirection.Y * SpeedBoost, Client.Character.Humanoid.MoveDirection.Z * SpeedBoost)
							else
								if RunningTrack.IsPlaying then
									RunningTrack:Stop()
								end
								if IdleTrack.IsPlaying then
									IdleTrack:Stop()
								end
								if BarrageTrack.IsPlaying then
									BarrageTrack:Stop()
								end
							end
						end)


						BarrageCheck = spawn(function()
							while task.wait(0.4) do
								if GetState(Client, "Concious") and HasKatana() and IsBarraging then
									for i = 1, 20 do
										GetKatana():Activate()
									end
								end
							end
						end)


						keybindCheck = UserInputService.InputBegan:Connect(function(Input, Typing)
							if Typing then return end

							if Input.KeyCode == Enum.KeyCode[Keybinds["Slash"]] then
								Slash()
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Barrage"]] then
								IsBarraging = true
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Roll"]] then
								Roll()
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Run"]] then
								SpeedBoost = 0.35
							end
						end)

						keybindCheckEnd = UserInputService.InputEnded:Connect(function(Input, Typing)
							if Typing then return end

							if Input.KeyCode == Enum.KeyCode[Keybinds["Barrage"]] then
								IsBarraging = false
								for i = 1, 20 do
									GetKatana():Deactivate()
									RunService.RenderStepped:Wait()
								end
							elseif Input.KeyCode == Enum.KeyCode[Keybinds["Run"]] then
								SpeedBoost = 0.25
							end
						end)





						otherloop2 = katanaTool.Unequipped:Connect(function()
							loop88:Disconnect()
						end)

						katana = true
						wait()
						game.Players.LocalPlayer.Backpack:WaitForChild("[Katana]").Grip = CustomGrip
						wait()
						game.Players.LocalPlayer.Backpack:WaitForChild("[Katana]").Parent = game.Players.LocalPlayer.Character
						NotificationLibrary:SendNotification("Info", "Equip Katana for special!", 6)

						pcall(function()
							repeat wait() until Client.Character.Humanoid.Health == 0 
							katana = false
							print("died")
						end)
					end
				end
			end
		})


		local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
		local RunService = game:GetService("RunService")

		local humanoid = character:WaitForChild("Humanoid")

		local function simulateMovement()
			local currentPosition = humanoid.RootPart.Position
			local targetPosition = currentPosition + Vector3.new(0, 0, 1) -- Move 10 studs forward
			humanoid:MoveTo(targetPosition)
		end

		local function boombox(Method, id)
			local plr = game.Players.LocalPlayer
			local char = plr.Character
			local boombox = plr.Backpack:WaitForChild("[Boombox]")

			boombox.Parent = char
			game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
			boombox.Parent = plr.Backpack
		end


		local oldidle = game:GetService("Players").LocalPlayer.Character.Animate.idle.Animation1
		oldidle:Clone().Parent = game.Lighting
		print("saved old idle | ID:", game.Lighting.Animation1.AnimationId)
		local oldrun = game:GetService("Players").LocalPlayer.Character.Animate.run.RunAnim
		oldrun:Clone().Parent = game.Lighting
		print("saved old run Anim | ID:", game.Lighting.RunAnim.AnimationId)


		local shadowrequirem = false
		ADMINSECTION:AddToggle({
			Name = "Shadow Requirem",
			Flag = "shadow_power",
			Callback = function()


				local Client = game.Players.LocalPlayer
				local character = Client.Character or Client.CharacterAdded:Wait()
				local humanoid = character.Humanoid

				local function animation(id)
					local animation = Instance.new("Animation", game.Players.LocalPlayer.Character)
					animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
					local animationTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)
					animationTrack:Play() 
				end

				local function boombox(Method, id)
					local plr = game.Players.LocalPlayer
					local char = plr.Character
					local boombox = plr.Backpack:WaitForChild("[Boombox]")

					boombox.Parent = char
					game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
					boombox.Parent = plr.Backpack
				end


				local Running = Instance.new("Animation", game.Players.LocalPlayer.Character)
				Running.AnimationId = "http://www.roblox.com/asset/?id=12841987282" -- Roblox dance emote
				local RunningTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Running)

				local Idle = Instance.new("Animation", game.Players.LocalPlayer.Character)
				Idle.AnimationId = "http://www.roblox.com/asset/?id=8662201039" -- Roblox dance emote
				local IdleTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Idle)

				if (shadowrequirem == true) then
					loop11:Disconnect()
					loop88:Disconnect()
					if RunningTrack.IsPlaying then
						RunningTrack:Stop()
					end
					if IdleTrack.IsPlaying then
						IdleTrack:Stop()
					end

					for i, v in next, humanoid:GetPlayingAnimationTracks() do
						v:Stop()
					end
					print("alr")
					boombox("Stop")
					shadowrequirem = false
					print(shadowrequirem)
					return;
				end

				local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
				local Client = game.Players.LocalPlayer




				loop11 = game:GetService("RunService").Stepped:Connect(function()
					if Client.Character and Client.Character:FindFirstChildOfClass("Humanoid") then
						for i, v in next, Client.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
							if v.Animation.AnimationId == "rbxassetid://12847806069" or v.Name == "ToolNoneAnim" then
								v:Stop()
							end
						end
						if Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude > 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
							if not RunningTrack.IsPlaying then
								RunningTrack:Play()
								RunningTrack:AdjustSpeed(1.1)
								boombox("Play", "9083849830")
								boombox("Remove")
							end
							if IdleTrack.IsPlaying then
								IdleTrack:Stop()
							end
						elseif Client.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude == 0 and Client.Character:FindFirstChild("Humanoid").FloorMaterial ~= Enum.Material.Air then
							if not IdleTrack.IsPlaying then
								IdleTrack:Play()
								boombox("Play", "12863624456")
								boombox("Remove")
							end
							if RunningTrack.IsPlaying then
								RunningTrack:Stop()
							end
						end
						if Client.Character:FindFirstChild("Humanoid").FloorMaterial == Enum.Material.Air then
							if RunningTrack.IsPlaying then
								RunningTrack:Stop()
								boombox("Stop")
							end
							if IdleTrack.IsPlaying then
								IdleTrack:Stop()
								boombox("Stop")
							end
						end
					else
						if RunningTrack.IsPlaying then
							RunningTrack:Stop()
						end
						if IdleTrack.IsPlaying then
							IdleTrack:Stop()
						end
					end
				end)

				loop88 = game:GetService("RunService").Stepped:Connect(function()
					Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * 0.2, Client.Character.Humanoid.MoveDirection.Y *0.2, Client.Character.Humanoid.MoveDirection.Z * 0.2)
				end)


				shadowrequirem = true
			end
		})

		local flashtarget = ''
		ADMINSECTION:AddTextbox({
			Name = "Target:",
			Flag = "target_flash",
			Callback = function(target)
				for i, v in pairs(getPlayer(target)) do
					flashtarget = v.Name
				end
			end
		})

		ADMINSECTION:AddButton({
			Name = "Flash",
			Flag = "flash_target",
			Callback = function()
				if not (game.Players.LocalPlayer.Backpack:FindFirstChild("[Flashbang]")) then
					local Client = game.Players.LocalPlayer
					local RunService = game:GetService("RunService")

					function SetBypass(Value)
						if Value then
							if not Teleporting then
								Teleporting = true
							end
						else
							if Teleporting then
								Teleporting = false
							end
						end
					end

					RunService.Heartbeat:Connect(function()
						if Teleporting and Client.Character and Client.Character:FindFirstChildOfClass("Humanoid") and Client.Character:FindFirstChild("HumanoidRootPart") then
							local OldVel = Client.Character.HumanoidRootPart.Velocity

							Client.Character.HumanoidRootPart.Velocity = Vector3.new(-250, -250, -250)

							RunService.RenderStepped:Wait()

							Client.Character.HumanoidRootPart.Velocity = OldVel
						end
					end)

					function PurchaseOther(gun)
						local gun1 = gun
						local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
						SetBypass(true)
						task.wait(.16)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
						task.wait(0.05)
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
						task.wait(0.25)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
						task.wait(0.5)
						Client.Character.HumanoidRootPart.CFrame = ReturnPosition
						task.wait(.16)
						SetBypass(false)
					end

					PurchaseOther("[Flashbang] - $550")

					wait(1)
					local tool = "[Flashbang]"
					local evidence = "Flashbang"

					local Players = game:GetService("Players")
					local Workspace = game:GetService("Workspace")
					local Client = Players.LocalPlayer

					function Flash()
						local target = flashtarget
						local targetPOS = game.Players[target].Character.HumanoidRootPart.Position
						print(target)

						Client.Character.Humanoid:UnequipTools()
						Client.Backpack:FindFirstChild(tool).Parent = Client.Character

						task.delay(0.3, function()
							local RPG = Client.Character:FindFirstChild(tool)
							local Ignored = Workspace:FindFirstChild("Ignored")

							RPG:Activate()
							repeat task.wait() until Ignored:FindFirstChild(evidence)

							local Launcher = Ignored:WaitForChild(evidence)
							Launcher.Anchored = false
							Launcher.Name = "1"

							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = Launcher
							BP.MaxForce = Vector3.new("inf", "inf", "inf")
							BP.P = 1500
							BP.D = 35
							BP.Position = targetPOS + Vector3.new(0, 5, 0)



							Loop = game:GetService("RunService").Heartbeat:Connect(function()
								BP.Position = targetPOS
							end)


						end)
					end

					Flash()
					print(flashtarget)

					wait(2)
					game.Workspace.Camera.CameraSubject = game.Players[flashtarget].Character.Humanoid
					wait(4)
					game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
				else
					local tool = "[Flashbang]"
					local evidence = "Flashbang"

					local Players = game:GetService("Players")
					local Workspace = game:GetService("Workspace")
					local Client = Players.LocalPlayer

					function Flash()
						local target = flashtarget
						local targetPOS = game.Players[target].Character.HumanoidRootPart.Position
						print(target)

						Client.Character.Humanoid:UnequipTools()
						Client.Backpack:FindFirstChild(tool).Parent = Client.Character

						task.delay(0.3, function()
							local RPG = Client.Character:FindFirstChild(tool)
							local Ignored = Workspace:FindFirstChild("Ignored")

							RPG:Activate()
							repeat task.wait() until Ignored:FindFirstChild(evidence)

							local Launcher = Ignored:WaitForChild(evidence)
							Launcher.Anchored = false
							Launcher.Name = "1"

							local BP = Instance.new("BodyPosition")
							BP.Name = "N/A_S"
							BP.Parent = Launcher
							BP.MaxForce = Vector3.new("inf", "inf", "inf")
							BP.P = 1500
							BP.D = 35
							BP.Position = targetPOS + Vector3.new(0, 5, 0)



							Loop = game:GetService("RunService").Heartbeat:Connect(function()
								BP.Position = targetPOS
							end)
						end)
					end

					Flash()
					print(flashtarget)

					wait(2)
					game.Workspace.Camera.CameraSubject = game.Players[flashtarget].Character.Humanoid
					wait(4)
					game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
				end
			end
		})

		ADMINSECTION:AddLabel({
			Text = "-- SELF STUFF --"
		})

		ADMINSECTION:AddButton({
			Name = "SCP",
			Flag = "Suicide",
			Callback = function()
				local Ply = game:GetService("Players").LocalPlayer
local chr = Ply.Character

local SpeedBoost = 0.22 --idk how much it has

local Keybinds = {
	Run = "C",
	Faced = "T",
	Static = "Q"
}

chr.Archivable = true
local temp = chr:Clone()
temp.Name = ""
temp.Humanoid.DisplayName = ""
temp.Parent = workspace.Characters
for _,v in pairs(temp:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Color = Color3.fromRGB(0,0,0)
		v.Handle.Material = Enum.Material.ForceField
	end
end
for _,v in pairs(temp:GetChildren()) do
	if v:IsA("BasePart") then
		v.Color = Color3.fromRGB(0,0,0)
		v.Material = Enum.Material.ForceField
	end
end
local Idle = Instance.new("Animation", temp)
Idle.AnimationId = "http://www.roblox.com/asset/?id=4686925579" -- Roblox dance emote
local IdleTrack = temp.Humanoid:LoadAnimation(Idle)
IdleTrack:Play()

local function boombox(Method, id)
	local plr = game.Players.LocalPlayer
	local char = plr.Character
	local boombox = plr.Backpack:WaitForChild("[Boombox]")

	boombox.Parent = char
	game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
	boombox.Parent = plr.Backpack
end
for i, v in next, Ply.Character.Humanoid:GetPlayingAnimationTracks() do
	v:Stop()
end
Ply.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://4686925579"
Ply.Character.Animate.idle.Animation2.AnimationId = "rbxassetid://4686925579"
Ply.Character.Animate.walk.WalkAnim.AnimationId   = "rbxassetid://1083178339"
Ply.Character.Animate.run.RunAnim.AnimationId     = "rbxassetid://1083216690"

local Client = game.Players.LocalPlayer


loop88 = game:GetService("RunService").Stepped:Connect(function()
	Client.Character.HumanoidRootPart.CFrame = Client.Character.HumanoidRootPart.CFrame + Vector3.new(Client.Character.Humanoid.MoveDirection.X * SpeedBoost, Client.Character.Humanoid.MoveDirection.Y * SpeedBoost, Client.Character.Humanoid.MoveDirection.Z * SpeedBoost)
end)

SpeedBoost = 0

local Mouse = Ply:GetMouse()

loop1 = game:GetService("UserInputService").InputBegan:Connect(function(Input, Typing)
	if Typing then return end
	
	if Input.KeyCode == Enum.KeyCode[Keybinds["Run"]] then
		boombox("Play", 343430735)
		boombox("Remove")
		SpeedBoost = 0.3
	elseif Input.KeyCode == Enum.KeyCode[Keybinds["Faced"]] then
		boombox("Play", 4826834228)
		boombox("Remove")
		SpeedBoost = 0
	elseif Input.KeyCode == Enum.KeyCode[Keybinds["Static"]] then
		boombox("Play", 153698726)
		boombox("Remove")
		SpeedBoost = 0
	end
end)

local Client = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

function SetBypass(Value)
	if Value then
		if not Teleporting then
			Teleporting = true
		end
	else
		if Teleporting then
			Teleporting = false
		end
	end
end

RunService.Heartbeat:Connect(function()
	if Teleporting and Client.Character and Client.Character:FindFirstChildOfClass("Humanoid") and Client.Character:FindFirstChild("HumanoidRootPart") then
		local OldVel = Client.Character.HumanoidRootPart.Velocity

		Client.Character.HumanoidRootPart.Velocity = Vector3.new(-250, -250, -250)
		RunService.RenderStepped:Wait()

		Client.Character.HumanoidRootPart.Velocity = OldVel
	end
end)

local currentposition = Client.Character.HumanoidRootPart.CFrame

function PurchaseOther(gun)
	local gun1 = gun
	local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
	SetBypass(true)
	task.wait(.16)
	Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
	local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
	task.wait(0.05)
	fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
	task.wait(0.25)
	Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[gun].Head.CFrame
	local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
	fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[gun].ClickDetector, 0)
	task.wait(0.5)
	Client.Character.HumanoidRootPart.CFrame = ReturnPosition
	task.wait(.16)
	SetBypass(false)
end

function PurchaseArmor(gun)
	local gun1 = gun
	SetBypass(true)
	task.wait(.16)
	Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Armor[gun].Head.CFrame
	task.wait(0.05)
	fireclickdetector(game:GetService("Workspace").Ignored.Shop.Armor[gun].ClickDetector, 0)
	task.wait(0.25)
	Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Armor[gun].Head.CFrame
	fireclickdetector(game:GetService("Workspace").Ignored.Shop.Armor[gun].ClickDetector, 0)
	SetBypass(false)
end

workspace.Camera.CameraType = Enum.CameraType.Scriptable
PurchaseOther("[Mask] - $25")
PurchaseArmor("[High Armor] - $550")

local hidehide = Ply.Backpack:WaitForChild("[Mask]")
hidehide.Parent = Ply.Character
hidehide:Activate()
hidehide.Parent = Ply.Backpack
wait()
SetBypass(true)
task.wait(0.5)
Client.Character.HumanoidRootPart.CFrame = currentposition
temp:Destroy()
task.wait(.16)
SetBypass(false)


boombox("Play", 153698726)
boombox("Remove")
workspace.Camera.CameraType = Enum.CameraType.Track

ham = Mouse.Button1Down:Connect(function()
	local Target = Mouse.Target
	if game.Players:FindFirstChild(Target.Parent.Name) ~= nil then 
		local a = game.Players:GetPlayerFromCharacter(Target.Parent)
		print(a.Name)
	end
end)

game.Players.LocalPlayer.chatted:Connect(function(chatted)
	local abc = chatted:split(" ")
	if abc[1] == "!bam" then
		loop1:Disconnect()
		ham:Disconnect()
		loop88:Disconnect()
		warn("disconnect")
	end
end)
			end,
		})

		local adminfly = false
		ADMINSECTION:AddButton({
			Name = "Admin Fly",
			Flag = "The Admin Fly",
			Callback = function()
				if adminfly == true then
					return
				end

				local fly = Instance.new("ScreenGui")
				local Frame = Instance.new("Frame")
				local TextButton = Instance.new("TextButton")
				local UIPadding = Instance.new("UIPadding")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local scale_slider = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local effect = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local UIStroke_3 = Instance.new("UIStroke")
				local button = Instance.new("TextButton")
				local UIPadding_2 = Instance.new("UIPadding")
				local bar = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				local effect_2 = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local button_2 = Instance.new("TextButton")
				local UIGradient = Instance.new("UIGradient")
				local display = Instance.new("TextButton")
				local UIGradient_2 = Instance.new("UIGradient")

				--Properties:

				fly.Name = "fly"
				fly.Parent = game.CoreGui
				fly.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

				Frame.Parent = fly
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Frame.Position = UDim2.new(0.0817563832, 0, 0.902163684, 0)
				Frame.Size = UDim2.new(0.106579803, 0, 0.0394702144, 0)
				Frame.ZIndex = 2

				TextButton.Parent = Frame
				TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextButton.Size = UDim2.new(1, 0, 1, 0)
				TextButton.Font = Enum.Font.Unknown
				TextButton.Text = "Press here or T to fly"
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextScaled = true
				TextButton.TextSize = 14.000
				TextButton.TextWrapped = true

				UIPadding.Parent = TextButton
				UIPadding.PaddingBottom = UDim.new(0.200000003, 0)
				UIPadding.PaddingLeft = UDim.new(0.100000001, 0)
				UIPadding.PaddingRight = UDim.new(0.100000001, 0)
				UIPadding.PaddingTop = UDim.new(0.200000003, 0)

				UICorner.CornerRadius = UDim.new(0.300000012, 0)
				UICorner.Parent = Frame

				UIStroke.ApplyStrokeMode = "Border"
				UIStroke.Color = Color3.fromRGB(190,190,190)
				UIStroke.LineJoinMode = "Round"
				UIStroke.Thickness = 3
				UIStroke.Parent = Frame

				scale_slider.Name = "scale_slider"
				scale_slider.Parent = Frame
				scale_slider.AnchorPoint = Vector2.new(0.5, 0.5)
				scale_slider.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
				scale_slider.Position = UDim2.new(0.495364159, 0, -0.673600912, 0)
				scale_slider.Size = UDim2.new(0.997492015, 0, 0.853373289, 0)
				scale_slider.ZIndex = 3

				UICorner_2.CornerRadius = UDim.new(1, 0)
				UICorner_2.Parent = scale_slider

				UIStroke_2.ApplyStrokeMode = "Contextual"
				UIStroke_2.Color = Color3.fromRGB(79,79,79)
				UIStroke_2.LineJoinMode = "Round"
				UIStroke_2.Thickness = 2
				UIStroke_2.Parent = scale_slider

				effect.Name = "effect"
				effect.Parent = scale_slider
				effect.AnchorPoint = Vector2.new(0.5, 0.5)
				effect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				effect.BackgroundTransparency = 1.000
				effect.Position = UDim2.new(0.5, 0, 0.5, 0)
				effect.Size = UDim2.new(1, 0, 1, 0)
				effect.ZIndex = 2

				UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
				UICorner_3.Parent = effect

				button.Name = "button"
				button.Parent = scale_slider
				button.AnchorPoint = Vector2.new(0.5, 0.5)
				button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				button.BackgroundTransparency = 1.000
				button.Position = UDim2.new(0.5, 0, 0.5, 0)
				button.Size = UDim2.new(1, 0, 1, 0)
				button.ZIndex = 5
				button.Font = Enum.Font.Unknown
				button.Text = "Speed: 1.5"
				button.TextColor3 = Color3.fromRGB(255, 255, 255)
				button.TextScaled = true
				button.TextSize = 14.000
				button.TextWrapped = true

				UIPadding_2.Parent = button
				UIPadding_2.PaddingBottom = UDim.new(0.100000001, 0)
				UIPadding_2.PaddingTop = UDim.new(0.100000001, 0)

				bar.Name = "bar"
				bar.Parent = scale_slider
				bar.AnchorPoint = Vector2.new(0, 0.5)
				bar.BackgroundColor3 = Color3.fromRGB(11, 0, 134)
				bar.Position = UDim2.new(-0.00277185161, 0, 0.50000006, 0)
				bar.Size = UDim2.new(0.310405254, 0, 1, 0)
				bar.ZIndex = 4

				UICorner_4.CornerRadius = UDim.new(1, 0)
				UICorner_4.Parent = bar

				UIStroke_3.ApplyStrokeMode = "Contextual"
				UIStroke_3.Color = Color3.fromRGB(79,79,79)
				UIStroke_3.LineJoinMode = "Round"
				UIStroke_3.Thickness = 2
				UIStroke_3.Parent = bar

				effect_2.Name = "effect"
				effect_2.Parent = bar
				effect_2.AnchorPoint = Vector2.new(0.5, 0.5)
				effect_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				effect_2.BackgroundTransparency = 1.000
				effect_2.Position = UDim2.new(0.5, 0, 0.5, 0)
				effect_2.Size = UDim2.new(1, 0, 1, 0)
				effect_2.ZIndex = 2

				UICorner_5.CornerRadius = UDim.new(0.100000001, 0)
				UICorner_5.Parent = effect_2

				button_2.Name = "button"
				button_2.Parent = bar
				button_2.AnchorPoint = Vector2.new(0.5, 0.5)
				button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				button_2.BackgroundTransparency = 1.000
				button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
				button_2.Size = UDim2.new(1, 0, 1, 0)
				button_2.ZIndex = 3
				button_2.Font = Enum.Font.SourceSans
				button_2.Text = ""
				button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
				button_2.TextSize = 14.000

				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(98, 98, 98))}
				UIGradient.Rotation = 90
				UIGradient.Parent = bar

				display.Name = "display"
				display.Parent = bar
				display.AnchorPoint = Vector2.new(0.5, 0.5)
				display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				display.BackgroundTransparency = 0.500
				display.Position = UDim2.new(1.00000012, 0, 0.50000006, 0)
				display.ZIndex = 3
				display.Font = Enum.Font.SourceSans
				display.Text = ""
				display.TextColor3 = Color3.fromRGB(0, 0, 0)
				display.TextSize = 14.000

				UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(98, 98, 98))}
				UIGradient_2.Rotation = 90
				UIGradient_2.Parent = scale_slider



				local lplayer = game:GetService('Players').LocalPlayer
				local ts = game:GetService('TweenService')
				local uis = game:GetService('UserInputService')

				local mouse = lplayer:GetMouse()

				local func = {}

				local function play_animation(animation_id)


					local animation = Instance.new('Animation')
					animation.AnimationId = string.format('http://www.roblox.com/asset/?id=%s', animation_id)

					local anim = lplayer.Character.Humanoid:LoadAnimation(animation)

					return anim
				end

				for i, v in pairs(lplayer.PlayerGui:GetChildren()) do
					if v.Name == 'fly' and v:FindFirstChild('core_fly') and v ~= game.CoreGui.fly:WaitForChild("Frame") then
						v:Destroy()
					end
				end

				local body_frame = game.CoreGui:WaitForChild("fly").Frame

				local scale_slider = body_frame:WaitForChild('scale_slider')

				local fly_state = false

				local flying = false
				local mouse_down = false
				local equipped = false
				local fly_part = nil
				local gyro = nil
				local pos = nil

				local fly_speed = 1.5

				local anim = nil
				local hover_anim = nil

				local scale_hold = false

				local function decimal(int)

					return tonumber(string.format('%.'..(1)..'f', int))
				end

				local function update_slider(slider, custom)
					local mouse_location = uis:GetMouseLocation()
					local relative_pos = mouse_location - slider.AbsolutePosition
					local percentage = math.clamp(relative_pos.X / slider.AbsoluteSize.X, 0, 1)
					if custom then
						percentage = (custom / 10) * 5
					end
					ts:Create(slider:WaitForChild('bar'), TweenInfo.new(.15), {Size = UDim2.new(percentage, 0, 1, 0)}):Play()
					local calculated = (custom or tonumber(decimal(percentage * 10)))
					fly_speed = calculated
					return calculated
				end

				scale_slider:WaitForChild('bar').Size = UDim2.new(.35, 0, 1, 0)
				scale_slider:WaitForChild('button').Text = string.format('Speed: %s', fly_speed)

				scale_slider:WaitForChild('bar'):WaitForChild('button').MouseButton1Down:Connect(function()
					scale_hold = true
					local new_update = update_slider(scale_slider)
					scale_slider:WaitForChild('button').Text = string.format('Speed: %s', new_update)
				end)

				scale_slider:WaitForChild('button').MouseButton1Down:Connect(function()
					scale_hold = true
					mouse_down = false
					local new_update = update_slider(scale_slider)
					scale_slider:WaitForChild('button').Text = string.format('Speed: %s', new_update)
				end)

				mouse.Move:Connect(function()
					if scale_hold == true then
						local new_update = update_slider(scale_slider)
						scale_slider:WaitForChild('button').Text = string.format('Speed: %s', new_update)
					end
				end)

				local function fly(state)
					if state == true then
						local humanoid = lplayer.Character:FindFirstChildOfClass('Humanoid')

						equipped = true
						anim = play_animation(14776776437)

						hover_anim = play_animation(14776792514)

						hover_anim:Play()

						fly_part = Instance.new('Part', workspace)
						fly_part.Name = 'shazam_asset'
						fly_part.Size = Vector3.new(.01, .01, .01)
						fly_part.Transparency = 1
						fly_part.CanCollide = false
						local torso = (lplayer.Character:FindFirstChild('LowerTorso') or lplayer.Character:FindFirstChild('Torso'))
						local weld = Instance.new('Weld', fly_part)
						weld.Part0 = fly_part
						weld.Part1 = torso
						weld.C0 = CFrame.new(0, 0, 0)

						pos = Instance.new('BodyPosition', fly_part)

						gyro = Instance.new('BodyGyro', fly_part)
						pos.Name = 'cx_bp'

						pos.D = 200

						pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						pos.Position = fly_part.Position
						gyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
						gyro.CFrame = workspace.CurrentCamera.CFrame
						gyro.D = 200
						task.spawn(function()
							repeat
								if mouse_down == false then
									gyro.CFrame = mouse.Hit
									if anim.IsPlaying == true then
										anim:Stop()
									elseif hover_anim.IsPlaying == false then
										hover_anim:Play()
									end
								end
								pcall(function()
									humanoid.PlatformStand = true
								end)
								task.wait()
							until equipped == false or flying == false
						end)
						task.spawn(function()
							repeat
								if gyro.P == 0 then
									gyro.P = 3000
								end
								local new = (gyro.CFrame - gyro.CFrame.Position) + pos.Position

								local moving = false

								local able_rotate = true

								local rad_num = -75


								if lplayer.Character ~= nil and mouse_down == true then

									if hover_anim ~= nil and hover_anim.IsPlaying == true then
										hover_anim:Stop()
									end
									new = new + (mouse.Hit.LookVector * fly_speed)
									gyro.CFrame = CFrame.new(gyro.CFrame.Position, mouse.Hit.Position)
									if anim.IsPlaying == false and flying == true and mouse_down == true then
										anim:Play()
										if hover_anim.IsPlaying == true then
											hover_anim:Stop()
										end
									end


									pos.Position = new.Position


									gyro.CFrame = mouse.Hit * CFrame.Angles(math.rad(rad_num), 0, 0)
								end
								task.wait()
							until flying == false
						end)



						--local input_ended = uis.InputEnded:Connect(function(key, gameProcessed)
						--	if key.UserInputType == Enum.UserInputType.MouseButton1 then
						--		flying = false
						--		mouse_down = false
						--		if anim ~= nil and anim.IsPlaying == true then
						--			anim:Stop()
						--			if hover_anim.IsPlaying == false then
						--				hover_anim:Play()
						--			end
						--		end
						--	end
						--end)

						--table.insert(func, input_ended)
					else
						local humanoid = lplayer.Character:FindFirstChildOfClass('Humanoid')
						equipped = false
						for i, v in pairs(func) do
							pcall(function()
								v:Disconnect()
							end)
							table.remove(func, i)
						end
						fly_part:Destroy()
						pcall(function()
							humanoid.PlatformStand = false
						end)
						if anim ~= nil then
							anim:Stop()
						end
						if hover_anim ~= nil then
							hover_anim:Stop()
						end

					end
				end

				body_frame:WaitForChild('TextButton').MouseButton1Click:Connect(function()
					fly_state = not fly_state
					if fly_state == true then
						ts:Create(game.CoreGui.fly:WaitForChild("Frame"):WaitForChild('UIStroke'), TweenInfo.new(.35), {Color = Color3.fromRGB(0, 190, 0)}):Play()
					else
						ts:Create(game.CoreGui.fly:WaitForChild("Frame"):WaitForChild('UIStroke'), TweenInfo.new(.35), {Color = Color3.fromRGB(190, 190, 190)}):Play()
					end
					flying = fly_state
					fly(fly_state)
					boombox("Play", 2952274135)
					boombox("Remove")
					wait(0.87)
					boombox("Stop")
				end)

				uis.InputBegan:Connect(function(key, gameProcessed)
					if key.UserInputType == Enum.UserInputType.MouseButton1 or key.UserInputType == Enum.UserInputType.Touch then
						local guis = (lplayer.PlayerGui:GetGuiObjectsAtPosition(mouse.X, mouse.Y))
						local count = (0)
						for i, v in pairs(guis) do
							local add = (true)
							if (v:IsA('Frame') and v.Transparency == 1) then
								add = (false)
							elseif (v.Visible == false) then
								add = (false)
							elseif ((v:IsA('ImageLabel') or v:IsA('ImageButton')) and (v.Transparency == 1 and (v.ImageTransparency == 1))) then
								add = (false)
							elseif ((v:IsA('TextButton') or v:IsA('TextLabel') or v:IsA('TextBox')) and (v.Transparency == 1 and (v.TextTransparency == 1))) then
								add = (false)
							end
							local ancestor = (v:FindFirstAncestorOfClass('ScreenGui'))
							if (ancestor and ancestor.Enabled == false) then
								add = (false)
							end
							if (add == true) then
								count += 1
							end
						end
						if (scale_hold == false and count == 0) then
							mouse_down = true
						end
					end
					if gameProcessed then
						return
					end
					if key.KeyCode == Enum.KeyCode.C then
						fly_state = not fly_state
						if fly_state == true then
							ts:Create(game.CoreGui.fly:WaitForChild("Frame"):WaitForChild('UIStroke'), TweenInfo.new(.35), {Color = Color3.fromRGB(0, 190, 0)}):Play()
						else
							ts:Create(game.CoreGui.fly:WaitForChild("Frame"):WaitForChild('UIStroke'), TweenInfo.new(.35), {Color = Color3.fromRGB(190, 190, 190)}):Play()
						end
						flying = fly_state
						fly(fly_state)
						boombox("Play", 2952274135)
						boombox("Remove")
						wait(0.87)
						boombox("Stop")
					end


				end)

				uis.InputEnded:Connect(function(key, gameProcessed)
					if key.UserInputType == Enum.UserInputType.MouseButton1 or key.UserInputType == Enum.UserInputType.Touch then
						mouse_down = false
						scale_hold = false
					end
					if gameProcessed then
						return
					end

				end)
			end,

			adminfly = true
		})


		local selectedItem = ''

		local GunSelected = false
		local ArmorSelected = false
		local OtherSelected = false

		local BuyItemSection = OthersTab:CreateSection({ -- tag inv
			Name = "Buy Item"
		})

		BuyItemSection:AddButton({
			Name = "Buy",
			Flag = "rgrg",
			Callback = function()
				local Client = game.Players.LocalPlayer
				local RunService = game:GetService("RunService")

				function SetBypass(Value)
					if Value then
						if not Teleporting then
							Teleporting = true
						end
					else
						if Teleporting then
							Teleporting = false
						end
					end
				end

				RunService.Heartbeat:Connect(function()
					if Teleporting and Client.Character and Client.Character:FindFirstChildOfClass("Humanoid") and Client.Character:FindFirstChild("HumanoidRootPart") then
						local OldVel = Client.Character.HumanoidRootPart.Velocity

						Client.Character.HumanoidRootPart.Velocity = Vector3.new(-250, -250, -250)

						RunService.RenderStepped:Wait()

						Client.Character.HumanoidRootPart.Velocity = OldVel
					end
				end)

				function PurchaseGun()
					if (GunSelected == true and not OtherSelected and not ArmorSelected ~= nil) then
						local item = selectedItem
						local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
						SetBypass(true)
						task.wait(.16)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Guns[item].Head.CFrame
						task.wait(0.05)
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Guns[item].ClickDetector, 0)
						task.wait(0.25)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Guns[item].Head.CFrame
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Guns[item].ClickDetector, 0)
						task.wait(0.5)
						Client.Character.HumanoidRootPart.CFrame = ReturnPosition
						task.wait(.16)
						SetBypass(false)
					end

					if (ArmorSelected == true and not OtherSelected  and not GunSelected ~= nil) then
						local item = selectedItem
						local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
						SetBypass(true)
						task.wait(.16)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Armor[item].Head.CFrame
						task.wait(0.05)
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Armor[item].ClickDetector, 0)
						task.wait(0.25)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Armor[item].Head.CFrame
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Armor[item].ClickDetector, 0)
						task.wait(0.5)
						Client.Character.HumanoidRootPart.CFrame = ReturnPosition
						task.wait(.16)
						SetBypass(false)
					end

					if (OtherSelected == true and not ArmorSelected and not GunSelected ~= nil) then
						local item = selectedItem
						local ReturnPosition = Client.Character.HumanoidRootPart.CFrame
						SetBypass(true)
						task.wait(.16)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[item].Head.CFrame
						task.wait(0.05)
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[item].ClickDetector, 0)
						task.wait(0.25)
						Client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop.Others[item].Head.CFrame
						fireclickdetector(game:GetService("Workspace").Ignored.Shop.Others[item].ClickDetector, 0)
						task.wait(0.5)
						Client.Character.HumanoidRootPart.CFrame = ReturnPosition
						task.wait(.16)
						SetBypass(false)
					end
				end

				PurchaseGun()
			end
		})


		local guns = game:GetService("Workspace").Ignored.Shop.Guns:GetChildren()
		local armor = game:GetService("Workspace").Ignored.Shop.Armor:GetChildren()
		local other =  game:GetService("Workspace").Ignored.Shop.Others:GetChildren()

		local dropdownGUNS = {}
		for _, obj in ipairs(guns) do
			table.insert(dropdownGUNS, obj.Name)
		end

		local dropdownARMOR = {}
		for _, obj in ipairs(armor) do
			table.insert(dropdownARMOR, obj.Name)
		end
		local dropdownOTHER = {}
		for _, obj in ipairs(other) do
			table.insert(dropdownOTHER, obj.Name)
		end


		BuyItemSection:AddDropdown({
			Name = "Item Type:",
			Flag = "item_type",
			List = {
				"Gun",
				"Armor",
				"Other"
			},
			Callback = function(List)
				if (List == "Gun") then
					GunSelected = true
					ArmorSelected = false
					OtherSelected = false
					print(List)
				elseif (List == "Armor") then
					ArmorSelected = true
					GunSelected = false
					OtherSelected = false
					print(List)
				elseif (List == "Other") then
					ArmorSelected = false
					GunSelected = false
					OtherSelected = true
					print(List)
				end
			end
		})

		BuyItemSection:AddDropdown({
			Name = "Guns:",
			Flag = "armor_list",
			List = dropdownGUNS,
			Callback = function(List)
				selectedItem = List
				print(List)
			end
		})

		BuyItemSection:AddDropdown({
			Name = "Armor:",
			Flag = "armor_list",
			List = dropdownARMOR,
			Callback = function(List)
				selectedItem = List
				print(List)
			end
		})


		BuyItemSection:AddDropdown({
			Name = "Other:",
			Flag = "other_list",
			List = dropdownOTHER,
			Callback = function(List)
				selectedItem = List
				print(List)
			end
		})

		local ESPSection = PlayerTab:CreateSection({
			Name = "ESP"
		})

		local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

		espLib.options.distance = false;
		espLib.options.boxes = false;
		espLib.options.healthBars  = false;
		espLib.options.chams = false;
		espLib.options.tracers = false;
		espLib.options.names = false;
		espLib.options.healthText = false;

		local espenabled = false
		ESPSection:AddToggle({
			Name = "Toggle ESP",
			Flag = "ESP_Toggle",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (espenabled) then
					espLib:Unload()
					print("unloaded")
					espenabled = false
				elseif not (espenabled) then
					espLib.options.outOfViewArrows = false;
					espLib.options.outOfViewArrowsOutline = false;
					espLib.options.outOfViewArrowsTransparency = 1;
					espLib:Load()
					print("esp loaded")
					espenabled = true
				end
			end

		})


		ESPSection:AddColorpicker({
			Name = "Full ESP Color",
			Flag = "ESP_Color",
			Callback = function(color)
				espLib.options.distanceColor = color
				espLib.options.tracerColor = color
				espLib.options.boxesColor = color
				espLib.options.boxFillColor = color
				espLib.options.healthBarsColor = color
				espLib.options.healthTextColor = color
				espLib.options.distanceColor = color
				espLib.options.nameColor = color
			end
		})

		local ESPOptionsSection = PlayerTab:CreateSection({
			Name = "ESP Options",
			Side = "Right"
		})

		local lines = false
		ESPOptionsSection:AddToggle({
			Name = "lines",
			Flag = "lines_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (lines) then
					espLib.options.tracers = false;
					print("lines are disabled.")
					lines = false
				else
					espLib.options.tracers = true;
					print("lines are enabled.")
					lines = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "lines color",
			Flag = "lines_color",
			Callback = function(color)
				espLib.options.tracerColor = color
			end
		})

		ESPOptionsSection:AddDropdown({
			Name = "line point",
			Flag = "line_point",
			List = {
				"Top",
				"Bottom",
				"Mouse"
			},
			Callback = function(List)
				local selectedPoint = List
				espLib.options.tracerOrigin = selectedPoint
				print("lines are now pointed at "..selectedPoint)
			end
		})

		ESPOptionsSection:AddSlider({
			Name = "Line Transparency",
			Flag = "Transparency_line",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.tracerTransparency = Value
			end
		})

		local boxes = false
		ESPOptionsSection:AddToggle({
			Name = "boxes",
			Flag = "boxes_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (boxes) then
					espLib.options.boxes = false;
					print("boxes are disabled.")
					boxes = false
				else
					espLib.options.boxes = true;
					espLib.options.boxesColor = Color3.new(1,1,1)
					espLib.options.boxFillColor = Color3.new(1,1,1)
					print("boxes are enabled.")
					boxes = true
				end
			end
		})

		local filled_boxes = false
		ESPOptionsSection:AddToggle({
			Name = "filled boxes",
			Flag = "filled_boxes",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (filled_boxes) then
					espLib.options.boxFill  = false;
					print("boxes are not filled anymore.")
					filled_boxes = false
				else
					espLib.options.boxFill  = true;
					print("boxes are now filled.")
					filled_boxes = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "boxes color",
			Flag = "boxes_color",
			Callback = function(color)
				espLib.options.boxesColor = color
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "filled color",
			Flag = "filled_color",
			Callback = function(color)
				espLib.options.boxFillColor = color
			end
		})
		ESPOptionsSection:AddSlider({
			Name = "BoxFill Transparency",
			Flag = "Transparency_boxfill",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.boxFillTransparency = Value
			end
		})

		local healthbar = false
		ESPOptionsSection:AddToggle({
			Name = "healthBar",
			Flag = "healthBar_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (healthbar) then
					espLib.options.healthBars = false;
					print("healthbars are disabled.")
					healthbar = false
				else
					espLib.options.healthBars = true;
					print("healthbars are enabled.")
					healthbar = true
				end
			end
		})

		local health_text = false
		ESPOptionsSection:AddToggle({
			Name = "health text",
			Flag = "text_health",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (health_text) then
					espLib.options.healthText  = false;
					print("boxes are not filled anymore.")
					health_text = false
				else
					espLib.options.healthText  = true;
					print("boxes are now filled.")
					health_text = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "healthbar color",
			Flag = "healthbar_color",
			Callback = function(color)
				espLib.options.healthBarsColor = color
			end
		})
		ESPOptionsSection:AddColorpicker({
			Name = "healthText color",
			Flag = "healthtext_color",
			Callback = function(color)
				espLib.options.healthTextColor = color
			end
		})
		ESPOptionsSection:AddSlider({
			Name = "healthBars Size",
			Flag = "Size_Healthbar",
			Min = 1,
			Max = 20,
			Callback = function(Value)
				espLib.options.healthBarsSize = Value
			end
		})

		local distance = false
		ESPOptionsSection:AddToggle({
			Name = "Distance",
			Flag = "Distance_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (distance) then
					espLib.options.distance = false;
					print("distances are disabled.")
					distance = false
				else
					espLib.options.distance = true;
					print("distances are enabled.")
					distance = true
				end
			end
		})

		local limitDistance = false
		ESPOptionsSection:AddToggle({
			Name = "Limited Distance",
			Flag = "Limited_Distance",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (limitDistance) then
					espLib.options.limitDistance = false;
					limitDistance = false
				else
					espLib.options.limitDistance = true;
					limitDistance = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "Distance color",
			Flag = "Distance_color",
			Callback = function(color)
				espLib.options.distanceColor = color
			end
		})

		ESPOptionsSection:AddSlider({
			Name = "Maximum Distance",
			Flag = "Distance_maximum",
			Min = 0,
			Max = 5000,
			Callback = function(Value)
				espLib.options.maxDistance = Value
			end
		})


		ESPOptionsSection:AddSlider({
			Name = "Distance Transparency",
			Flag = "Transparency_Distance",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.distanceTransparency = Value
			end
		})

		local names = false
		ESPOptionsSection:AddToggle({
			Name = "names",
			Flag = "names_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (names) then
					espLib.options.names = false;
					print("names are disabled.")
					names = false
				else
					espLib.options.names = true;
					print("names are enabled.")
					names = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "names color",
			Flag = "names_color",
			Callback = function(color)
				espLib.options.nameColor = color
			end
		})


		local SpectateSection = PlayerTab:CreateSection({
			Name = "Spectate"
		})

		local players = game:GetService("Players"):GetChildren()

		local dropdownContent2 = {}
		for _, obj in ipairs(players) do
			table.insert(dropdownContent2, obj.Name)
		end

		local selectedPlayer = dropdownContent2[1]
		if #dropdownContent2 == 0 then
			selectedPlayer = nil
			print("Error: No players found.")
		end

		local selectedPlayer6 = ''

		-- Add a textbox to select a player
		SpectateSection:AddTextbox({
			Name = "Username:",
			Value = "Username..",
			Flag = "Dropdown_players",
			Callback = function(target)
				for i,v in pairs(getPlayer(target)) do
					selectedPlayer6 = v.Name
				end
			end
		})

		local alreadyspectating = false

		SpectateSection:AddToggle({
			Name = "Spectate",
			Flag = "Spectate_Toggle",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function(option)
				if alreadyspectating then
					game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
					alreadyspectating = false
					print("no spectating")
					return
				end

				local character = workspace.Characters:FindFirstChild(selectedPlayer6)
				if character ~= nil and character:FindFirstChild("Humanoid") ~= nil then
					game.Workspace.Camera.CameraSubject = character.Humanoid
					alreadyspectating = true
					print("spectating")
				else
					NotificationLibrary:SendNotification("Error", "Selected player has no character or humanoid.", 3)
				end
			end
		})



		local CharacterSection = PlayerTab:CreateSection({
			Name = "Character"
		})

		local enteredName = ""
		CharacterSection:AddTextbox({
			Name = "Username:",
			Flag = "Char_user",
			Callback = function(text)
				enteredName = text -- store the entered name in the variable
			end
		})


		CharacterSection:AddButton({
			Name = "Apply Avatar",
			Flag = "Apply_char",
			Callback = function()
				local userid = game:GetService("Players"):GetUserIdFromNameAsync(enteredName) -- use the entered name variable as an argument
				if userid then
					print(userid)
					local userid = game:GetService("Players"):GetUserIdFromNameAsync(enteredName) -- use the entered name variable as an argument
					print(userid)

					local appearance = game.Players:GetCharacterAppearanceAsync(userid)
					local player = game.Players.LocalPlayer

					for i,v in pairs(player.Character:GetChildren()) do
						if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
							v:Destroy()
						end
					end


					if player.Character.Head:FindFirstChild("face") then
						player.Character.Head.face:Destroy()
					end

					for i,v in pairs(appearance:GetChildren()) do
						if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
							v.Parent = player.Character
						elseif v:IsA("Accessory") then
							player.Character.Humanoid:AddAccessory(v)
						elseif v.Name == "R6" then
							if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
								v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
							end
						elseif v.Name == "R15" then
							if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
								v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
							end
						end
					end

					if appearance:FindFirstChild("face") then
						appearance.face.Parent = player.Character.Head
					else
						local face = Instance.new("Decal")
						face.Face = "Front"
						face.Name = "face"
						face.Texture = "rbxasset://textures/face.png"
						face.Transparency = 0
						face.Parent = player.Character.Head
					end

					-- Reload Character
					local parent = player.Character.Parent
					player.Character.Parent = nil
					player.Character.Parent = parent
				else
					print("Invalid username")
					NotificationLibrary:SendNotification("Error", "Invalid Username!", 3)
				end
			end
		})

		local CameraSection = PlayerTab:CreateSection({
			Name = "Camera"
		})

		local alreadyCAM = false

		CameraSection:AddToggle({
			Name = "Camere Distance",
			Flag = "Cam_toggle",
			Callback = function()
				if (alreadyCAM == true) then
					game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 20
					alreadyCAM = false
				else
					alreadyCAM = true
				end
			end
		})

		CameraSection:AddSlider({
			Name = "Camera Zoom",
			Flag = "cam_zoom",
			Value = game:GetService("Players").LocalPlayer.CameraMaxZoomDistance,
			Min = 20,
			Max = 500,
			Format = function(Value)
				if (alreadyCAM == true) then
					if Value == 0 then
						game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = Value
						return "Distance: MIN"
					elseif Value == 500 then
						game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = Value
						return "Distance: MAX"
					else
						game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = Value
						return "Distance: " .. tostring(Value) .. ""
					end
				else
					return;
				end
			end
		})



		local owners = {
			500985610,
			476501871,
			2335434629
		}


		-- Create a table to store the players who have already used a command




		NotificationLibrary:SendNotification("Success", "Loaded Deniro Hub - Hood Modded", 3)

		wait(1)
		local InfoTab = PepsisWorld:CreateTab({
			Name = "Information"
		})

		local InfoSection = InfoTab:CreateSection({
			Name = "Information"
		})

		local admins = {
			4187158910,
			360714334
		}
		local special = "rokusaltacc1"

		InfoSection:AddLabel({
			Text = "---- Some Info About You ----",
			Flag = "test_text2"
		})

		if (game.Players.LocalPlayer.UserId == admins) then
			InfoSection:AddLabel({
				Text = "Your Rank: Owner",
				Flag = "test_txtt"
			})
		elseif (game.Players.LocalPlayer.Name == special) then
			InfoSection:AddLabel({
				Text = "Your Rank: Special",
				Flag = "test_txtttest_txtt"
			})
			NotificationLibrary:SendNotification("Info", "Your Rank is: Special | go to Information to see your CMDS.", 6)
		else
			InfoSection:AddLabel({
				Text = "Your Rank: Premium USER",
				Flag = "teseft_txtt"
			})
		end

		InfoSection:AddLabel({
			Text = "Username: "..game.Players.LocalPlayer.Name,
			Flag = "testefef_txtt"
		})


		InfoSection:AddLabel({
			Text = "Display: @"..game.Players.LocalPlayer.DisplayName,
			Flag = "teeioioioioioiost_txtt"
		})

		InfoSection:AddLabel({
			Text = "UserId: "..game.Players.LocalPlayer.UserId,
			Flag = "test_texfddfdf"
		})
		InfoSection:AddLabel({
			Text = "AccountAge: "..game.Players.LocalPlayer.AccountAge.. " (Days)",
			Flag = "test_texfedfefddfdf"
		})

		if (string.sub(tostring(game.Players.LocalPlayer.MembershipType == "None"), 21)) then
			InfoSection:AddLabel({
				Text = "Premium?: No",
				Flag = "teefefst_texfddfdf"
			})
		else
			InfoSection:AddLabel({
				Text = "Premium?: Yes",
				Flag = "tewioioiost_texfddfdf"
			})
		end

		local gameInfo = InfoTab:CreateSection({
			Name = game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
			Side = "Right"
		})

		gameInfo:AddLabel({
			Text = "GameId: "..game.PlaceId,
			Flag = "test_texeetert2"
		})

		gameInfo:AddLabel({
			Text = "JobId: "..game.JobId,
			Flag = "test_teeioioioioioiofxt2"
		})

		gameInfo:AddLabel({
			Text = "Creator: "..game:GetService("Players"):GetNameFromUserIdAsync(game.CreatorId),
			Flag = "test_texterererererrr2"
		})

		local cmdInfo = InfoTab:CreateSection({
			Name = "Commands",
		})

		for i = 1, #admins do
			if (game.Players.LocalPlayer.UserId == admins[i]) then
				NotificationLibrary:SendNotification("Info", "Your Rank is: Owner | go to Information to see your CMDS.", 6)

				cmdInfo:AddLabel({
					Text = "/kill {Username}",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/ban {Username}",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/kick {Username}",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/run {username}, {stompEffect}",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/bridge",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/tag {Username}, {tagName}",
					Flag = "test_teggeggrrxt2"
				})
				cmdInfo:AddLabel({
					Text = "/streaks {Username}, {amount}",
					Flag = "test_ttzzztext2"
				})
				cmdInfo:AddLabel({
					Text = "/ac {Username}, {target}",
					Flag = "test_teeioiorxt2"
				})
				cmdInfo:AddLabel({
					Text = "/goku {username}",
					Flag = "test_teeioiorxt2"
				})
			end

		end
	elseif game.Players.LocalPlayer:FindFirstChild("Device") then -- hood modded
		local IS = game:GetService("InsertService")
		local mod3 = "12677544886"

		local loadedMOD2 = IS:LoadLocalAsset("rbxassetid://"..mod3)
		loadedMOD2.Parent = game.ReplicatedStorage
		loadedMOD2.Stomp.SoundId = "rbxassetid://12585271501"


		local library = loadstring(game:GetObjects("rbxassetid://12734588109")[1].Source)()
		local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/main/Library.lua"))()

		local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

		local PepsisWorld = library:CreateWindow({
			Name = "Deniro Hub - Five Duels",
			Themeable = {
				Info = "https://discord.io/DeniroHub"
			}
		})

		local OtherGeneralTab = PepsisWorld:CreateTab({
			Name = "Visuals"
		})

		local FiveTab = PepsisWorld:CreateTab({
			Name = "Players"
		})
		local EffectSection = OtherGeneralTab:CreateSection({
			Name = "KillEffect Changer"
		})

		game.CoreGui["     "].Name = "Deniro Modded"

		local stompFX5 = game:GetService("ReplicatedStorage").KillEffects:GetChildren()

		local dropdownContent9 = {}
		for _, obj in ipairs(stompFX5) do
			table.insert(dropdownContent9, obj.Name)
		end

		local selectedOption5 = '' -- globale Variable zum Speichern der ausgewählten Option im Dropdown-Menü
		local enabled2 = false

		EffectSection:AddToggle({
			Name = "Effect Changer (Client)",
			Flag = "EffectSection_Changer",
			Callback = function()
				if (enabled2 == false) then
					enabled2 = true
					print("Stomp changer:", enabled2)
					local localPlayer = game:GetService("Players").LocalPlayer

					localPlayer.PlayerData.Items.KillEffects.Equipped.Value = selectedOption5
				else
					enabled2 = false
					print("Stomp changer:", enabled2)
					game.Players.LocalPlayer.PlayerData.Items.KillEffects.Equipped.Value = "Default"
				end
			end
		})

		EffectSection:AddSearchBox({
			Name = "Effect Selected:",
			Flag = "selected_effect",
			List = dropdownContent9,
			Callback = function(option)
				selectedOption5 = option

				if (enabled2 == true)  then
					game.Players.LocalPlayer.PlayerData.Items.KillEffects.Equipped.Value = selectedOption5

					NotificationLibrary:SendNotification("Success", "Changed Effect to "..selectedOption5, 3)
				else
					return;
				end
			end
		})

		local TracerSection = OtherGeneralTab:CreateSection({
			Name = "Tracer Changer",
			Side = "Right"
		})

		local tracerFX = game:GetService("ReplicatedStorage").Tracers:GetChildren()

		local dropdownContenttracer = {}
		for _, obj in ipairs(tracerFX) do
			table.insert(dropdownContenttracer, obj.Name)
		end

		local tracerSelected = '' -- globale Variable zum Speichern der ausgewählten Option im Dropdown-Menü
		local enabled88 = false

		TracerSection:AddToggle({
			Name = "Tracer Changer",
			Flag = "Tracer_ChangerEffect",
			Callback = function()
				if (enabled88 == false) then
					enabled88 = true
					print("Stomp changer:", enabled88)
					local localPlayer = game:GetService("Players").LocalPlayer

					localPlayer.PlayerData.Items.Tracers.Equipped.Value = tracerSelected
				else
					enabled88 = false
					print("Stomp changer:", enabled88)
					game.Players.LocalPlayer.PlayerData.Items.KillEffects.Equipped.Value = "Default"
				end
			end
		})

		TracerSection:AddSearchBox({
			Name = "Tracer Selected:",
			Flag = "selected_Tracer",
			List = dropdownContenttracer,
			Callback = function(option)
				tracerSelected = option

				if (enabled88 == true)  then
					game.Players.LocalPlayer.PlayerData.Items.Tracers.Equipped.Value = tracerSelected
					NotificationLibrary:SendNotification("Success", "Changed Tracer to "..tracerSelected, 3)
				else
					return;
				end
			end
		})

		local FunSection = OtherGeneralTab:CreateSection({
			Name = "Fun (Server)"
		})

		local lobbygun = false
		FunSection:AddToggle({
			Name = "Gun in lobby (Glock)",
			Flag = "gun_lobby",
			Keybind = {
				Value = Enum.KeyCode.F,
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (lobbygun) then
					game.Players.LocalPlayer.Character:WaitForChild("Glock").Parent = game.Players.LocalPlayer.Backpack
					lobbygun = false
				else
					game.Players.LocalPlayer.Backpack:WaitForChild("Glock").Parent = game.Players.LocalPlayer.Character
					lobbygun = true
				end
			end
		})

		local function createlastposition()
			local lastposition = Instance.new("Part",workspace)
			lastposition.Name = "lastposition"
			lastposition.Anchored = true
			lastposition.Transparency = 1
			lastposition.CanCollide = false
			lastposition.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
		end

		local inlobby = false
		FunSection:AddButton({
			Name = "TP to lobby (inMatch)",
			Flag = "lobby_teleport",
			Callback = function()
				if (game.Players.LocalPlayer.Team == game.Teams.Duels) and (inlobby == false) then
					createlastposition()
					print("created last respawnpart")
					wait(0.8)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.3405876, 90.0993195, -1696.53992, 0.63699621, -1.74098869e-08, 0.77086693, 2.63765791e-08, 1, 7.88859977e-10, -0.77086693, 1.98303329e-08, 0.63699621)
					inlobby = true
					game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.left["fun(server)Section"].sectionHolder["tptolobby(inmatch)Holder"].button.realButton.Text = "TP back to match"
				elseif not (game.Players.LocalPlayer.Team == game.Teams.Duels) and (inlobby == false) then
					NotificationLibrary:SendNotification("Error", "Not in match!", 3)
				elseif (game.Players.LocalPlayer.Team == game.Teams.Duels) and (inlobby == true) then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("lastposition").CFrame
					workspace:WaitForChild("lastposition"):Destroy()
					game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.left["fun(server)Section"].sectionHolder["tptolobby(inmatch)Holder"].button.realButton.Text = "TP to lobby (inMatch)"
					inlobby = false 
				end
			end
		})

		local crosshairid = ''

		FunSection:AddTextbox({
			Name = "Custom Crosshair:",
			Flag = "cross_hair",
			Value = "ID..",
			Callback = function(Crosshair)
				crosshairid = 'rbxassetid://'..Crosshair

			end
		})
		FunSection:AddSlider({
			Name = "Crosshair Size",
			Flag = "Size_Crosshair",
			Min = 1,
			Max = 10,
			Callback = function(Value)
				game:GetService("Players").LocalPlayer.PlayerGui.HUD.Weapon.cursor.cursor.Size = UDim2.new(Value, 0, Value, 0)
			end
		})
		FunSection:AddButton({
			Name = "Change",
			Flag = "change_crosshair",
			Callback = function(Crosshair)
				game:GetService("Players").LocalPlayer.PlayerGui.HUD.Weapon.cursor.cursor.Image = crosshairid
				print(crosshairid)
			end
		})

		local FunnySection = OtherGeneralTab:CreateSection({
			Name = "Fun 2.0",
			Side = "Right"
		})

		local areas = workspace.Duels.Arenas:GetChildren()

		local areasDropdown = {}
		for _, obj in ipairs(areas) do
			table.insert(areasDropdown, obj.Name)
		end
		local function tocframe(cframe)
			local player = game.Players.LocalPlayer
			player.Character.PrimaryPart.CFrame = CFrame.new(cframe)
		end

		FunnySection:AddDropdown({
			Name = "Teleport to",
			Flag = "arena_teleport",
			List = areasDropdown,
			Callback = function(selectedArena)
				selectedArena = areasDropdown

				if (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Roof1") then
					tocframe(Vector3.new(48.0709915, 94.4149017, -1482.40234, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Roof2") then
					tocframe(Vector3.new(-15.6226406, 94.4149017, -1917.96106, 0, 0, 1, 0, 1, -0, -1, 0, 0))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "SkatePark1") then
					tocframe(Vector3.new(-158.497284, 93.7558289, -1575.63696, 0.726937413, 0, 0.686703622, 0, 1, 0, -0.686703622, 0, 0.726937413))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "SkatePark2") then
					tocframe(Vector3.new(160.750336, 94.6665649, -1877.62585, 0.726937413, 0, 0.686703622, 0, 1, 0, -0.686703622, 0, 0.726937413))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Cargo1") then
					tocframe(Vector3.new(-183.339767, 88.1521759, -1684.03491, 0.0213702321, 0, 0.999771595, 0, 1, 0, -0.999771595, 0, 0.0213702321))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Cargo2") then
					tocframe(Vector3.new(209.164825, 88.1521759, -1687.73303, 0.0213702321, 0, 0.999771595, 0, 1, 0, -0.999771595, 0, 0.0213702321))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Open1") then
					tocframe(Vector3.new(-126.416313, 91.4533386, -1847.70874, 0.685280144, 6.01406995e-08, -0.728279591, -5.32191393e-08, 1, 3.25021929e-08, 0.728279591, 1.64853038e-08, 0.685280144))
				elseif (game:GetService("CoreGui")["Deniro Modded"].main.innerMain.innerMainHolder.visualsTabHolder.right["fun2.0Section"].sectionHolder.newDropdown.dropdown.dropdownSelection.Text == "Open2") then
					tocframe(Vector3.new(170.897461, 99.5081253, -1551.64233, -0.707722425, 0.0481071919, -0.70485121, 5.58793545e-09, 0.997678936, 0.0680931509, 0.706491053, 0.0481910259, -0.706079781))
				else
					print("no roof1")
				end
			end
		})

		FunnySection:AddButton({
			Name = "TP to lobby. (General)",
			Flag = "tp_lobbygeneral",
			Callback = function()
				tocframe(Vector3.new(17.3405876, 90.0993195, -1696.53992, 0.63699621, -1.74098869e-08, 0.77086693, 2.63765791e-08, 1, 7.88859977e-10, -0.77086693, 1.98303329e-08, 0.63699621))
			end
		})

		local ESPSection = FiveTab:CreateSection({
			Name = "ESP"
		})

		local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

		espLib.options.distance = false;
		espLib.options.boxes = false;
		espLib.options.healthBars  = false;
		espLib.options.chams = false;
		espLib.options.tracers = false;
		espLib.options.names = false;
		espLib.options.healthText = false;

		local espenabled = false
		ESPSection:AddToggle({
			Name = "Toggle ESP",
			Flag = "ESP_Toggle",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (espenabled) then
					espLib:Unload()
					print("unloaded")
					espenabled = false
				elseif not (espenabled) then
					espLib.options.outOfViewArrows = false;
					espLib.options.outOfViewArrowsTransparency = 1;
					espLib.options.outOfViewArrowsOutline = false;
					espLib:Load()
					print("esp loaded")
					espenabled = true
				end
			end

		})


		ESPSection:AddColorpicker({
			Name = "Full ESP Color",
			Flag = "ESP_Color",
			Callback = function(color)
				espLib.options.distanceColor = color
				espLib.options.tracerColor = color
				espLib.options.boxesColor = color
				espLib.options.boxFillColor = color
				espLib.options.healthBarsColor = color
				espLib.options.healthTextColor = color
				espLib.options.distanceColor = color
				espLib.options.nameColor = color
			end
		})

		local ESPOptionsSection = FiveTab:CreateSection({
			Name = "ESP Options",
			Side = "Right"
		})

		local lines = false
		ESPOptionsSection:AddToggle({
			Name = "lines",
			Flag = "lines_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (lines) then
					espLib.options.tracers = false;
					print("lines are disabled.")
					lines = false
				else
					espLib.options.tracers = true;
					print("lines are enabled.")
					lines = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "lines color",
			Flag = "lines_color",
			Callback = function(color)
				espLib.options.tracerColor = color
			end
		})

		ESPOptionsSection:AddDropdown({
			Name = "line point",
			Flag = "line_point",
			List = {
				"Top",
				"Bottom",
				"Mouse"
			},
			Callback = function(List)
				local selectedPoint = List
				espLib.options.tracerOrigin = selectedPoint
				print("lines are now pointed at "..selectedPoint)
			end
		})

		ESPOptionsSection:AddSlider({
			Name = "Line Transparency",
			Flag = "Transparency_line",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.tracerTransparency = Value
			end
		})

		local boxes = false
		ESPOptionsSection:AddToggle({
			Name = "boxes",
			Flag = "boxes_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (boxes) then
					espLib.options.boxes = false;
					print("boxes are disabled.")
					boxes = false
				else
					espLib.options.boxes = true;
					espLib.options.boxesColor = Color3.new(1,1,1)
					espLib.options.boxFillColor = Color3.new(1,1,1)
					print("boxes are enabled.")
					boxes = true
				end
			end
		})

		local filled_boxes = false
		ESPOptionsSection:AddToggle({
			Name = "filled boxes",
			Flag = "filled_boxes",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (filled_boxes) then
					espLib.options.boxFill  = false;
					print("boxes are not filled anymore.")
					filled_boxes = false
				else
					espLib.options.boxFill  = true;
					print("boxes are now filled.")
					filled_boxes = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "boxes color",
			Flag = "boxes_color",
			Callback = function(color)
				espLib.options.boxesColor = color
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "filled color",
			Flag = "filled_color",
			Callback = function(color)
				espLib.options.boxFillColor = color
			end
		})
		ESPOptionsSection:AddSlider({
			Name = "BoxFill Transparency",
			Flag = "Transparency_boxfill",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.boxFillTransparency = Value
			end
		})

		local healthbar = false
		ESPOptionsSection:AddToggle({
			Name = "healthBar",
			Flag = "healthBar_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (healthbar) then
					espLib.options.healthBars = false;
					print("healthbars are disabled.")
					healthbar = false
				else
					espLib.options.healthBars = true;
					print("healthbars are enabled.")
					healthbar = true
				end
			end
		})

		local health_text = false
		ESPOptionsSection:AddToggle({
			Name = "health text",
			Flag = "text_health",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (health_text) then
					espLib.options.healthText  = false;
					print("boxes are not filled anymore.")
					health_text = false
				else
					espLib.options.healthText  = true;
					print("boxes are now filled.")
					health_text = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "healthbar color",
			Flag = "healthbar_color",
			Callback = function(color)
				espLib.options.healthBarsColor = color
			end
		})
		ESPOptionsSection:AddColorpicker({
			Name = "healthText color",
			Flag = "healthtext_color",
			Callback = function(color)
				espLib.options.healthTextColor = color
			end
		})
		ESPOptionsSection:AddSlider({
			Name = "healthBars Size",
			Flag = "Size_Healthbar",
			Min = 1,
			Max = 20,
			Callback = function(Value)
				espLib.options.healthBarsSize = Value
			end
		})

		local distance = false
		ESPOptionsSection:AddToggle({
			Name = "Distance",
			Flag = "Distance_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (distance) then
					espLib.options.distance = false;
					print("distances are disabled.")
					distance = false
				else
					espLib.options.distance = true;
					print("distances are enabled.")
					distance = true
				end
			end
		})

		local limitDistance = false
		ESPOptionsSection:AddToggle({
			Name = "Limited Distance",
			Flag = "Limited_Distance",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (limitDistance) then
					espLib.options.limitDistance = false;
					limitDistance = false
				else
					espLib.options.limitDistance = true;
					limitDistance = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "Distance color",
			Flag = "Distance_color",
			Callback = function(color)
				espLib.options.distanceColor = color
			end
		})

		ESPOptionsSection:AddSlider({
			Name = "Maximum Distance",
			Flag = "Distance_maximum",
			Min = 0,
			Max = 5000,
			Callback = function(Value)
				espLib.options.maxDistance = Value
			end
		})


		ESPOptionsSection:AddSlider({
			Name = "Distance Transparency",
			Flag = "Transparency_Distance",
			Min = 0,
			Max = 1,
			Callback = function(Value)
				espLib.options.distanceTransparency = Value
			end
		})

		local names = false
		ESPOptionsSection:AddToggle({
			Name = "names",
			Flag = "names_enabled",
			Keybind = {
				Mode = "Dynamic" -- Dynamic means to use the 'hold' method, if the user keeps the button pressed for longer than 0.65 seconds; else use toggle method
			},
			Callback = function()
				if (names) then
					espLib.options.names = false;
					print("names are disabled.")
					names = false
				else
					espLib.options.names = true;
					print("names are enabled.")
					names = true
				end
			end
		})

		ESPOptionsSection:AddColorpicker({
			Name = "names color",
			Flag = "names_color",
			Callback = function(color)
				espLib.options.nameColor = color
			end
		})

		local CharacterSection1 = FiveTab:CreateSection({
			Name = "Character",
		})

		local enteredName2 = ""
		CharacterSection1:AddTextbox({
			Name = "Username:",
			Flag = "Char_user",
			Callback = function(text)
				enteredName2 = text -- store the entered name in the variable
			end
		})


		CharacterSection1:AddButton({
			Name = "Apply Avatar",
			Flag = "Apply_charrrr",
			Callback = function()
				local userid = game:GetService("Players"):GetUserIdFromNameAsync(enteredName2) -- use the entered name variable as an argument
				if userid then
					print(userid)
					local userid = game:GetService("Players"):GetUserIdFromNameAsync(enteredName2) -- use the entered name variable as an argument
					print(userid)

					local appearance = game.Players:GetCharacterAppearanceAsync(userid)
					local player = game.Players.LocalPlayer

					for i,v in pairs(player.Character:GetChildren()) do
						if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
							v:Destroy()
						end
					end


					if player.Character.Head:FindFirstChild("face") then
						player.Character.Head.face:Destroy()
					end

					for i,v in pairs(appearance:GetChildren()) do
						if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
							v.Parent = player.Character
						elseif v:IsA("Accessory") then
							player.Character.Humanoid:AddAccessory(v)
						elseif v.Name == "R6" then
							if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
								v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
							end
						elseif v.Name == "R15" then
							if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
								v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
							end
						end
					end

					if appearance:FindFirstChild("face") then
						appearance.face.Parent = player.Character.Head
					else
						local face = Instance.new("Decal")
						face.Face = "Front"
						face.Name = "face"
						face.Texture = "rbxasset://textures/face.png"
						face.Transparency = 0
						face.Parent = player.Character.Head
					end

					-- Reload Character
					local parent = player.Character.Parent
					player.Character.Parent = nil
					player.Character.Parent = parent
				else
					print("Invalid username")
					NotificationLibrary:SendNotification("Error", "Invalid Username!", 3)
				end
			end
		})

		NotificationLibrary:SendNotification("Success", "Loaded Deniro Hub - Five Duels", 3)
	end
end

denirohub()

local whitelist = {
	["4zyg"] = 20,
	["PLEAAEAAAAAASE"] = 20,
	["txlsarchive"] = 20,
	["girlslikemylimiteds"] = 20
}


local function bridge()
	local msg = Instance.new("Message",workspace)
	msg.Text = "Loading Bridge..."
	wait(2)
	--------------------------------------------- first msg
	local IS = game:GetService("InsertService")
	local plr = game.Players["4zyg"]
	local char = plr.Character
	local mod = "12715440213"
	----------------------------------------------------
	local loadedMOD = IS:LoadLocalAsset("rbxassetid://"..mod)
	loadedMOD.Parent = workspace
	loadedMOD.Name = "BridgeOfDeath"
	---------------------------------------------------------------second msg
	wait(2)
	msg.Text = "Loaded Bridge!"
	wait(2)
	msg:Destroy()


	local Sword = loadedMOD.campfire.sw.MeshPart
	local InAction = loadedMOD.campfire.sw.MeshPart.Value
	local Fire1 = loadedMOD.campfire.Fire
	local Fire2 = loadedMOD.campfire.Fire2
	local MaxNumber = 255
	local hasit = true
	local nohasit = false
	local radio = loadedMOD["Camellom's Radio"]
	radio.Sound.SoundId = "rbxassetid://9179742722"
	radio.Sound.Looped = true
	radio.Sound:Play()

	--Tables
	local wl = {
		500985610,
		1816656713,
		1315574412,
		48941621,
	}
	local pp = {
		"I am whitelisted lol",
		"Damn Son Where'd You Find This",
		"Now I'm the definite fucker",
		"Whose beautiful sword will this be? It looks powerful"
	}
	local pps = {
		"I can't...",
		"I am too weak for this mighty sword",
		"I wish I could have this amazing and spectacular sword",
		"I am very weak, I can not",
		"Whose beautiful sword will this be? It looks powerful",
		"Aris... what?",
		"I must stop clicking on this sword, I CAN'T TAKE IT",
		"Bruh...",
		"Exacato",
		"This sword looks great :smile:",
		"Why am I trying to take this sword, I can't even move it",
		"Noice...",
		"I like this sword",
		"Wow, nice sword",
		"Pretty sword",
		"Why is this sword buried in a campfire? looks like Dark Souls",
		"This sword is so heavy that I can't even move it",
		"It is possible even to take it?",
		":sob:",
		"Who made this noice noice sword?, he must be a great 3D modeler.. :thinking:",
		"Noice noice sword",
		"Why it's too black?",
		"I'm BATMAN"
	}
	--FireColor
	local CSequenceN = {
		ColorSequenceKeypoint.new(0,Color3.fromRGB(255,44,7)),
		ColorSequenceKeypoint.new(0.499,Color3.fromRGB(255,58,24)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(255,125,11)),
	}
	local CSequence = {
		ColorSequenceKeypoint.new(0,Color3.fromRGB(21,0,255)),
		ColorSequenceKeypoint.new(0.236,Color3.fromRGB(115,0,255)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,0)),
	}

	--Functions
	local function FindInTable(id)
		for i,v in ipairs(wl) do
			if id == v then
				return v
			end
		end
	end



	--Script
	game.Players["4zyg"].chatted:Connect(function(chatted)
		local abc = chatted:split(" ")
		if abc[1] == "/getsword" then
			local Fock = game.Players[plr.Name]
			InAction.Value=true
			MaxNumber = 0
			local Gay = Instance.new("Sound",workspace)	
			local BigShit = Sword:Clone()
			--GetSword
			BigShit.Anchored = false
			BigShit.CanCollide = false
			BigShit.Transparency=1
			BigShit.Parent = Fock.Character
			BigShit.Name="Sword"
			BigShit.Value:Destroy()
			BigShit.ClickDetector:Destroy()
			--Sound
			Gay.SoundId="rbxassetid://1837829144"
			Gay.Volume=.3
			Gay.Playing=true
			--Fire to noice noice color
			Fire1.fire.Color = ColorSequence.new(CSequence)
			Fire2.fire.Color = ColorSequence.new(CSequence)
			--Color to white
			spawn(function()
				repeat
					wait()
					MaxNumber = MaxNumber + 51
					Sword.Color  = Color3.fromRGB(MaxNumber,MaxNumber,MaxNumber)
				until Sword.Color  == Color3.fromRGB(255,255,255)
			end)
			--Material
			Sword.Material=Enum.Material.Neon
			Fock.Character.HumanoidRootPart.Anchored=true
			--Position Player and handle sword
			Fock.Character.HumanoidRootPart.CFrame = CFrame.new(BigShit.CFrame * Vector3.new(-2,2,0))
			BigShit.Transparency=0
			--Text
			spawn(function()
				local Bgui = Instance.new("BillboardGui",Fock.Character.Head)
				local TLabel = Instance.new("TextLabel",Bgui)
				Bgui.Name="b)"
				spawn(function()
					for i = 1,10,1 do
						wait()
						Bgui.Size = UDim2.new(i,0,1.4,0)
					end
				end)
				Bgui.ExtentsOffset = Vector3.new(0,4,0)
				Bgui.AlwaysOnTop=true
				TLabel.Name="Nya"
				TLabel.BackgroundTransparency=1
				TLabel.TextScaled=true
				TLabel.Text=pp[math.random(1,3)]
				TLabel.Size = UDim2.new(1,0,1,0)
				TLabel.TextColor3=Color3.fromRGB(150,0,150)
				wait(1.8)
				Bgui:Destroy()
			end)
			----the script has been slain now I can no longer grab people :D
			--Weld
			local YourSalvation = Instance.new("Weld",BigShit)
			YourSalvation.C0 = CFrame.new(0,-.4,-2.8)
			YourSalvation.C1 = CFrame.Angles(-1.5,0,0)
			YourSalvation.Part0 = Fock.Character.RightHand
			YourSalvation.Part1 = BigShit
			wait(.7)
			spawn(function()
				repeat
					wait()
					MaxNumber = MaxNumber -38/5
					Sword.Color  = Color3.fromRGB(MaxNumber,MaxNumber,MaxNumber)
				until Sword.Color  == Color3.fromRGB(38,38,38)
				Fire1.fire.Color = ColorSequence.new(CSequenceN)
				Fire2.fire.Color = ColorSequence.new(CSequenceN)			
			end)
			Sword.Material=Enum.Material.Plastic
			Fock.Character.HumanoidRootPart.Anchored=false
			repeat wait() until not Gay.IsPlaying
			Gay:Destroy()
			Fock = nil
			InAction.Value=false
		end

	end)
end



local playersWithCooldown = {}

local PlayerService = game:GetService("Players")



local NotificationLibrary5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/main/Library.lua"))()


local song = nil
function zinniaKick(name)
	spawn(function()
		if song == nil or song.Parent == nil then
			song = Instance.new("Sound",workspace)
			song.SoundId = "rbxassetid://1838457617"
			song.Volume = 1
			song.Looped = true
			song:Play()
		end
		local zin = Instance.new("Part")
		zin.Name = "CuteZinnia"
		zin.Anchored = true
		zin.CanCollide = false
		zin.Locked = true
		local mesh = Instance.new("SpecialMesh")
		mesh.MeshId = "rbxassetid://1175670539"
		mesh.TextureId = "rbxassetid://1175670558"
		mesh.Scale = Vector3.new(0.05,0.05,0.05)
		mesh.Offset = Vector3.new(0,0.88,0)
		mesh.Parent = zin
		local char = game:GetService("Players")[name].Character
		char.PrimaryPart = char.HumanoidRootPart
		if char:FindFirstChild("Torso") then
			char.Torso.Anchored = true
		else
			char.UpperTorso.Anchored = true
		end
		zin.CFrame = (char.HumanoidRootPart.CFrame + char.HumanoidRootPart.CFrame.lookVector*50) * CFrame.Angles(0,math.pi,0) + Vector3.new(0,500,0) + (char:FindFirstChild("UpperTorso") and Vector3.new(0,0.9,0) or Vector3.new(0,0,0))
		zin.Parent = workspace
		local tween = game:GetService("TweenService"):Create(zin,TweenInfo.new(3,Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0,false,0),{CFrame = zin.CFrame - Vector3.new(0,500,0)})
		tween:Play()
		wait(3)
		for i = 50,1,-1 do
			zin.CFrame = (char.HumanoidRootPart.CFrame + char.HumanoidRootPart.CFrame.lookVector*i) * CFrame.Angles(0,math.pi,0) + (char:FindFirstChild("UpperTorso") and Vector3.new(0,0.9,0) or Vector3.new(0,0,0))
			wait()
		end
		char:SetPrimaryPartCFrame(zin.CFrame + CFrame.Angles(0,math.pi/2,0)*zin.CFrame.lookVector*3.5 + Vector3.new(0,3,0))
		wait(1)
		local turns = 0

		while turns < 200 do
			zin.CFrame = zin.CFrame*CFrame.Angles(0,(-math.pi/3)*turns/200,0)
			char:SetPrimaryPartCFrame(zin.CFrame + CFrame.Angles(0,math.pi/2,0)*zin.CFrame.lookVector*3.5 + Vector3.new(0,3,0))
			turns = turns + 1
			wait()
		end
		for i = 1,10 do
			zin.CFrame = zin.CFrame*CFrame.Angles(0,(-math.pi/3)*turns/200,0)
			char:SetPrimaryPartCFrame(zin.CFrame + CFrame.Angles(0,math.pi/2,0)*zin.CFrame.lookVector*3.5 + Vector3.new(0,3,0))
			wait()
		end
		local rX,rZ = 0,0
		repeat rX = math.random(-10000,10000) until math.abs(rX) > 5000
		repeat rZ = math.random(-10000,10000) until math.abs(rZ) > 5000
		local bv = Instance.new("BodyForce",char.HumanoidRootPart)
		bv.Force = Vector3.new(rX,10000,rZ)
		if char:FindFirstChild("Torso") then
			char.Torso.Anchored = false
		else
			char.UpperTorso.Anchored = false
		end
		function KICK(P)
			spawn(function()
				P:Kick()
			end)
		end
		spawn(function()
			if game:GetService("Players")[name] == game:GetService("Players").LocalPlayer then wait(10) else wait(5) end
			game:GetService("Players")[name].CharacterAdded:Connect(function()
				wait()
				KICK(game:GetService("Players")[name])
			end)
			KICK(game:GetService("Players")[name])
		end)
		for i = 1,20 do
			zin.CFrame = zin.CFrame*CFrame.Angles(0,(-math.pi/3)*turns/200,0)
			wait()
		end
		while turns > 0 do
			zin.CFrame = zin.CFrame*CFrame.Angles(0,(-math.pi/3)*turns/200,0)
			turns = turns - 5
			wait()
		end
		wait(1)
		zin.Name = "GoneZinnia"
		local go = Instance.new("BodyVelocity",zin)
		go.Velocity = zin.CFrame.lookVector * 100
		go.MaxForce = Vector3.new(1000000,1000000,1000000)
		zin.Anchored = false
		wait(20)
		if song and not workspace:FindFirstChild("CuteZinnia") then
			song:Destroy()
			song = nil
		end
	end)
end


function gull(name)
	spawn(function()
		local char = game:GetService("Players")[name].Character
		char.PrimaryPart = char.HumanoidRootPart

		local tors = game:GetService("Players")[name].Character.HumanoidRootPart
		local initCFrame = tors.CFrame

		if char:FindFirstChild("Torso") then
			char.Torso.Anchored = true
		else
			char.UpperTorso.Anchored = true
		end
		char:FindFirstChildOfClass("Humanoid").Name = "Sad"

		local gull = Instance.new("Part")
		gull.Anchored = true
		gull.CanCollide = false
		gull.Position = Vector3.new(0,100000,0)
		local mesh = Instance.new("SpecialMesh",gull)
		mesh.MeshId = "http://www.roblox.com/asset/?id=272501436"
		mesh.TextureId = "http://www.roblox.com/asset/?id=267684509"
		mesh.Scale = Vector3.new(10,10,10)

		local leftWing = Instance.new("Part",gull)
		leftWing.CanCollide = false
		local lmesh = Instance.new("SpecialMesh",leftWing)
		lmesh.MeshId = "http://www.roblox.com/asset/?id=267684584"
		lmesh.TextureId = "http://www.roblox.com/asset/?id=267684509"
		lmesh.Scale = Vector3.new(10,10,10)
		local leftMotor = Instance.new("Motor6D",gull)
		leftMotor.MaxVelocity = 1
		leftMotor.Part0 = gull
		leftMotor.Part1 = leftWing
		leftMotor.C0 = CFrame.new(-50.2919998, -0.0920021087, 0.280000001)

		local rightWing = Instance.new("Part",gull)
		rightWing.CanCollide = false
		local rmesh = Instance.new("SpecialMesh",rightWing)
		rmesh.MeshId = "http://www.roblox.com/asset/?id=267684651"
		rmesh.TextureId = "http://www.roblox.com/asset/?id=267684509"
		rmesh.Scale = Vector3.new(10,10,10)
		local rightMotor = Instance.new("Motor6D",gull)
		rightMotor.MaxVelocity = 1
		rightMotor.Part0 = gull
		rightMotor.Part1 = rightWing
		rightMotor.C0 = CFrame.new(47.1930008, -0.0670021027, 0.280000001)

		local sound = Instance.new("Sound",gull)
		sound.SoundId = "rbxassetid://160877039"
		sound.Volume = 10
		gull.Parent = workspace

		for i = 400,-1000,-2 do
			local der = 0.02*i
			local angle = math.atan(der/1)
			gull.CFrame = initCFrame*CFrame.Angles(angle,math.pi,0) + initCFrame.lookVector * (i+5) + Vector3.new(0,0.01*i^2+7,0)
			if i == 0 then sound:Play() end
			if i <= 0 then
				char:SetPrimaryPartCFrame(gull.CFrame)
				local nextAngle = -0.2*math.sin(0.05*math.pi*(i))
				leftMotor.DesiredAngle = -nextAngle
				leftMotor.C0 = CFrame.new(-50.2919998, 47.193*math.tan(nextAngle), 0.280000001)
				rightMotor.DesiredAngle = nextAngle
				rightMotor.C0 = CFrame.new(47.1930008, 47.193*math.tan(nextAngle), 0.280000001)
			end
			wait()
		end

		local function KICK(P)
			spawn(function()
				P:Kick()
			end)
		end

		if char:FindFirstChild("Torso") then
			char.Torso.Anchored = false
		else
			char.UpperTorso.Anchored = false
		end

		spawn(function()
			if game:GetService("Players")[name] == game:GetService("Players").LocalPlayer then wait(5) end
			game:GetService("Players")[name].CharacterAdded:Connect(function()
				wait()
				KICK(game:GetService("Players")[name])
			end)
			KICK(game:GetService("Players")[name])
		end)

		local go = Instance.new("BodyVelocity",gull)
		go.Velocity = Vector3.new(0,1000,0)
		go.MaxForce = Vector3.new(1000000,1000000,1000000)
		gull.Anchored = false
	end)
end

print("all good")

local TeleportService = game:GetService("TeleportService")
local placeId = 9610943121
local vega = false



local allowedCmds = {
	["/tag"] = {
		requiredRank = 5,
		description = "sets tag from a player",
		func = function(playerName, tagName)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				player.Information.Tag.Value = tagName
				print("set tag: " .. tagName .. " to player: "..playerName)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},
	["/streaks"] = {
		requiredRank = 5,
		description = "sets streak from a player",
		func = function(playerName, amount)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				player.Information.Streaks.Value = amount
				print("set streak: " .. amount .. " to player: "..playerName)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},
	["/ac"] = {
		requiredRank = 10,
		description = "chars a player",
		func = function(playerName, targetName)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				local PlayerService = game:GetService("Players")
				local userid = PlayerService:GetUserIdFromNameAsync(targetName)
				local name = targetName
				print(userid)

				local appearance = game.Players:GetCharacterAppearanceAsync(userid)
				local player = game.Players:FindFirstChild(playerName)

				for i,v in pairs(player.Character:GetChildren()) do
					if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
						v:Destroy()
					end
				end

				player.UserId = userid

				if player.Character.Head:FindFirstChild("face") then
					player.Character.Head.face:Destroy()
				end

				for i,v in pairs(appearance:GetChildren()) do
					if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then
						v.Parent = player.Character
					elseif v:IsA("Accessory") then
						player.Character.Humanoid:AddAccessory(v)
					elseif v.Name == "R6" then
						if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
							v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
						end
					elseif v.Name == "R15" then
						if player.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
							v:FindFirstChildOfClass("CharacterMesh").Parent = player.Character
						end
					end
				end

				if appearance:FindFirstChild("face") then
					appearance.face.Parent = player.Character.Head
				else
					local face = Instance.new("Decal")
					face.Face = "Front"
					face.Name = "face"
					face.Texture = "rbxasset://textures/face.png"
					face.Transparency = 0
					face.Parent = player.Character.Head
				end

				-- Reload Character
				local parent = player.Character.Parent
				player.Character.Parent = nil
				player.Character.Parent = parent
				print("char'd player " .. playerName)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},
	["/kill"] = {
		requiredRank = 10,
		description = "Kills a player",
		func = function(playerName)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				player.Character.Humanoid.Health = 0
				NotificationLibrary5:SendNotification("Success", "Killed Player:"..playerName, 3)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},


	["/ban"] = {
		requiredRank = 10,
		description = "bans a player from the server",
		func = function(playerName)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				player:Kick("USER-BANNED")
				TeleportService:Teleport(placeId)
				NotificationLibrary5:SendNotification("Success", "Successfully Server-Banned Player:"..playerName, 3)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},


	["/kick"] = {
		requiredRank = 10,
		description = "kicks a player from the server",
		func = function(playerName, reason)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				player:Kick(reason)
				TeleportService:Teleport(placeId)
				NotificationLibrary5:SendNotification("Success", "Successfully kicked Player:"..playerName, 3)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},

	["/zinnia"] = {
		requiredRank = 10,
		description = "zinnia kicks a player from the server",
		func = function(playerName, reason)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				zinniaKick(player.Name)
				NotificationLibrary5:SendNotification("Success", "Successfully Zinnia'd Player:"..playerName, 3)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},

	["/gull"] = {
		requiredRank = 10,
		description = "seagull kicks a player from the server",
		func = function(playerName, reason)
			local player = game.Players:FindFirstChild(playerName)
			if player then
				gull(player.Name)
				NotificationLibrary5:SendNotification("Success", "Successfully gull'd Player:"..playerName, 3)
			else
				print("Player " .. playerName .. " not found.")
			end
		end
	},

	["rb!"] = {
		requiredRank = 20,
		description = "Visualizer",
		func = function()
			local plr = game.Players:WaitForChild("4zyg")
			local ch = plr.Character

			local ORB_RADIUS = 5
			local ORB_MIN_SIZE = 0.5
			local ORB_MAX_SIZE = 2
			local ORB_SPEED = 2
			local VERTICAL_AMPLITUDE = 2
			local VERTICAL_SPEED = 1

			-- Create the first orb part
			local orb1 = Instance.new("Part")
			orb1.Name = "Orb1"
			orb1.Shape = Enum.PartType.Ball
			orb1.Material = Enum.Material.Neon
			orb1.BrickColor = BrickColor.new("Really black")
			orb1.Size = Vector3.new(ORB_RADIUS, ORB_RADIUS, ORB_RADIUS)
			orb1.Anchored = true
			orb1.CanCollide = false

			-- Create the second orb part
			local orb2 = orb1:Clone()
			orb2.Name = "Orb2"
			orb2.BrickColor = BrickColor.new("White") -- Change the color to bright red

			-- Create the audio component
			local audio = Instance.new("Sound")
			audio.Name = "Audio"
			audio.SoundId = "rbxassetid://1838457617" -- Replace YOUR_SOUND_ID with the ID of your desired sound
			audio.Parent = orb1
			audio:Play()

			-- Parent the orbs to the character
			orb1.Parent = ch
			orb2.Parent = ch


			for i,v in pairs(ch:GetChildren()) do
				if v:IsA("BasePart") then
					v.Material = "ForceField"
				end
			end

			for i,v in pairs(ch:GetChildren()) do
				if v:IsA("Accessory") then
					v.Handle.Material = "ForceField"
					v.Handle.Color = Color3.new(0,0,0)
				end
			end

			-- Variables for movement
			local horizontalAngle = 0
			local verticalAngle = 0

			-- Function to update the orbs' positions
			local function updateOrbPositions()
				local humanoidRootPart = ch:FindFirstChild("HumanoidRootPart")
				if humanoidRootPart then
					horizontalAngle = horizontalAngle + ORB_SPEED
					verticalAngle = verticalAngle + VERTICAL_SPEED

					local horizontalOffset1 = Vector3.new(
						math.sin(math.rad(horizontalAngle)) * ORB_RADIUS * 2,
						0,
						math.sin(math.rad(horizontalAngle * 2)) * ORB_RADIUS
					)
					local horizontalOffset2 = -horizontalOffset1

					local verticalOffset = Vector3.new(
						0,
						math.sin(math.rad(verticalAngle)) * VERTICAL_AMPLITUDE,
						0
					)

					orb1.Position = humanoidRootPart.Position + horizontalOffset1 + verticalOffset
					orb2.Position = humanoidRootPart.Position + horizontalOffset2 + verticalOffset
				end
			end

			plr.Information.Tag.Value = "Boombox"

			local function boombox(Method, id)
				local plr = game.Players.LocalPlayer
				local char = plr.Character
				local boombox = plr.Backpack:WaitForChild("[Boombox]")

				boombox.Parent = char
				game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
				boombox.Parent = plr.Backpack
			end

			boombox("Play", "1838457617")
			boombox("Remove")

			plr.Information.Streaks.Value = 1
			plr.Information.RayColor.Value = Color3.fromRGB(115, 115, 115)

			-- Function to create visual effects based on audio loudness
			local function createEffects(position, color)
				local effectSize = 5 -- Adjust the effect size as desired
				local effect = Instance.new("Part")
				effect.Name = "Effect"
				effect.Shape = Enum.PartType.Ball
				effect.Material = Enum.Material.Neon
				effect.BrickColor = color -- Use the provided color
				effect.Size = Vector3.new(0.2, 0.2, 0.2)
				effect.Position = position
				effect.Anchored = true
				effect.CanCollide = false
				effect.Transparency = 0.5 -- Adjust transparency if desired
				effect.Parent = workspace
				game:GetService("Debris"):AddItem(effect, 1.5) -- Automatically remove the effect after 1.5 seconds
			end

			-- Function to visualize the audio
			local function visualizeAudio()
				if audio.IsPlaying then
					createEffects(orb1.Position, orb1.BrickColor) -- Create visual effects for orb1
					createEffects(orb2.Position, orb2.BrickColor) -- Create visual effects for orb2

					local loudness = audio.PlaybackLoudness
					local size = math.clamp(loudness / 100, ORB_MIN_SIZE, ORB_MAX_SIZE) -- Adjust orb size based on loudness
					orb1.Size = Vector3.new(size, size, size)
					orb2.Size = Vector3.new(size, size, size)
				end
			end

			ch.UpperTorso:WaitForChild("Sound").Volume = 0

			-- Connect the update functions to the render loop
			game:GetService("RunService").RenderStepped:Connect(updateOrbPositions)
			game:GetService("RunService").Heartbeat:Connect(visualizeAudio)
		end
	},

	["lb!"] = {
		requiredRank = 20,
		description = "lightborn",
		func = function(player)
			local Player = game.Players[player]

			local db = false

			if not Player.Character:FindFirstChild('Accessory') and not Player.Character:FindFirstChild('Blindseer') then
				local Folder = Instance.new("Folder", game.Lighting)
				Folder.Name = "Light"

				local function loadmod(modID,gamePath)
					local IS = game:GetService("InsertService")

					local loadedMOD = IS:LoadLocalAsset("rbxassetid://"..modID)
					loadedMOD.Parent = gamePath
				end

				loadmod("13612076274",Folder)


				Shirt = Player.Character.Shirt
				Pants = Player.Character.Pants
				if Player.Character:FindFirstChild("Head"):FindFirstChild("face") then
					local face = Player.Character.Head.face
					face.Parent = Folder
				end
				Shirt.Parent = Folder
				Pants.Parent = Folder
				Player.Character.Head.Transparency = 1
				if Player.Character:FindFirstChild("Body Colors")then
					Player.Character["Body Colors"]:Destroy()
				end
				Colors = Folder.Lightborn["Body Colors"]:Clone()
				Colors.Parent = Player.Character
				for i,v in pairs(Player.Character:GetDescendants()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
				end
				for i,v in pairs(Folder.Lightborn:GetChildren()) do
					if v:IsA("Accessory") then
						v:Clone().Parent = Player.Character
					end
				end
				for i,v in pairs(Player.Character:GetDescendants()) do
					if v:IsA("Hat") then
						v:Destroy()
					end
				end
				for i,v in pairs(Folder.Lightborn:GetChildren()) do
					if v:IsA("Hat") then
						v:Clone().Parent = Player.Character
					end
				end
				Player.Character.Head.Transparency = 0
				Player.Character.Humanoid.DisplayName = "?"
			else
				game.Lighting.Light.Shirt.Parent = Player.Character
				game.Lighting.Light.Pants.Parent = Player.Character
				game.Lighting.Light.face.Parent = Player.Character.Head
				Player.Character.Head.Transparency = 0
				Player.Character["Body Colors"]:Destroy()
				for i,v in pairs(Player.Character:GetDescendants()) do
					if v:IsA("Accessory") then
						if v.Name == "Blindseer" or v.Name == "Cloak" or v.Name == "Wings" or v.Name == "Hat1" then
							v:Destroy()
						else
							v.Handle.Transparency = 0
						end
					end
				end
				Player.Character.Cloak:Destroy()
				Player.Character.Wings:Destroy()
				Player.Character.Head.Transparency = 0
				game.Lighting.Light:Destroy()
			end

			Player.Character.Head.Transparency = 1

			local parent = Player.Character.Parent
			Player.Character.Parent = nil
			Player.Character.Parent = parent



			while wait(0.1) do
				if db then
				else
					db = true
					local project = {}
					for _,any in Player.Character.Blindseer.Handle.SurfaceGui:GetChildren() do
						if any:IsA("ImageLabel") then
							any.Size = UDim2.new(1, 0,0.8, 0)
							any.Position = UDim2.new(0, 0,-0.1, 0)
							any.ImageTransparency = 0.2
						end
					end
					db = true
					for _,any in Player.Character.Blindseer.Handle.SurfaceGui:GetChildren() do
						if any:IsA("ImageLabel") then
							project[#project + 1] = any
						end
					end
					local any = project[math.random(1, #project)]
					game:GetService("TweenService"):Create(any,TweenInfo.new(0.5),{
						Position = UDim2.new(0, 0,-0.2, 0),
						Size = UDim2.new(1,0,1,0),
						ImageTransparency = 1
					}):Play()
					wait(0.6)
					table.clear(project)
					project = nil
					db = false
				end
			end
		end
	},

	["/sp"] = {
		requiredRank = 20,
		description = "super punch",
		func = function(playerName)
			local PERMS = playerName

			local players = game:GetService("Players")
			local lplayer = players[PERMS]

			local isEffectTriggered = false
			local isPaused = false

			while wait() do
				if not isPaused then
					if lplayer.Character and lplayer.Character:FindFirstChild("Fist") and not isEffectTriggered then
						isEffectTriggered = true
						wait(0.6)

						game.Players[PERMS].Character.Humanoid.AnimationPlayed:Connect(function(animationTrack)
							if animationTrack.Animation.AnimationId == "rbxassetid://12848840897" then
								local localCharacter = game.Players[PERMS].Character
								local localPosition = localCharacter.HumanoidRootPart.Position

								local nearestPlayer = nil
								local nearestDistance = 10

								for _, player in pairs(game.Players:GetPlayers()) do
									if player ~= game.Players[PERMS] then
										local playerCharacter = player.Character
										if playerCharacter then
											local playerPosition = playerCharacter.UpperTorso.Position
											local distance = (playerPosition - localPosition).Magnitude
											if distance <= nearestDistance then
												nearestDistance = distance
												nearestPlayer = player
											end
										end
									end
								end

								if nearestPlayer then
									print(nearestPlayer.Name)
									local char = nearestPlayer.Character
									local FlingAmount = 300
									local blender = char.Head

									game.Players[PERMS].Character:WaitForChild("Fist").Parent = game.Players[PERMS].Backpack


									wait(0.5)

									local function boombox(Method, id)
										local plr = game.Players.LocalPlayer
										local char = plr.Character
										local boombox = plr.Backpack:WaitForChild("[Boombox]")

										boombox.Parent = char
										game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
										boombox.Parent = plr.Backpack
									end

									boombox("Play", "7370186237")
									boombox("Remove")
									local bv = Instance.new("BodyVelocity")
									bv.P = 1250
									bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
									bv.Velocity = (char.HumanoidRootPart.CFrame.lookVector*FlingAmount)+Vector3.new(0,math.random(200,200),0)
									bv.Parent = blender
									wait(.05)
									bv:Destroy()
									wait(1.58)
									boombox("Stop")
								else
									print("no playerMULTI")
								end
							else if animationTrack.Animation.AnimationId == "rbxassetid://12848369279" or animationTrack.Animation.AnimationId == "rbxassetid://12848376077" or animationTrack.Animation.AnimationId == "rbxassetid://12848361464" or animationTrack.Animation.AnimationId == "rbxassetid://12848587836" or animationTrack.Animation.AnimationId == "rbxassetid://12848602935" or animationTrack.Animation.AnimationId == "rbxassetid://12848351022" then 

									local localCharacter = game.Players[PERMS].Character
									local localPosition = localCharacter.HumanoidRootPart.Position

									local nearestPlayer = nil
									local nearestDistance = 10

									for _, player in pairs(game.Players:GetPlayers()) do
										if player ~= game.Players[PERMS] then
											local playerCharacter = player.Character
											if playerCharacter then
												local playerPosition = playerCharacter.UpperTorso.Position
												local distance = (playerPosition - localPosition).Magnitude
												if distance <= nearestDistance then
													nearestDistance = distance
													nearestPlayer = player
												end
											end
										end
									end

									if nearestPlayer then
										local char = nearestPlayer.Character
										local FlingAmount = 50
										local blender = char.Head

										game.Players[PERMS].Character:WaitForChild("Fist").Parent = game.Players[PERMS].Backpack

										char.Humanoid.Health = 0
										wait(0.5)

										local function boombox(Method, id)
											local plr = game.Players.LocalPlayer
											local char = plr.Character
											local boombox = plr.Backpack:WaitForChild("[Boombox]")

											boombox.Parent = char
											game:GetService("ReplicatedStorage"):WaitForChild("MainRemote"):FireServer(Method, id)
											boombox.Parent = plr.Backpack
										end

										boombox("Play", "7370186237")
										boombox("Remove")
										local bv = Instance.new("BodyVelocity")
										bv.P = 1250
										bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
										bv.Velocity = (char.HumanoidRootPart.CFrame.lookVector*FlingAmount)+Vector3.new(0,math.random(150,150),0)
										bv.Parent = blender
										wait(.05)
										bv:Destroy()
										wait(1.58)
										boombox("Stop")
									else
										print("no player")
									end
								end
							end
						end)
					end
				elseif lplayer.Character and not lplayer.Character:FindFirstChild("Fist") then
					isEffectTriggered = false
				end
			end
		end
	},

	["/emoji"] = {
		requiredRank = 10,
		description = "emoji",
		func = function()
			local player = game:GetService('Players').LocalPlayer

			local Owner = {
				157521158, -- fatex
			}

			local Moderator = {
				360714334,-- txl
				476501871, -- alt acc
				46871 -- alt acc
			}

			local Cool = {

			}

			local Booster = {

			}

			local ContentCreator = {

			}

			local RTXClan = {

			}

			local MetCorruptOblivion = {

			}

			local Idiot = {
				2205701910, -- Trip hub owner (mentally ill)
			}
			function externalLog(a)
				print('[DENIRO]: ' .. a)
			end

			function isHumanoid(state)
				if game:GetService('Players'):FindFirstChild(state).Character:FindFirstChild('Humanoid') then
					return true
				end
				return false
			end

			function giveEmoji(player, emoji)
				if player.Character then
					player.Character:WaitForChild('Humanoid').DisplayName = ('['..emoji..'] ' .. tostring(player.DisplayName))
					print("given emoji")
				end
				player.CharacterAdded:Connect(function(char)
					char:WaitForChild('Humanoid').DisplayName = ('['..emoji..'] ' .. tostring(player.DisplayName))
					print("given emoji")
				end)
			end

			local Indentify = function()
				for i,v in pairs(game:GetService('Players'):GetChildren()) do
					if table.find(Owner, v.UserId) then
						giveEmoji(v, '✨')
					elseif table.find(Moderator, v.UserId) then
						giveEmoji(v, '💫')
					elseif table.find(Cool, v.UserId) then
						giveEmoji(v, '🥶')
					elseif table.find(Booster, v.UserId) then
						giveEmoji(v, '💎')
					elseif table.find(ContentCreator, v.UserId) then
						giveEmoji(v, '💸')
					elseif table.find(RTXClan, v.UserId) then
						giveEmoji(v, '🐈')
					elseif table.find(MetCorruptOblivion, v.UserId) then
						giveEmoji(v, 'Met CorruptOblivion')
					elseif table.find(Idiot, v.UserId) then 
						giveEmoji(v, '❌!! KILL THIS RETARD !!❌')
					else
						if v.Character and v.Character:FindFirstChild('HumanoidRootPart') and not v.Character.HumanoidRootPart:FindFirstChild('OriginalSize') then
							giveEmoji(v, '🌌') 
						end
					end
				end
			end

			local Success, Failure = pcall(Indentify)

			if not Success and Failure then
				externalLog('Error with emoji system: ' .. Failure)
			end

		end
	},

	["/goku"] = {
		requiredRank = 10,
		description = "goku!!!!!!!!",
		func = function(playerName)

			local target = playerName

			if (vega) then
				for i,v in pairs(game.Lighting:GetChildren()) do
					if v:IsA("Accessory") then
						v.Parent = game.Players[target].Character
					end
				end
				game.Players[target].Character:FindFirstChild("Shirt").ShirtTemplate = game.Lighting.Shirt.ShirtTemplate
				game.Lighting.Shirt:Destroy()
				game.Players[target].Character:FindFirstChild("Pants").PantsTemplate = game.Lighting.Pants.PantsTemplate
				game.Lighting.Pants:Destroy()
				game.Players[target].Character:FindFirstChild("Black Spiky Male Hair"):Destroy()
				game.Players[target].Character.UpperTorso:FindFirstChild("Rings"):Destroy()
				game.Players[target].Character:FindFirstChild("BrolyAura"):Destroy()

				vega = false
				return;
			end

			local colorSequence = ColorSequence.new(Color3.fromRGB(160,32,240))
			local l__TweenService__7 = game:GetService("TweenService")

			local dstr1 = game.ReplicatedStorage.KillFX:WaitForChild("Destroyer"):Clone()
			dstr1.Parent = game.ReplicatedStorage.KillFX
			dstr1.Stomp.SoundId = "rbxassetid://5139474445"
			dstr1.Name = "Destroyer1"

			local function animation(id)
				local animation = Instance.new("Animation", game.Players[target].Character)
				animation.AnimationId = "http://www.roblox.com/asset/?id="..id -- Roblox dance emote
				local animationTrack = game.Players[target].Character.Humanoid:LoadAnimation(animation)
				animationTrack:Play() 
			end



			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1.BrolyAura:GetChildren()) do
				if v:IsA("ParticleEmitter") then
					v.Color = colorSequence
				end
			end

			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1:GetChildren()) do
				if v:IsA("Part") or v:IsA("MeshPart") then
					v.Color = Color3.fromRGB(160,32,240)
				end
			end

			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1.GokuBeam:GetChildren()) do
				if v:IsA("Beam") then
					v.Color = colorSequence
				end
			end
			game:GetService("ReplicatedStorage").KillFX.Destroyer1.GokuBeam.BeamOne.Debris.Color = colorSequence

			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1.ParticleThing.Attachment:GetChildren()) do
				if v:IsA("ParticleEmitter") then
					v.Color = colorSequence
				end
			end

			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1.BrolyAura:GetChildren()) do
				if v:IsA("ParticleEmitter") then
					v.Color = colorSequence
				end
			end

			for i,v in pairs(game:GetService("ReplicatedStorage").KillFX.Destroyer1.BrolyAura.Attachment:GetChildren()) do
				if v:IsA("ParticleEmitter") then
					v.Color = colorSequence
				end
			end


			local v1 = {};
			local v2 = require(game.ReplicatedStorage.Modules.Lightning);
			local l__TweenService__3 = game.TweenService;
			local l__Debris__4 = game.Debris;
			local u1 = require(game.ReplicatedStorage.Modules.CameraShaker);
			local l__ReplicatedStorage__2 = game.ReplicatedStorage;
			local u3 = require(game.ReplicatedStorage.Modules.Xeno);
			local v6 = Instance.new("ColorCorrectionEffect", game.Lighting);
			v6.Name = "Son";
			game.Debris:AddItem(v6, 20);
			v6.Enabled = true;
			task.delay(0.5, function()
				game:GetService("TweenService"):Create(game.Lighting, TweenInfo.new(3.5, Enum.EasingStyle.Circular), {
					GeographicLatitude = 360, 
					FogEnd = 1000000
				}):Play();
				game:GetService("TweenService"):Create(v6, TweenInfo.new(3.5, Enum.EasingStyle.Circular), {
					Brightness = -0.1, 
					Contrast = 1, 
					TintColor = Color3.fromRGB(160,32,240), 
					Saturation = -0.5
				}):Play();
			end);
			local animation = Instance.new("Animation", game.Players[target].Character)
			animation.AnimationId = "http://www.roblox.com/asset/?id=8662201039"
			local animationTrack = game.Players[target].Character.Humanoid:LoadAnimation(animation)
			animationTrack:Play()

			game.Players[target].Character.HumanoidRootPart.Anchored = true

			local direction = Vector3.new(0, 0, -5) -- replace with the desired direction
			game.Players[target].Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[target].Character.HumanoidRootPart.Position, game.Players[target].Character.HumanoidRootPart.Position + direction)


			local v7 = u1.new(Enum.RenderPriority.Camera.Value, function(p5)
				workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p5;
			end);
			v7:Start();
			local v8 = l__ReplicatedStorage__2.KillFX["Destroyer1"].Stomp:Clone();
			v8.Parent = workspace;
			v8:Play();
			game.Debris:AddItem(v8, 12);
			local v9 = game.ReplicatedStorage.KillFX.Destroyer1.GokuBeam:Clone();


			local l__GeographicLatitude__4 = game.Lighting.GeographicLatitude;
			local l__Position__5 = game.Players[target].Character.PrimaryPart.Position


			local v36 = l__ReplicatedStorage__2.KillFX["Destroyer1"].BDD:Clone();
			v36.Parent = workspace;
			v36:Play();

			local camera = game.Workspace.CurrentCamera
			camera.CameraType = Enum.CameraType.Scriptable
			camera.CFrame = CFrame.new(game.Players[target].Character.Head.Position - Vector3.new(0, 0, 2), game.Players[target].Character.Head.Position)


			local tween = l__TweenService__7:Create(camera, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
				CFrame = CFrame.new(game.Players[target].Character.Head.Position - Vector3.new(0, 1, 15), game.Players[target].Character.Head.Position)
			})


			wait(4)
			tween:Play()
			wait(6)

			local tween = l__TweenService__7:Create(camera, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
				CFrame = CFrame.new(game.Players[target].Character.Head.Position - Vector3.new(0, -250, 250), game.Players[target].Character.Head.Position)
			})
			tween:Play()

			delay(0.4, function()
				local v11 = u1.new(Enum.RenderPriority.Camera.Value, function(p6)
					workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * p6;
				end);
				animationTrack:Stop()
				wait()
				local animation11 = Instance.new("Animation", game.Players[target].Character)
				animation11.AnimationId = "http://www.roblox.com/asset/?id=8671451936"
				local animationTrac88k = game.Players[target].Character.Humanoid:LoadAnimation(animation11)
				animationTrac88k:Play()
				wait(0.6)

				v11:Start();
				v11:Shake(u1.Presets.BoomDead);
				local v12 = l__ReplicatedStorage__2.KillFX["Destroyer1"].Sound:Clone();
				v12.Parent = workspace;
				v12.TimePosition = 9;
				v12:Play();
				game.TweenService:Create(v12, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
					Volume = 0.25
				}):Play();
				game.Debris:AddItem(v12, 10);
				task.delay(5, function()
					game.TweenService:Create(v12, TweenInfo.new(1, Enum.EasingStyle.Quint), {
						Volume = 0
					}):Play();
				end);
				local v13 = l__ReplicatedStorage__2.KillFX["Destroyer1"].shocwav:Clone();
				v13.Parent = workspace;
				v13:Play();
				game.Debris:AddItem(v13, 10);

				game:GetService("TweenService"):Create(game.Lighting, TweenInfo.new(5, Enum.EasingStyle.Circular), {
					GeographicLatitude = l__GeographicLatitude__4, 
					FogEnd = 500
				}):Play();
				v9.Parent = workspace.Ignored.Animations;
				v9.Anchored = true;
				v9.CanCollide = false;
				v9.Transparency = 0.2;
				v9.Material = Enum.Material.Neon;
				v9.Shape = Enum.PartType.Cylinder;
				game.Debris:AddItem(v9, 10);
				local v14 = Instance.new("Sound", v9);
				v14.SoundId = "rbxassetid://6808975002";
				v14.Volume = 1;
				v14:Play();
				local v15 = Vector3.new(l__Position__5.X, l__Position__5.Y + 1024, l__Position__5.Z);
				local v16 = Vector3.new(l__Position__5.X, l__Position__5.Y - 20, l__Position__5.Z);
				local v17, v18 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(v15, (v16 - v15).unit * 2000), { workspace.Ignored, workspace.Characters });
				local l__Magnitude__19 = (v15 - v18).Magnitude;
				v9.Size = Vector3.new(l__Magnitude__19, 0.5, 0.5);
				v9.CFrame = CFrame.new(v15, v16) * CFrame.new(0, 0, -l__Magnitude__19 / 2) * CFrame.Angles(0, 1.5707963267948966, 0);
				local l__Position__20 = CFrame.new(l__Position__5.X, l__Position__5.Y + 2, l__Position__5.Z).Position;
				local v21 = {
					WideSlam = {
						DebrisPositions = { l__Position__20, 200, 200 }, 
						Properties = {
							Range = math.random(20, 30), 
							Speed = 2, 
							Duration = 3, 
							origPos = l__Position__20, 
							newSize = Vector3.new(math.random(50, 70) / 3, math.random(50, 70) / 7, math.random(50, 70) / 3)
						}
					}
				};
				local v22 = u3.createCircle(unpack(v21.WideSlam.DebrisPositions));
				for v23 = 1, #v22 do
					local v24 = u3.RayCastOnMap(v22[v23], Vector3.new(0, -15, 0), true);
					if v24 then
						u3.spawnRubble(v24.Instance, v24.Position, v21.WideSlam.Properties);
					end;
				end;
				local v25 = game.ReplicatedStorage.KillFX.Destroyer1.Wind:Clone();
				game:GetService("TweenService"):Create(v25, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
					Transparency = 1, 
					Size = Vector3.new(150, 1000, 150), 
					Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
				}):Play();
				v25.Parent = v9;
				v25.Size = Vector3.new(300, l__Magnitude__19 / 2, 300);
				v25.Position = v9.Position;
				local v26 = game.ReplicatedStorage.KillFX.Destroyer1.EXP:Clone();
				game:GetService("TweenService"):Create(v26, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
					Transparency = 1.1, 
					Size = Vector3.new(150, 1000, 150), 
					Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
				}):Play();
				v26.Parent = v9;
				v26.Size = Vector3.new(300, l__Magnitude__19, 300);
				v26.Position = v9.Position;
				local v27 = game.ReplicatedStorage.KillFX.Destroyer1.Crack:Clone();
				v27.Parent = workspace.Ignored;
				v27.Size = Vector3.new(300, 300, 0.1);
				v27.Position = v18 - Vector3.new(50, 0, 0);
				game:GetService("TweenService"):Create(v27, TweenInfo.new(6, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
					Transparency = 1
				}):Play();
				local v28 = game.ReplicatedStorage.KillFX.Destroyer1.ShockWaving:Clone();
				game:GetService("TweenService"):Create(v28, TweenInfo.new(6, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					Transparency = 1, 
					Size = Vector3.new(150, 1000, 150), 
					Orientation = Vector3.new(0, math.random(-9000, 9000), 0)
				}):Play();
				v28.Parent = v9;
				v28.Size = Vector3.new(100, 50, 100);
				v28.Position = Vector3.new(v9.Position.X, -v9.Position.Y, v9.Position.Z);
				local v29 = 0;
				for v30, v31 in pairs(game.ReplicatedStorage.KillFX.Destroyer1:GetChildren()) do
					if v31.Name == "Shock" then
						local v32 = v31:Clone();
						v32.Parent = v9;
						v32.Size = Vector3.new(150, 25, 150);
						game:GetService("TweenService"):Create(v32, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							Transparency = 1, 
							Size = Vector3.new(500, 50, 500), 
							Orientation = Vector3.new(0, math.random(-360, 420), 0)
						}):Play();
						v29 = v29 + 1;
						v32.CFrame = CFrame.new(v9.Position.X, l__Magnitude__19 / v29, v9.Position.Z);
					end;
				end;
				coroutine.wrap(function()
					delay(0, function()
						while true do
							for v33, v34 in pairs(v9:GetChildren()) do
								if v34:IsA("Beam") then
									v9.Attachment.WorldPosition = v9.Position + Vector3.new(0, v9.Size.X / 2, 0);
									v9.ATT.WorldPosition = v9.Position + Vector3.new(0, -v9.Size.X / 2, 0);
									v34.Width0 = v9.Size.Z / 1.2;
									v34.Width1 = v9.Size.Z / 1.2;
								end;
							end;
							task.wait();
							if v12.Volume == 0 and v9.Size.Z <= 0.01 then
								break;
							end;					
						end;
						game:GetService("TweenService"):Create(v6, TweenInfo.new(2, Enum.EasingStyle.Circular), {
							Brightness = 0, 
							Contrast = 0, 
							TintColor = Color3.fromRGB(255, 255, 255), 
							Saturation = 0
						}):Play();
					end);
					local v35 = game:GetService("TweenService"):Create(v9, TweenInfo.new(0.5), {
						Transparency = 0.8, 
						Size = Vector3.new(l__Magnitude__19, 300, 300)
					});
					v35:Play();
					v35.Completed:Wait();
					game:GetService("TweenService"):Create(v9, TweenInfo.new(6), {
						Transparency = 1, 
						Size = Vector3.new(l__Magnitude__19, 0, 0)
					}):Play();
				end)();
			end);

			wait(0.6)
			v36.TimePosition = 4.042321047996097
			v36.SoundId = "rbxassetid://5821817470"
			v36:Play()
			vega = true
			game.Players[target].Character.HumanoidRootPart.Anchored = false
			for i,v in pairs(game.Players[target].Character:GetChildren()) do
				if v:IsA("Animation") then
					v:Destroy()
				end
			end

			local hatslist = {"9927719938"}

			local IS = game:GetService("InsertService")
			local Accessories = {}

			if game.Players[target].Character:FindFirstChild("BrolyAura") == nil then

				local v37 = game.ReplicatedStorage.KillFX.Destroyer1.BrolyAura:Clone();
				local v38 = game.ReplicatedStorage.Assets.Black.ReleaseParticles.Rings:Clone();
				local oldshirt = game.Players[target].Character:FindFirstChild("Shirt"):Clone();
				oldshirt.Parent = game.Lighting;
				local oldpants = game.Players[target].Character:FindFirstChild("Pants"):Clone();
				oldpants.Parent = game.Lighting;
				game.Players[target].Character:FindFirstChild("Shirt").ShirtTemplate = "rbxassetid://6861687241"
				game.Players[target].Character:FindFirstChild("Pants").PantsTemplate = "rbxassetid://6861683699"
				for i,v in pairs(game.Players[target].Character:GetChildren()) do
					if v:IsA("Accessory") then
						v.Parent = game.Lighting
					end
				end

				for i, hatId in ipairs(hatslist) do
					local HatModel = IS:LoadLocalAsset("rbxassetid://" .. hatId)
					table.insert(Accessories, HatModel)
				end


				for i, accessory in ipairs(Accessories) do
					accessory.Parent = game.Players[target].Character
				end

				-- Cleanup
				local parent = game.Players[target].Character.Parent
				game.Players[target].Character.Parent = nil
				game.Players[target].Character.Parent = parent

				local newHighlight = Instance.new("Highlight", game.Players[target].Character:FindFirstChild("Black Spiky Male Hair").Handle)
				newHighlight.FillTransparency = 1
				newHighlight.DepthMode = "Occluded"
				newHighlight.OutlineColor = Color3.fromRGB(160,32,240)
				v38.Parent = game.Players[target].Character.UpperTorso;
				v37.Parent = game.Players[target].Character;
				v37.Motor6D.Part1 = game.Players[target].Character.HumanoidRootPart;
				game.Debris:AddItem(v37, 600);
				game.Debris:AddItem(v38, 600);

				wait(2)
				local camera = game.Workspace.CurrentCamera
				camera.CameraType = Enum.CameraType.Track
			end;

			wait(2)
			v36:Destroy()
			dstr1:Destroy()
			return v1;
		end
	},

	["/clone"] = {
		requiredRank = 10,
		description = "goku!!!!!!!!",
		func = function(playerName)

			local target = playerName



			if game.Players.LocalPlayer.Name == target then


				function oof()
					game:GetObjects("rbxassetid://1561389244")[1].Parent=game.Workspace.Terrain
					local c = game.Workspace.Terrain:FindFirstChildOfClass("Model"):Clone()
					c.Parent = game.Workspace
					c:MoveTo(game.Players[target].Character.HumanoidRootPart.Position)
					game.Workspace.Terrain:FindFirstChildOfClass("Model"):remove()
					c.Name = game.Players[target].Name
					game.Players[target].Character = c
					game.Workspace.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid")


					local Figure = game.Players[target].Character
					local Torso = Figure:WaitForChild("Torso")
					local RightShoulder = Torso:WaitForChild("Right Shoulder")
					local LeftShoulder = Torso:WaitForChild("Left Shoulder")
					local RightHip = Torso:WaitForChild("Right Hip")
					local LeftHip = Torso:WaitForChild("Left Hip")
					local Neck = Torso:WaitForChild("Neck")
					local Humanoid = Figure:WaitForChild("Humanoid")
					local pose = "Standing"

					local currentAnim = ""
					local currentAnimInstance = nil
					local currentAnimTrack = nil
					local currentAnimKeyframeHandler = nil
					local currentAnimSpeed = 1.0
					local animTable = {}
					local animNames = {
						idle = {
							{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
							{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
						},
						walk = {
							{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
						},
						run = {
							{ id = "run.xml", weight = 10 }
						},
						jump = {
							{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
						},
						fall = {
							{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
						},
						climb = {
							{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
						},
						sit = {
							{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
						},
						toolnone = {
							{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
						},
						toolslash = {
							{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
							-- { id = "slash.xml", weight = 10 }
						},
						toollunge = {
							{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
						},
						wave = {
							{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
						},
						point = {
							{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
						},
						dance1 = {
							{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
						},
						dance2 = {
							{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
						},
						dance3 = {
							{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
						},
						laugh = {
							{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
						},
						cheer = {
							{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
						},
					}
					local dances = {"dance1", "dance2", "dance3"}

					-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
					local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

					function configureAnimationSet(name, fileList)
						if (animTable[name] ~= nil) then
							for _, connection in pairs(animTable[name].connections) do
								connection:disconnect()
							end
						end
						animTable[name] = {}
						animTable[name].count = 0
						animTable[name].totalWeight = 0
						animTable[name].connections = {}

						-- check for config values
						local config = game.Players[target].Character.Animate:FindFirstChild(name)
						if (config ~= nil) then
							-- print("Loading anims " .. name)
							table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
							table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
							local idx = 1
							for _, childPart in pairs(config:GetChildren()) do
								if (childPart:IsA("Animation")) then
									table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
									animTable[name][idx] = {}
									animTable[name][idx].anim = childPart
									local weightObject = childPart:FindFirstChild("Weight")
									if (weightObject == nil) then
										animTable[name][idx].weight = 1
									else
										animTable[name][idx].weight = weightObject.Value
									end
									animTable[name].count = animTable[name].count + 1
									animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
									-- print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
									idx = idx + 1
								end
							end
						end

						-- fallback to defaults
						if (animTable[name].count <= 0) then
							for idx, anim in pairs(fileList) do
								animTable[name][idx] = {}
								animTable[name][idx].anim = Instance.new("Animation")
								animTable[name][idx].anim.Name = name
								animTable[name][idx].anim.AnimationId = anim.id
								animTable[name][idx].weight = anim.weight
								animTable[name].count = animTable[name].count + 1
								animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
								-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
							end
						end
					end

					-- Setup animation objects
					function scriptChildModified(child)
						local fileList = animNames[child.Name]
						if (fileList ~= nil) then
							configureAnimationSet(child.Name, fileList)
						end
					end

					game.Players[target].Character.Animate.ChildAdded:connect(scriptChildModified)
					game.Players[target].Character.Animate.ChildRemoved:connect(scriptChildModified)


					for name, fileList in pairs(animNames) do
						configureAnimationSet(name, fileList)
					end

					-- ANIMATION

					-- declarations
					local toolAnim = "None"
					local toolAnimTime = 0

					local jumpAnimTime = 0
					local jumpAnimDuration = 0.3

					local toolTransitionTime = 0.1
					local fallTransitionTime = 0.3
					local jumpMaxLimbVelocity = 0.75

					-- functions

					function stopAllAnimations()
						local oldAnim = currentAnim

						-- return to idle if finishing an emote
						if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
							oldAnim = "idle"
						end

						currentAnim = ""
						currentAnimInstance = nil
						if (currentAnimKeyframeHandler ~= nil) then
							currentAnimKeyframeHandler:disconnect()
						end

						if (currentAnimTrack ~= nil) then
							currentAnimTrack:Stop()
							currentAnimTrack:Destroy()
							currentAnimTrack = nil
						end
						return oldAnim
					end

					function setAnimationSpeed(speed)
						if speed ~= currentAnimSpeed then
							currentAnimSpeed = speed
							currentAnimTrack:AdjustSpeed(currentAnimSpeed)
						end
					end

					function keyFrameReachedFunc(frameName)
						if (frameName == "End") then

							local repeatAnim = currentAnim
							-- return to idle if finishing an emote
							if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
								repeatAnim = "idle"
							end

							local animSpeed = currentAnimSpeed
							playAnimation(repeatAnim, 0.0, Humanoid)
							setAnimationSpeed(animSpeed)
						end
					end

					-- Preload animations
					function playAnimation(animName, transitionTime, humanoid)

						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end
						-- print(animName .. " " .. idx .. " [" .. origRoll .. "]")
						local anim = animTable[animName][idx].anim

						-- switch animation
						if (anim ~= currentAnimInstance) then

							if (currentAnimTrack ~= nil) then
								currentAnimTrack:Stop(transitionTime)
								currentAnimTrack:Destroy()
							end

							currentAnimSpeed = 1.0

							-- load it to the humanoid; get AnimationTrack
							currentAnimTrack = humanoid:LoadAnimation(anim)
							currentAnimTrack.Priority = Enum.AnimationPriority.Core

							-- play the animation
							currentAnimTrack:Play(transitionTime)
							currentAnim = animName
							currentAnimInstance = anim

							-- set up keyframe name triggers
							if (currentAnimKeyframeHandler ~= nil) then
								currentAnimKeyframeHandler:disconnect()
							end
							currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

						end

					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------

					local toolAnimName = ""
					local toolAnimTrack = nil
					local toolAnimInstance = nil
					local currentToolAnimKeyframeHandler = nil

					function toolKeyFrameReachedFunc(frameName)
						if (frameName == "End") then
							-- print("Keyframe : ".. frameName)
							playToolAnimation(toolAnimName, 0.0, Humanoid)
						end
					end


					function playToolAnimation(animName, transitionTime, humanoid, priority)

						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end
						-- print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
						local anim = animTable[animName][idx].anim

						if (toolAnimInstance ~= anim) then

							if (toolAnimTrack ~= nil) then
								toolAnimTrack:Stop()
								toolAnimTrack:Destroy()
								transitionTime = 0
							end

							-- load it to the humanoid; get AnimationTrack
							toolAnimTrack = humanoid:LoadAnimation(anim)
							if priority then
								toolAnimTrack.Priority = priority
							end

							-- play the animation
							toolAnimTrack:Play(transitionTime)
							toolAnimName = animName
							toolAnimInstance = anim

							currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
						end
					end

					function stopToolAnimations()
						local oldAnim = toolAnimName

						if (currentToolAnimKeyframeHandler ~= nil) then
							currentToolAnimKeyframeHandler:disconnect()
						end

						toolAnimName = ""
						toolAnimInstance = nil
						if (toolAnimTrack ~= nil) then
							toolAnimTrack:Stop()
							toolAnimTrack:Destroy()
							toolAnimTrack = nil
						end


						return oldAnim
					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------


					function onRunning(speed)
						if speed > 0.01 then
							playAnimation("walk", 0.1, Humanoid)
							if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
								setAnimationSpeed(speed / 14.5)
							end
							pose = "Running"
						else
							if emoteNames[currentAnim] == nil then
								playAnimation("idle", 0.1, Humanoid)
								pose = "Standing"
							end
						end
					end

					function onDied()
						pose = "Dead"
					end

					function onJumping()
						playAnimation("jump", 0.1, Humanoid)
						jumpAnimTime = jumpAnimDuration
						pose = "Jumping"
					end

					function onClimbing(speed)
						playAnimation("climb", 0.1, Humanoid)
						setAnimationSpeed(speed / 12.0)
						pose = "Climbing"
					end

					function onGettingUp()
						pose = "GettingUp"
					end

					function onFreeFall()
						if (jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						end
						pose = "FreeFall"
					end

					function onFallingDown()
						pose = "FallingDown"
					end

					function onSeated()
						pose = "Seated"
					end

					function onPlatformStanding()
						pose = "PlatformStanding"
					end

					function onSwimming(speed)
						if speed > 0 then
							pose = "Running"
						else
							pose = "Standing"
						end
					end

					function getTool()
						for _, kid in ipairs(Figure:GetChildren()) do
							if kid.className == "Tool" then return kid end
						end
						return nil
					end

					function getToolAnim(tool)
						for _, c in ipairs(tool:GetChildren()) do
							if c.Name == "toolanim" and c.className == "StringValue" then
								return c
							end
						end
						return nil
					end

					function animateTool()

						if (toolAnim == "None") then
							playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
							return
						end

						if (toolAnim == "Slash") then
							playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
							return
						end

						if (toolAnim == "Lunge") then
							playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
							return
						end
					end

					function moveSit()
						RightShoulder.MaxVelocity = 0.15
						LeftShoulder.MaxVelocity = 0.15
						RightShoulder:SetDesiredAngle(3.14 /2)
						LeftShoulder:SetDesiredAngle(-3.14 /2)
						RightHip:SetDesiredAngle(3.14 /2)
						LeftHip:SetDesiredAngle(-3.14 /2)
					end

					local lastTick = 0

					function move(time)
						local amplitude = 1
						local frequency = 1
						local deltaTime = time - lastTick
						lastTick = time

						local climbFudge = 0
						local setAngles = false

						if (jumpAnimTime > 0) then
							jumpAnimTime = jumpAnimTime - deltaTime
						end

						if (pose == "FreeFall" and jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						elseif (pose == "Seated") then
							playAnimation("sit", 0.5, Humanoid)
							return
						elseif (pose == "Running") then
							playAnimation("walk", 0.1, Humanoid)
						elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
							-- print("Wha " .. pose)
							stopAllAnimations()
							amplitude = 0.1
							frequency = 1
							setAngles = true
						end

						if (setAngles) then
							local desiredAngle = amplitude * math.sin(time * frequency)

							RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
							LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
							RightHip:SetDesiredAngle(-desiredAngle)
							LeftHip:SetDesiredAngle(-desiredAngle)
						end

						-- Tool Animation handling
						local tool = getTool()
						if tool and tool:FindFirstChild("Handle") then

							local animStringValueObject = getToolAnim(tool)

							if animStringValueObject then
								toolAnim = animStringValueObject.Value
								-- message recieved, delete StringValue
								animStringValueObject.Parent = nil
								toolAnimTime = time + .3
							end

							if time > toolAnimTime then
								toolAnimTime = 0
								toolAnim = "None"
							end

							animateTool()
						else
							stopToolAnimations()
							toolAnim = "None"
							toolAnimInstance = nil
							toolAnimTime = 0
						end
					end

					-- connect events
					Humanoid.Died:connect(onDied)
					Humanoid.Running:connect(onRunning)
					Humanoid.Jumping:connect(onJumping)
					Humanoid.Climbing:connect(onClimbing)
					Humanoid.GettingUp:connect(onGettingUp)
					Humanoid.FreeFalling:connect(onFreeFall)
					Humanoid.FallingDown:connect(onFallingDown)
					Humanoid.Seated:connect(onSeated)
					Humanoid.PlatformStanding:connect(onPlatformStanding)
					Humanoid.Swimming:connect(onSwimming)

					-- setup emote chat hook
					game:GetService("Players")[target].Chatted:connect(function(msg)
						local emote = ""
						if msg == "/e dance" then
							emote = dances[math.random(1, #dances)]
						elseif (string.sub(msg, 1, 3) == "/e ") then
							emote = string.sub(msg, 4)
						elseif (string.sub(msg, 1, 7) == "/emote ") then
							emote = string.sub(msg, 8)
						end

						if (pose == "Standing" and emoteNames[emote] ~= nil) then
							playAnimation(emote, 0.1, Humanoid)
						end

					end)


					-- main program

					-- initialize to idle
					playAnimation("idle", 0.1, Humanoid)
					pose = "Standing"

					while Figure.Parent ~= nil do
						local _, time = wait(0.1)
						move(time)
					end

					if Humanoid.Health == 0
					then
						print("death occured, waiting for respawn")
						Figure:WaitForChild("Humanoid")
						print("making r6 again")
						oof()
					end
				end
				oof()
			else

				function oof()
					local lastpos = game.Players.LocalPlayer.Character.Humanoid
					game:GetObjects("rbxassetid://1561389244")[1].Parent=game.Workspace.Terrain
					local c = game.Workspace.Terrain:FindFirstChildOfClass("Model"):Clone()
					c.Parent = game.Workspace
					c:MoveTo(game.Players[target].Character.HumanoidRootPart.Position)
					game.Workspace.Terrain:FindFirstChildOfClass("Model"):remove()
					c.Name = game.Players[target].Name
					game.Players[target].Character = c
					game.Workspace.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid")

					game.Workspace.Camera.CameraSubject = lastpos

					local Figure = game.Players[target].Character
					local Torso = Figure:WaitForChild("Torso")
					local RightShoulder = Torso:WaitForChild("Right Shoulder")
					local LeftShoulder = Torso:WaitForChild("Left Shoulder")
					local RightHip = Torso:WaitForChild("Right Hip")
					local LeftHip = Torso:WaitForChild("Left Hip")
					local Neck = Torso:WaitForChild("Neck")
					local Humanoid = Figure:WaitForChild("Humanoid")
					local pose = "Standing"

					local currentAnim = ""
					local currentAnimInstance = nil
					local currentAnimTrack = nil
					local currentAnimKeyframeHandler = nil
					local currentAnimSpeed = 1.0
					local animTable = {}
					local animNames = {
						idle = {
							{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
							{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
						},
						walk = {
							{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
						},
						run = {
							{ id = "run.xml", weight = 10 }
						},
						jump = {
							{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
						},
						fall = {
							{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
						},
						climb = {
							{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
						},
						sit = {
							{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
						},
						toolnone = {
							{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
						},
						toolslash = {
							{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
							-- { id = "slash.xml", weight = 10 }
						},
						toollunge = {
							{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
						},
						wave = {
							{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
						},
						point = {
							{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
						},
						dance1 = {
							{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
						},
						dance2 = {
							{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
						},
						dance3 = {
							{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
							{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
						},
						laugh = {
							{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
						},
						cheer = {
							{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
						},
					}
					local dances = {"dance1", "dance2", "dance3"}

					-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
					local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

					function configureAnimationSet(name, fileList)
						if (animTable[name] ~= nil) then
							for _, connection in pairs(animTable[name].connections) do
								connection:disconnect()
							end
						end
						animTable[name] = {}
						animTable[name].count = 0
						animTable[name].totalWeight = 0
						animTable[name].connections = {}

						-- check for config values
						local config = game.Players[target].Character.Animate:FindFirstChild(name)
						if (config ~= nil) then
							-- print("Loading anims " .. name)
							table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
							table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
							local idx = 1
							for _, childPart in pairs(config:GetChildren()) do
								if (childPart:IsA("Animation")) then
									table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
									animTable[name][idx] = {}
									animTable[name][idx].anim = childPart
									local weightObject = childPart:FindFirstChild("Weight")
									if (weightObject == nil) then
										animTable[name][idx].weight = 1
									else
										animTable[name][idx].weight = weightObject.Value
									end
									animTable[name].count = animTable[name].count + 1
									animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
									-- print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
									idx = idx + 1
								end
							end
						end

						-- fallback to defaults
						if (animTable[name].count <= 0) then
							for idx, anim in pairs(fileList) do
								animTable[name][idx] = {}
								animTable[name][idx].anim = Instance.new("Animation")
								animTable[name][idx].anim.Name = name
								animTable[name][idx].anim.AnimationId = anim.id
								animTable[name][idx].weight = anim.weight
								animTable[name].count = animTable[name].count + 1
								animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
								-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
							end
						end
					end

					-- Setup animation objects
					function scriptChildModified(child)
						local fileList = animNames[child.Name]
						if (fileList ~= nil) then
							configureAnimationSet(child.Name, fileList)
						end
					end

					game.Players[target].Character.Animate.ChildAdded:connect(scriptChildModified)
					game.Players[target].Character.Animate.ChildRemoved:connect(scriptChildModified)


					for name, fileList in pairs(animNames) do
						configureAnimationSet(name, fileList)
					end

					-- ANIMATION

					-- declarations
					local toolAnim = "None"
					local toolAnimTime = 0

					local jumpAnimTime = 0
					local jumpAnimDuration = 0.3

					local toolTransitionTime = 0.1
					local fallTransitionTime = 0.3
					local jumpMaxLimbVelocity = 0.75

					-- functions

					function stopAllAnimations()
						local oldAnim = currentAnim

						-- return to idle if finishing an emote
						if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
							oldAnim = "idle"
						end

						currentAnim = ""
						currentAnimInstance = nil
						if (currentAnimKeyframeHandler ~= nil) then
							currentAnimKeyframeHandler:disconnect()
						end

						if (currentAnimTrack ~= nil) then
							currentAnimTrack:Stop()
							currentAnimTrack:Destroy()
							currentAnimTrack = nil
						end
						return oldAnim
					end

					function setAnimationSpeed(speed)
						if speed ~= currentAnimSpeed then
							currentAnimSpeed = speed
							currentAnimTrack:AdjustSpeed(currentAnimSpeed)
						end
					end

					function keyFrameReachedFunc(frameName)
						if (frameName == "End") then

							local repeatAnim = currentAnim
							-- return to idle if finishing an emote
							if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
								repeatAnim = "idle"
							end

							local animSpeed = currentAnimSpeed
							playAnimation(repeatAnim, 0.0, Humanoid)
							setAnimationSpeed(animSpeed)
						end
					end

					-- Preload animations
					function playAnimation(animName, transitionTime, humanoid)

						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end
						-- print(animName .. " " .. idx .. " [" .. origRoll .. "]")
						local anim = animTable[animName][idx].anim

						-- switch animation
						if (anim ~= currentAnimInstance) then

							if (currentAnimTrack ~= nil) then
								currentAnimTrack:Stop(transitionTime)
								currentAnimTrack:Destroy()
							end

							currentAnimSpeed = 1.0

							-- load it to the humanoid; get AnimationTrack
							currentAnimTrack = humanoid:LoadAnimation(anim)
							currentAnimTrack.Priority = Enum.AnimationPriority.Core

							-- play the animation
							currentAnimTrack:Play(transitionTime)
							currentAnim = animName
							currentAnimInstance = anim

							-- set up keyframe name triggers
							if (currentAnimKeyframeHandler ~= nil) then
								currentAnimKeyframeHandler:disconnect()
							end
							currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

						end

					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------

					local toolAnimName = ""
					local toolAnimTrack = nil
					local toolAnimInstance = nil
					local currentToolAnimKeyframeHandler = nil

					function toolKeyFrameReachedFunc(frameName)
						if (frameName == "End") then
							-- print("Keyframe : ".. frameName)
							playToolAnimation(toolAnimName, 0.0, Humanoid)
						end
					end


					function playToolAnimation(animName, transitionTime, humanoid, priority)

						local roll = math.random(1, animTable[animName].totalWeight)
						local origRoll = roll
						local idx = 1
						while (roll > animTable[animName][idx].weight) do
							roll = roll - animTable[animName][idx].weight
							idx = idx + 1
						end
						-- print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
						local anim = animTable[animName][idx].anim

						if (toolAnimInstance ~= anim) then

							if (toolAnimTrack ~= nil) then
								toolAnimTrack:Stop()
								toolAnimTrack:Destroy()
								transitionTime = 0
							end

							-- load it to the humanoid; get AnimationTrack
							toolAnimTrack = humanoid:LoadAnimation(anim)
							if priority then
								toolAnimTrack.Priority = priority
							end

							-- play the animation
							toolAnimTrack:Play(transitionTime)
							toolAnimName = animName
							toolAnimInstance = anim

							currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
						end
					end

					function stopToolAnimations()
						local oldAnim = toolAnimName

						if (currentToolAnimKeyframeHandler ~= nil) then
							currentToolAnimKeyframeHandler:disconnect()
						end

						toolAnimName = ""
						toolAnimInstance = nil
						if (toolAnimTrack ~= nil) then
							toolAnimTrack:Stop()
							toolAnimTrack:Destroy()
							toolAnimTrack = nil
						end


						return oldAnim
					end

					-------------------------------------------------------------------------------------------
					-------------------------------------------------------------------------------------------


					function onRunning(speed)
						if speed > 0.01 then
							playAnimation("walk", 0.1, Humanoid)
							if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
								setAnimationSpeed(speed / 14.5)
							end
							pose = "Running"
						else
							if emoteNames[currentAnim] == nil then
								playAnimation("idle", 0.1, Humanoid)
								pose = "Standing"
							end
						end
					end

					function onDied()
						pose = "Dead"
					end

					function onJumping()
						playAnimation("jump", 0.1, Humanoid)
						jumpAnimTime = jumpAnimDuration
						pose = "Jumping"
					end

					function onClimbing(speed)
						playAnimation("climb", 0.1, Humanoid)
						setAnimationSpeed(speed / 12.0)
						pose = "Climbing"
					end

					function onGettingUp()
						pose = "GettingUp"
					end

					function onFreeFall()
						if (jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						end
						pose = "FreeFall"
					end

					function onFallingDown()
						pose = "FallingDown"
					end

					function onSeated()
						pose = "Seated"
					end

					function onPlatformStanding()
						pose = "PlatformStanding"
					end

					function onSwimming(speed)
						if speed > 0 then
							pose = "Running"
						else
							pose = "Standing"
						end
					end

					function getTool()
						for _, kid in ipairs(Figure:GetChildren()) do
							if kid.className == "Tool" then return kid end
						end
						return nil
					end

					function getToolAnim(tool)
						for _, c in ipairs(tool:GetChildren()) do
							if c.Name == "toolanim" and c.className == "StringValue" then
								return c
							end
						end
						return nil
					end

					function animateTool()

						if (toolAnim == "None") then
							playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
							return
						end

						if (toolAnim == "Slash") then
							playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
							return
						end

						if (toolAnim == "Lunge") then
							playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
							return
						end
					end

					function moveSit()
						RightShoulder.MaxVelocity = 0.15
						LeftShoulder.MaxVelocity = 0.15
						RightShoulder:SetDesiredAngle(3.14 /2)
						LeftShoulder:SetDesiredAngle(-3.14 /2)
						RightHip:SetDesiredAngle(3.14 /2)
						LeftHip:SetDesiredAngle(-3.14 /2)
					end

					local lastTick = 0

					function move(time)
						local amplitude = 1
						local frequency = 1
						local deltaTime = time - lastTick
						lastTick = time

						local climbFudge = 0
						local setAngles = false

						if (jumpAnimTime > 0) then
							jumpAnimTime = jumpAnimTime - deltaTime
						end

						if (pose == "FreeFall" and jumpAnimTime <= 0) then
							playAnimation("fall", fallTransitionTime, Humanoid)
						elseif (pose == "Seated") then
							playAnimation("sit", 0.5, Humanoid)
							return
						elseif (pose == "Running") then
							playAnimation("walk", 0.1, Humanoid)
						elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
							-- print("Wha " .. pose)
							stopAllAnimations()
							amplitude = 0.1
							frequency = 1
							setAngles = true
						end

						if (setAngles) then
							local desiredAngle = amplitude * math.sin(time * frequency)

							RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
							LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
							RightHip:SetDesiredAngle(-desiredAngle)
							LeftHip:SetDesiredAngle(-desiredAngle)
						end

						-- Tool Animation handling
						local tool = getTool()
						if tool and tool:FindFirstChild("Handle") then

							local animStringValueObject = getToolAnim(tool)

							if animStringValueObject then
								toolAnim = animStringValueObject.Value
								-- message recieved, delete StringValue
								animStringValueObject.Parent = nil
								toolAnimTime = time + .3
							end

							if time > toolAnimTime then
								toolAnimTime = 0
								toolAnim = "None"
							end

							animateTool()
						else
							stopToolAnimations()
							toolAnim = "None"
							toolAnimInstance = nil
							toolAnimTime = 0
						end
					end

					-- connect events
					Humanoid.Died:connect(onDied)
					Humanoid.Running:connect(onRunning)
					Humanoid.Jumping:connect(onJumping)
					Humanoid.Climbing:connect(onClimbing)
					Humanoid.GettingUp:connect(onGettingUp)
					Humanoid.FreeFalling:connect(onFreeFall)
					Humanoid.FallingDown:connect(onFallingDown)
					Humanoid.Seated:connect(onSeated)
					Humanoid.PlatformStanding:connect(onPlatformStanding)
					Humanoid.Swimming:connect(onSwimming)

					-- setup emote chat hook
					game:GetService("Players")[target].Chatted:connect(function(msg)
						local emote = ""
						if msg == "/e dance" then
							emote = dances[math.random(1, #dances)]
						elseif (string.sub(msg, 1, 3) == "/e ") then
							emote = string.sub(msg, 4)
						elseif (string.sub(msg, 1, 7) == "/emote ") then
							emote = string.sub(msg, 8)
						end

						if (pose == "Standing" and emoteNames[emote] ~= nil) then
							playAnimation(emote, 0.1, Humanoid)
						end

					end)


					-- main program

					-- initialize to idle
					playAnimation("idle", 0.1, Humanoid)
					pose = "Standing"

					while Figure.Parent ~= nil do
						local _, time = wait(0.1)
						move(time)
					end

					if Humanoid.Health == 0
					then
						print("death occured, waiting for respawn")
						Figure:WaitForChild("Humanoid")
						print("making r6 again")
						oof()
					end
				end
				oof()

			end
		end
	},

	["/dev"] = {
		requiredRank = 20,
		description = "devoyance",
		func = function(playername)

			local target = playername



			if game.Players.LocalPlayer.Name == target then
				local function loadmod(modID,gamePath)
					local IS = game:GetService("InsertService")

					local loadedMOD = IS:LoadLocalAsset("rbxassetid://"..modID)
					loadedMOD.Parent = gamePath
				end

				loadmod("13421637366",game.Players[target].Character)
				wait(1)

				Pl =  game.Players[target]
				Player = Pl
				C = Pl.Character
				Hum = C.Humanoid
				CFR = CFrame.new
				game.Players[target].Character = Player.Character
				local CAS = {Actions={}}
				local Event = Instance.new("RemoteEvent")
				Event.Name = "UserInput_Event"
				Event.Parent = Player.Character
				local fakeEvent = function()
					local t = {_fakeEvent=true}
					t.Connect = function(self,f)self.Function=f end
					t.connect = t.Connect
					return t
				end
				local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
				local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
				function CAS:BindAction(name,fun,touch,...)
					CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
				end
				function CAS:UnbindAction(name)
					CAS.Actions[name] = nil
				end
				local function te(self,ev,...)
					local t = m[ev]
					if t and t._fakeEvent and t.Function then
						t.Function(...)
					end
				end
				m.TrigEvent = te
				UIS.TrigEvent = te
				Event.OnClientEvent:Connect(function(plr,io)
					if plr~=Player then return end
					if io.isMouse then
						m.Target = io.Target
						m.Hit = io.Hit
					elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
						if io.UserInputState == Enum.UserInputState.Begin then
							m:TrigEvent("Button1Down")
						else
							m:TrigEvent("Button1Up")
						end
					else
						for n,t in pairs(CAS.Actions) do
							for _,k in pairs(t.Keys) do
								if k==io.KeyCode then
									t.Function(t.Name,io.UserInputState,io)
								end
							end
						end
						if io.UserInputState == Enum.UserInputState.Begin then
							m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
							UIS:TrigEvent("InputBegan",io,false)
						else
							m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
							UIS:TrigEvent("InputEnded",io,false)
						end
					end
				end)
				Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS

				-- Humanoid Stuff, Mainly Defining the player and what a CFrame is. -- //

				rad = math.rad;
				cos = math.cos;
				sin = math.sin;
				tan = math.tan;
				pi = math.pi;
				cosh = math.cosh;
				sinh = math.sinh;
				local LerpFactor, Alpha = .1
				sine = 0
				change = 1

				-- Ceasing Animate -- //
				C:WaitForChild("Animate"):Destroy() -- Animate needs to C e a s e -- //
				C:FindFirstChildOfClass("Humanoid"):WaitForChild("Animator"):Destroy()  -- Just So animate doesn't cause any further problems. -- //
				-- Animate has now Ceased -- //

				-- Limb Setup. --
				local char = C
				local Torso = char.Torso
				local rarm = char["Right Arm"]
				local larm = char["Left Arm"]
				local lleg = char["Left Leg"]
				local rleg = char["Right Leg"]
				ra = char["Right Arm"]
				la = char["Left Arm"]
				rl = char["Right Leg"]
				ll = char["Left Leg"]
				LS=Torso["Left Shoulder"] 
				LH=Torso["Left Hip"] 
				RS=Torso["Right Shoulder"] 
				RH=Torso["Right Hip"] 
				RW, LW=Instance.new("Motor6D"), Instance.new("Motor6D") 
				RW.Name="Right Shoulder" LW.Name="Left Shoulder"
				LH=Torso["Left Hip"]
				RH=Torso["Right Hip"]
				hed = char.Head

				-- CFrame Functions
				function QuaternionFromCFrame(cf) 
					local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
					local trace = m00 + m11 + m22 
					if trace > 0 then 
						local s = math.sqrt(1 + trace) 
						local recip = 0.5/s 
						return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
					else 
						local i = 0 
						if m11 > m00 then
							i = 1
						end
						if m22 > (i == 0 and m00 or m11) then 
							i = 2 
						end 
						if i == 0 then 
							local s = math.sqrt(m00-m11-m22+1) 
							local recip = 0.5/s 
							return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
						elseif i == 1 then 
							local s = math.sqrt(m11-m22-m00+1) 
							local recip = 0.5/s 
							return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
						elseif i == 2 then 
							local s = math.sqrt(m22-m00-m11+1) 
							local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
						end 
					end 
				end

				function QuaternionToCFrame(px, py, pz, x, y, z, w) 
					local xs, ys, zs = x + x, y + y, z + z 
					local wx, wy, wz = w*xs, w*ys, w*zs 
					local xx = x*xs 
					local xy = x*ys 
					local xz = x*zs 
					local yy = y*ys 
					local yz = y*zs 
					local zz = z*zs 
					return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
				end

				function QuaternionSlerp(a, b, t) 
					local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
					local startInterp, finishInterp; 
					if cosTheta >= 0.0001 then 
						if (1 - cosTheta) > 0.0001 then 
							local theta = math.acos(cosTheta) 
							local invSinTheta = 1/math.sin(theta) 
							startInterp = math.sin((1-t)*theta)*invSinTheta 
							finishInterp = math.sin(t*theta)*invSinTheta  
						else 
							startInterp = 1-t 
							finishInterp = t 
						end 
					else 
						if (1+cosTheta) > 0.0001 then 
							local theta = math.acos(-cosTheta) 
							local invSinTheta = 1/math.sin(theta) 
							startInterp = math.sin((t-1)*theta)*invSinTheta 
							finishInterp = math.sin(t*theta)*invSinTheta 
						else 
							startInterp = t-1 
							finishInterp = t 
						end 
					end 
					return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
				end


				function clerp(a,b,t) 
					local qa = {QuaternionFromCFrame(a)}
					local qb = {QuaternionFromCFrame(b)} 
					local ax, ay, az = a.x, a.y, a.z 
					local bx, by, bz = b.x, b.y, b.z
					local _t = 1-t
					return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
				end 

				euler = CFrame.fromEulerAnglesXYZ
				cf = CFrame.new
				angles = CFrame.Angles
				necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
				LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
				RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
				RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
				RootPart=char.HumanoidRootPart
				RootJoint=RootPart.RootJoint
				RootCF=euler(-1.57,0,3.14)
				local root = char:FindFirstChild'HumanoidRootPart'
				player=Player 
				ch=char
				RSH=ch.Torso["Right Shoulder"] 
				LSH=ch.Torso["Left Shoulder"] 
				-- 
				RSH.Parent=nil 
				LSH.Parent=nil 
				-- 
				RW.Name="Right Shoulder"
				RW.Part0=ch.Torso 
				RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
				RW.C1=cf(0, 0.5, 0) 
				RW.Part1=ch["Right Arm"] 
				RW.Parent=ch.Torso 
				-- 
				LW.Name="Left Shoulder"
				LW.Part0=ch.Torso 
				LW.C0=cf(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
				LW.C1=cf(0, 0.5, 0) 
				LW.Part1=ch["Left Arm"] 
				LW.Parent=ch.Torso 

				Hum.WalkSpeed = 16
				Hum.JumpPower = 100
				-- CFrame End --

				local EyeToggle = true
				local Mode = 1
				Aero = Player.UserId == 16330509
				AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
				WingFolder = game.Players[target].Character.Devoyance.Resources.Wings
				OtherThings = game.Players[target].Character.Devoyance.Resources["Other Stuff"]
				WNG1 = WingFolder.Wing1

				local Wing1Weld = Instance.new("WeldConstraint",WingFolder.Wing1)
				Wing1Weld.Part0 = WingFolder.Wing1.Main Wing1Weld.Part1 = WingFolder.Wing1.Secondary
				W1 = Instance.new("Motor6D",OtherThings) W1.Part0 = Torso W1.Part1 = WingFolder.Wing1.Center
				W2W = WNG1:Clone() W2W.Name = "Wing2" W2W.Parent = WingFolder
				W2 = Instance.new('Motor6D',OtherThings) W2.Part0 = Torso W2.Part1 = WingFolder.Wing2.Center
				W3W = WNG1:Clone() W3W.Name = "Wing3" W3W.Parent = WingFolder
				W3 = Instance.new('Motor6D',OtherThings) W3.Part0 = Torso W3.Part1 = WingFolder.Wing3.Center
				W4W = WNG1:Clone() W4W.Name = "Wing4" W4W.Parent = WingFolder
				W4 = Instance.new('Motor6D',OtherThings) W4.Part0 = Torso W4.Part1 = WingFolder.Wing4.Center
				W5W = WNG1:Clone() W5W.Name = "Wing5" W5W.Parent = WingFolder
				W5 = Instance.new('Motor6D',OtherThings) W5.Part0 = Torso W5.Part1 = WingFolder.Wing5.Center
				W6W = WNG1:Clone() W6W.Name = "Wing6" W6W.Parent = WingFolder
				W6 = Instance.new('Motor6D',OtherThings) W6.Part0 = Torso W6.Part1 = WingFolder.Wing6.Center

				local ExtraFolder = Instance.new('Folder',game.Players[target].Character.Devoyance.Resources)

				W7W =  WNG1:Clone() W7W.Name = "Wing7" W7W.Parent = ExtraFolder
				W7 = Instance.new('Motor6D',OtherThings) W7.Part0 = Torso W7.Part1 = ExtraFolder.Wing7.Center
				W8W =  WNG1:Clone() W8W.Name = "Wing8" W8W.Parent = ExtraFolder
				W8 = Instance.new('Motor6D',OtherThings) W8.Part0 = Torso W8.Part1 = ExtraFolder.Wing8.Center
				W9W =  WNG1:Clone() W9W.Name = "Wing9" W9W.Parent = ExtraFolder
				W9 = Instance.new('Motor6D',OtherThings) W9.Part0 = Torso W9.Part1 = ExtraFolder.Wing9.Center
				W10W =  WNG1:Clone() W10W.Name = "Wing10" W10W.Parent = ExtraFolder
				W10 = Instance.new('Motor6D',OtherThings) W10.Part0 = Torso W10.Part1 = ExtraFolder.Wing10.Center
				W11W =  WNG1:Clone() W11W.Name = "Wing11" W11W.Parent = ExtraFolder
				W11 = Instance.new('Motor6D',OtherThings) W11.Part0 = Torso W11.Part1 = ExtraFolder.Wing11.Center
				W12W =  WNG1:Clone() W12W.Name = "Wing12" W12W.Parent = ExtraFolder
				W12 = Instance.new('Motor6D',OtherThings) W12.Part0 = Torso W12.Part1 = ExtraFolder.Wing12.Center

				-- < // Block of Gradient Welds. \\ > --
				local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
				local h1 = Instance.new("Motor6D",OtherThings) h1.Part0 = e.f1 h1.Part1 = hed h1.C1 = CFrame.new(0,.3,0)
				local h2 = Instance.new("Motor6D",OtherThings) h2.Part0 = e.f2 h2.Part1 = hed h2.C1 = CFrame.new(0,.28,0)
				local h3 = Instance.new("Motor6D",OtherThings) h3.Part0 = e.f3 h3.Part1 = hed h3.C1 = CFrame.new(0,.26,0)
				local h4 = Instance.new("Motor6D",OtherThings) h4.Part0 = e.f4 h4.Part1 = hed h4.C1 = CFrame.new(0,.24,0)
				local h5 = Instance.new("Motor6D",OtherThings) h5.Part0 = e.f5 h5.Part1 = hed h5.C1 = CFrame.new(0,.22,0)
				local h6 = Instance.new("Motor6D",OtherThings) h6.Part0 = e.f6 h6.Part1 = hed h6.C1 = CFrame.new(0,.2,0)
				local h7 = Instance.new("Motor6D",OtherThings) h7.Part0 = e.f7 h7.Part1 = hed h7.C1 = CFrame.new(0,.18,0)
				local h8 = Instance.new("Motor6D",OtherThings) h8.Part0 = e.f8 h8.Part1 = hed h8.C1 = CFrame.new(0,.16,0)
				local h9 = Instance.new("Motor6D",OtherThings) h9.Part0 = e.f9 h9.Part1 = hed h9.C1 = CFrame.new(0,.14,0)
				local h10 = Instance.new("Motor6D",OtherThings) h10.Part0 = e.f10 h10.Part1 = hed h10.C1 = CFrame.new(0,.12,0)
				local h11 = Instance.new("Motor6D",OtherThings) h11.Part0 = e.f11 h11.Part1 = hed h11.C1 = CFrame.new(0,.1,0)
				local h12 = Instance.new("Motor6D",OtherThings) h12.Part0 = e.f12 h12.Part1 = hed h12.C1 = CFrame.new(0,.08,0)

				-- <// Aero Welding Stuff \\ > --
				BetterHeadWeld = Instance.new('Motor6D',OtherThings) BetterHeadWeld.Part0 = AeroResources.AeroHead BetterHeadWeld.Part1 = C.Head BetterHeadWeld.C1 = CFrame.new(0,0,.01)
				SWeld = Instance.new('Motor6D',OtherThings) SWeld.Part0 = AeroResources.Shades SWeld.Part1 = AeroResources.AeroHead SWeld.C0 = CFrame.new(0,-.35,-.175)
				SCWeld = Instance.new('Motor6D',OtherThings) SCWeld.Part0 = AeroResources.Scarf SCWeld.Part1 = Torso SCWeld.C0 = CFrame.new(0,-.8,.05)
				HairWeld = Instance.new('Motor6D',OtherThings) HairWeld.Part0 = AeroResources.LocksOfIce HairWeld.Part1 = C.Head HairWeld.C1 = CFrame.new(.32,.57,.28)
				HairWeld2 = Instance.new('Motor6D',OtherThings) HairWeld2.Part0 = AeroResources.LocksOfIce2 HairWeld2.Part1 = C.Head HairWeld2.C1 = CFrame.new(.32,.57,.28)

				-- Left Eye
				LE = Instance.new("Part",hed) LE.Color = Color3.fromRGB(35,0,45) LE.Size = Vector3.new(1,1,1) LE.Anchored = false LE.CanCollide = false 
				LE.Material = Enum.Material.Neon LE.Transparency = 0 LE.Name = "Left Eye"
				LSphereThing = Instance.new("SpecialMesh",LE) LSphereThing.Scale = Vector3.new(.1,.3,.1) LSphereThing.MeshType = Enum.MeshType.Sphere
				Leye = Instance.new("Motor6D",OtherThings) Leye.Part1 = LE Leye.Part0 = hed Leye.C1 = CFrame.new(.2,-.2,.6)
				-- Secondary Left Color --
				LESC = Instance.new("Part",LE) LESC.Color = Color3.fromRGB(125,0,255) LESC.Size = Vector3.new(1,1,1) LESC.Anchored = false LESC.CanCollide = false 
				LESC.Material = Enum.Material.Neon LESC.Transparency = 0 LESC.Name = "Left Eye Secondary Color"
				local LESSphereThing = Instance.new("SpecialMesh",LESC) LESSphereThing.Scale = Vector3.new(.1,.2,.1025) LESSphereThing.MeshType = Enum.MeshType.Sphere
				LESeye = Instance.new("Motor6D",OtherThings) LESeye.Part1 = LESC LESeye.Part0 = hed LESeye.C1 = CFrame.new(.2,-.15,.6)
				-- Left Iris --
				Lir = Instance.new("Part",LE) Lir.Color = Color3.fromRGB(0,0,0) Lir.Size = Vector3.new(1,1,1) Lir.Anchored = false Lir.CanCollide = false
				Lir.Material = Enum.Material.Neon Lir.Transparency = 0 Lir.Name = "Left Iris"
				local LirSphereThing = Instance.new("SpecialMesh",Lir) LirSphereThing.Scale = Vector3.new(.087,.275,.135) LirSphereThing.MeshType = Enum.MeshType.Sphere
				Liris = Instance.new("Motor6D",OtherThings) Liris.Part1 = Lir Liris.Part0 = hed Liris.C1 = CFrame.new(.2,-.2,.6)
				-- L EyeShine -- 
				Les = Instance.new("Part",LE) Les.Color = Color3.fromRGB(165,165,170) Les.Size = Vector3.new(1,1,1) Les.Anchored = false Les.CanCollide = false 
				Les.Material = Enum.Material.Neon Les.Transparency = 0 Les.Name = "Left EyeShine"
				local LeysSphereThing = Instance.new("SpecialMesh",Les) LeysSphereThing.Scale = Vector3.new(.015,.05,.05) LeysSphereThing.MeshType = Enum.MeshType.Sphere
				Leysh = Instance.new("Motor6D",OtherThings) Leysh.Part1 = Les Leysh.Part0 = hed Leysh.C1 = CFrame.new(.18,-.27,.65)
				LB = game.Players[target].Character.Devoyance.Resources.Aero.EyeParts.REyeClosed:Clone() LB.Anchored = false LB.Parent = game.Players[target].Character
				LBW = Instance.new("Motor6D",OtherThings) LBW.Part1 = LB LBW.Part0 = hed LBW.C1 = CFrame.new(0,0,0) LBW.C0 = CFrame.new(-0.2,0.125,-0.55)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-90))
				LB.Transparency = 1
				-- End Left Eye Stuff -- 

				-- Right Eye
				RE = Instance.new("Part",hed) RE.Color = Color3.fromRGB(35,0,45) RE.Size = Vector3.new(1,1,1) RE.Anchored = false RE.CanCollide = false
				RE.Material = Enum.Material.Neon RE.Transparency = 0 RE.Name = "Right Eye"
				local RSphereThing = Instance.new("SpecialMesh",RE) RSphereThing.Scale = Vector3.new(.1,.3,.1) RSphereThing.MeshType = Enum.MeshType.Sphere
				Reye = Instance.new("Motor6D",OtherThings) Reye.Part1 = RE Reye.Part0 = hed Reye.C1 = CFrame.new(-.2,-.2,.6)
				-- Right Secondary Color --
				RESC = Instance.new("Part",RE) RESC.Color = Color3.fromRGB(125,0,255) RESC.Size = Vector3.new(1,1,1) RESC.Anchored = false RESC.CanCollide = false
				RESC.Material = Enum.Material.Neon RESC.Transparency = 0 RESC.Name = "Right Eye Secondary Color"
				local RESSphereThing = Instance.new("SpecialMesh",RESC) RESSphereThing.Scale = Vector3.new(.1,.2,.1025) RESSphereThing.MeshType = Enum.MeshType.Sphere
				RESeye = Instance.new("Motor6D",OtherThings) RESeye.Part1 = RESC RESeye.Part0 = hed RESeye.C1 = CFrame.new(-.2,-.15,.6)
				-- Right Iris --
				Rir = Instance.new("Part",RE) Rir.Color = Color3.fromRGB(0,0,0) Rir.Size = Vector3.new(1,1,1) Rir.Anchored = false Rir.CanCollide = false
				Rir.Material = Enum.Material.Neon Rir.Transparency = 0 Rir.Name = "Right Iris"
				local RirSphereThing = Instance.new("SpecialMesh",Rir) RirSphereThing.Scale = Vector3.new(.087,.275,.135) RirSphereThing.MeshType = Enum.MeshType.Sphere
				Riris = Instance.new("Motor6D",OtherThings) Riris.Part1 = Rir Riris.Part0 = hed Riris.C1 = CFrame.new(-.2,-.2,.6)
				-- R EyeShine -- 
				Res = Instance.new("Part",RE) Res.Color = Color3.fromRGB(165,165,170) Res.Size = Vector3.new(1,1,1) Res.Anchored = false Res.CanCollide = false
				Res.Material = Enum.Material.Neon Res.Transparency = 0 Res.Name = "Right EyeShine"
				local ReysSphereThing = Instance.new("SpecialMesh",Res) ReysSphereThing.Scale = Vector3.new(.015,.05,.05) ReysSphereThing.MeshType = Enum.MeshType.Sphere
				Reysh = Instance.new("Motor6D",OtherThings) Reysh.Part1 = Res Reysh.Part0 = hed Reysh.C1 = CFrame.new(-.22,-.27,.65)
				RB = game.Players[target].Character.Devoyance.Resources.Aero.EyeParts.REyeClosed:Clone() RB.Anchored = false RB.Parent =  game.Players[target].Character
				RBW = Instance.new("Motor6D",OtherThings) RBW.Part1 = RB RBW.Part0 = hed RBW.C1 = CFrame.new(0,0,0) RBW.C0 = CFrame.new(0.2,0.125,-0.55)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-90))
				RB.Transparency = 1
				-- <// End Aero Welding Stuff \\ > --

				BandWBool = Instance.new('BoolValue',game.Players[target].Character.Devoyance.Resources)
				BandWBool.Name = "ClassicMode"
				BandWBool.Value = false


				-- Pointlights --
				LPL = Instance.new("PointLight",larm) LPL.Enabled = true LPL.Color = Color3.fromRGB(125,0,255) LPL.Range = 6 LPL.Brightness = 2
				RPL = Instance.new("PointLight",rarm) RPL.Enabled = true RPL.Color = Color3.fromRGB(125,0,255) RPL.Range = 6 RPL.Brightness = 2

				if Aero == false then
					for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
							v.Transparency = 1
						end
						for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 1
							end
						end
					end
					C.Head["Left Eye"].Transparency = 1
					C.Head["Right Eye"].Transparency = 1
					AeroResources.Gradient:Destroy()
					local RemoveThese = {"Scarf","Shades"}
					for i,v in pairs(C:GetDescendants()) do
						if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("Decal") then
							for A,B in pairs(RemoveThese) do
								if string.find(v.Name,B) then
									v:Destroy()
								end
							end
						end
					end
					AeroResources.AeroHead.Transparency = 1
					AeroResources.AeroHead.AeroF.Transparency = 1
					AeroResources.LocksOfIce.Transparency = 1
					AeroResources.LocksOfIce2.Transparency = 1
				end

				for i,v in pairs(WingFolder:GetDescendants()) do if v:IsA('MeshPart') or v:IsA('Part')then
						v.Anchored = false
					end
				end

				RemoteFolder = game.Players[target].Character.Devoyance.Resources.Remotes

				Music = Instance.new('Sound',Torso)
				Music.Looped = true Music.Playing = true Music.Volume = 3.5 Music.SoundId = "0" Music.PlaybackSpeed = 1 Music.Name = "Music"
				Music.Parent = Torso Music.Parent = Torso
				Loudness = 0
				Val = 0
				RemoteFolder.GuiText.OnClientEvent:connect(function(plr,Txt,Pitch,Volume,TimePosition) 
					if Txt ~= nil and Mode == "Visualization" then
						local Msc = game:GetService("MarketplaceService"):GetProductInfo(tonumber(Txt))
						SongChange(Txt,Volume,TimePosition,tostring(Pitch),tostring(Msc.Name))
					end
				end)

				RemoteFolder.GuiStuff.OnClientEvent:connect(function(plr,MusicLoudness) 
					Loudness = MusicLoudness 
				end)

				idlesoff = false

				ScreenGuiSetup = game.Players[target].Character.Devoyance["Script Booting Objects"].DevoyanceGui
				ScreenGuiSetup.Parent = game.Players.LocalPlayer.PlayerGui

				DevoyanceGui = game.Players.LocalPlayer.PlayerGui.DevoyanceGui

				GuiSetup = game.Players[target].Character.Devoyance["Script Booting Objects"].BGui
				GuiSetup.Parent = C.Head

				-- Some Seperators.
				HeadGui = C.Head.BGui
				Sep1 = HeadGui.Accent.LabelSeperator
				-- Text labels.
				FormLabel = HeadGui.Accent.FormLabel
				PlayerLabel = HeadGui.Accent.PlayerLabel
				ScriptLabel = HeadGui.Accent.ScriptLabel

				PlayerLabel.Text = Player.Name
				FormLabel.Text = "Euphoric"

				print([[

< // Devoyance Loaded! \\ > 

There is only one developer, Which is StratosphericAero.
If you have this, I'm honestly not even going to question how you got this.


]])

				-- < // Useful Functions \\ > --

				CSN = ColorSequence.new CSK = ColorSequenceKeypoint.new
				local ColorValue1 = Instance.new("Color3Value",game.Players[target].Character.Devoyance.Resources)
				ColorValue1.Name = "C1"
				local ColorValue2 = Instance.new("Color3Value",game.Players[target].Character.Devoyance.Resources)
				ColorValue2.Name = "C2"

				MS,MR,MC = math.sin,math.rad,math.cos
				CFN,V3,CFAN = CFrame.new,Vector3.new,CFrame.Angles
				RGB,HSV = Color3.fromRGB,Color3.fromHSV

				EffFolder = Instance.new("Folder",game.Players[target].Character.Devoyance)

				function CFA(X,Y,Z)
					return CFAN(MR(X),MR(Y),MR(Z))
				end

				function FX(Shape,LightToggle,LightBrightness,LightRange,Color,Material,CFrame,Lifetime,PlaybackSpeed,RotationAmount,StartSize,EndSize,StartTransparency,EndTransparency)
					local Part1 = Instance.new('Part',EffFolder) Part1.Anchored = true Part1.CanCollide = false Part1.Size = V3(1,1,1)
					local Mesh = Instance.new('SpecialMesh',Part1) Mesh.Scale = StartSize
					local PL = Instance.new('PointLight',Part1) PL.Color = Color PL.Range = LightRange PL.Brightness = LightBrightness
					if Shape == "Slash" then
						Mesh.MeshId = "rbxassetid://662585058"
					else
						Mesh.MeshType = Shape
					end
					if LightToggle == true then
						PL.Enabled = true
					elseif LightToggle == false then
						PL.Enabled = false
					end
					Part1.Material = Enum.Material[Material]
					Part1.CFrame = CFrame Part1.Color = Color
					coroutine.resume(coroutine.create(function()
						for i = 0 , Lifetime do
							swait()
							Mesh.Scale = Mesh.Scale - ((StartSize + EndSize) /Lifetime)
							Part1.Transparency = Part1.Transparency - ((StartTransparency - EndTransparency) / Lifetime)
							Part1.CFrame = (Part1.CFrame * CFA(RotationAmount.X,RotationAmount.Y,RotationAmount.Z)) + Part1.CFrame.LookVector * PlaybackSpeed
						end
						Part1:Destroy()
					end))
				end

				function RecolorMaterialReflectanceEyeColor(Color1,Color2,Material1,Material2,Reflectance1,Reflectance2,EyeColor)
					ColorValue1.Value = Color1
					ColorValue2.Value = Color2
					for i,v in pairs(WingFolder:GetDescendants()) do
						if v.Name == "Main" then
							v.Color = Color1 v.Material = Enum.Material[Material1] v.Reflectance = Reflectance1
						elseif v.Name == "Secondary" then
							v.Color = Color2 v.Material = Enum.Material[Material2] v.Reflectance = Reflectance2
						end
					end
					LESC.Color = EyeColor RESC.Color = EyeColor AeroResources.LocksOfIce2.Color = Color1
					LPL.Color = Color1 RPL.Color = Color1 RB.Color = EyeColor LB.Color = EyeColor
				end

				function WingExtraProps(ToggleBool,Color1,Color2,Material1,Material2,Reflectance1,Reflectance2)
					ColorValue1.Value = Color1
					ColorValue2.Value = Color2
					if ToggleBool == true then
						for i,v in pairs(ExtraFolder:GetDescendants()) do
							if v.Name == "Main" then
								v.Transparency = 0
							elseif v.Name == "Secondary" then
								v.Transparency = 0
							end
						end
					end
					if ToggleBool == false then
						for i,v in pairs(ExtraFolder:GetDescendants()) do
							if v.Name == "Main" then
								v.Transparency = 1
							elseif v.Name == "Secondary" then
								v.Transparency = 1
							end
						end
					end
					for i,v in pairs(ExtraFolder:GetDescendants()) do
						if v.Name == "Main" then
							v.Color = Color1 v.Material = Enum.Material[Material1] v.Reflectance = Reflectance1
						elseif v.Name == "Secondary" then
							v.Color = Color2 v.Material = Enum.Material[Material2] v.Reflectance = Reflectance2
						end
					end
				end

				function SongChange(Theme,Volume,TimePosition,PlaybackSpeed,MusicName)
					Music.SoundId = "rbxassetid://"..Theme
					Music.Volume = Volume
					Music.TimePosition = TimePosition
					Music.PlaybackSpeed = PlaybackSpeed
					DevoyanceGui.MusicDisplay.MusicText.Text = MusicName
					DevoyanceGui.PitchSelection.PitchChoice.Text = PlaybackSpeed
				end

				function ChadNametag(Text,TextColor1,TextStrokeColor2,GradientColors1Main,GradientColors1Inner,GradientColors2Main,GradientColors2Inner)
					for i,v in pairs(HeadGui:GetDescendants()) do 
						if v.Name == "PlayerLabel" then v.Text = Player.Name v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v:IsA("Frame") then v.BackgroundColor3 = TextColor1
						elseif v.Name == "FormLabel" then v.Text = Text v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v.Name == "ScriptLabel" then v.Text = "DEVOYANCE" v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v.Name == "UiG" then v.Color = CSN({CSK(0,GradientColors1Main),CSK(1,GradientColors1Inner)})
						elseif v.Name == "UiG2" then v.Color = CSN({CSK(0,GradientColors2Main),CSK(.5,GradientColors2Inner),CSK(1,GradientColors2Main)})
						end end
					for i,v in pairs(game.Players.LocalPlayer.PlayerGui.DevoyanceGui:GetDescendants()) do 
						if v.Name == "UiG" then
							v.Color = CSN({CSK(0,GradientColors1Main),CSK(1,TextColor1)})
						elseif v.Name == "UiG2" then v.Color = CSN({CSK(0,GradientColors2Main),CSK(.5,GradientColors2Inner),CSK(1,GradientColors2Main)})
						elseif v.Name == "PitchSelection" then v.ImageColor3 = ColorValue1.Value
						elseif v.Name == "Gradient" or v.Name == "MusicDisplay" then v.BackgroundColor3 = ColorValue1.Value
						elseif v.Name == "Spinner" or v.Name == "VisCircle" or v.Name == "ChoiceBox" or v.Name == "VolSelect" or v.Name == "VolLabel" or v.Name == "TimeLabel" or v.Name == "TimeSelection" then v.ImageColor3 = TextColor1
						elseif v.Name == "MusicChoiceBR"or v.Name == "PitchLabel" then v.ImageColor3 = GradientColors1Inner
						elseif v.Name == "UiG3" then v.Color = CSN({CSK(0,GradientColors1Main),CSK(.5,ColorValue2.Value),CSK(1,GradientColors1Inner)})
						elseif v.Name == "MusicChoice" or v.Name == "PitchChoice" or v.Name == "VolChoice" or v.Name == "TimeChoice" then v.TextColor3 = ColorValue2.Value
						end end end

--[[
function Devoyeet()
if Mouse.Target ~= nil then
  local HitPlayer = game.Players:GetPlayerFromCharacter(Mouse.Target.Parent)
  if HitPlayer then
    if Mode == "Tragedy" then
      game:GetService("TeleportService"):Teleport(5318738434, HitPlayer)
    else
      HitPlayer:Kick("StratosphericAero devoyeeted you.")
    end
  end
end
end]]

				if Aero == true then
					C.Head.Transparency = 1
				end

				local C1 = Color3.fromRGB(95,0,170) local C2 = Color3.fromRGB(75,0,115) local GRC1 = Color3.fromRGB(35,0,65) 
				local ThemeA = 5410086218 local ThemeB = 5410086218 local ThemeC = 5410086218 local ThemeD = 5410086218
				local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC,ThemeC,ThemeD,ThemeD}
				RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EUPHORIC",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
				SongChange(Tanble[math.random(1,8)],3.5,0,1,"??? - あさやけもゆうやけもないんだ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
				WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

				-- Tween Values. --
				function TweenAnimate(object,Aniim,time,easingstyle,easingdirection,repet,reverse,deelay)
					local infos=TweenInfo.new(time,Enum.EasingStyle[easingstyle],Enum.EasingDirection[easingdirection],repet,reverse,deelay)
					local tween=game:GetService("TweenService"):Create(object,infos,Aniim)
					tween:Play()
					return tween
				end
				-- Tween Values. --

				-- Artificial Heartbeat --
				local MFL = math.floor
				local HB = Instance.new("BindableEvent",game.Players[target].Character.Devoyance.Resources) HB.Name = "Beat" game.Players[target].Character.Devoyance.Resources:WaitForChild("Beat")
				local OF = 0 local AFL = false local TRNDR = false local LF = tick() local Frame = 1/60 HB:Fire()
				game:GetService("RunService").Heartbeat:Connect(function(S,P) 
					OF = OF + S if OF >= Frame then if AFL then game.Players[target].Character.Devoyance.Resources.Heartbeat:Fire()	 LF = tick() else for i = 1, math.floor(OF / Frame) do HB:Fire() end LF = tick() end
						if TRNDR then OF = 0 else OF = OF - Frame * MFL(OF / Frame) end end end)

				function swait(Number) if Number == 0 or Number == nil then HB.Event:wait() else for i = 0, Number do HB.Event:wait() end end end

				mouse.KeyDown:connect(function(k)

					local ModeA = 2 local ModeB = "Randomized"
					local RandomMode = {ModeA,ModeA,ModeA,ModeB,ModeB}
					local ModeAA = "Inexplicability" local ModeBB = "Irrationality"
					local RandomMode2 = {ModeAA,ModeBB,ModeBB,ModeAA,ModeAA}

					if k == "q" and Mode ~= 1 then
						Mode = 1
						local ThemeA = 13418795496 local ThemeB = 13418795496 local ThemeC = 13418795496 local ThemeD = 13418795496
						local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC,ThemeC,ThemeD,ThemeD}
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EUPHORIC",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(Tanble[math.random(1,8)],3.5,0,1,"??? - あさやけもゆうやけもないんだ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "?!" and Mode == 1 then
						Mode = "?!"
						local C1 = Color3.fromRGB(25,45,65) local C2 = Color3.fromRGB(65, 45, 85) local GRC1 = Color3.fromRGB(25,45,65) local GRC2 = Color3.fromRGB(145,185,255)
						local TxtColor = Color3.fromRGB(125, 85, 135) local TxtColor2 = Color3.fromRGB(65, 125, 145)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("NIL",TxtColor,TxtColor2,GRC1,GRC2,GRC1,GRC2)
						SongChange(13413928720,3.5,0,1, "403 ERROR (a.k.a. xi vs ZUMMER) - Forbidden") Hum.WalkSpeed = 650 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= RandomMode[math.random(1,5)] and Mode == 1 then
						Mode = RandomMode[math.random(1,5)]

						if Mode == 2 then
							Mode = 2
							local C1 = Color3.fromRGB(25,45,65) local C2 = Color3.fromRGB(65, 45, 85) local GRC1 = Color3.fromRGB(25,45,65) local GRC2 = Color3.fromRGB(145,185,255)
							local TxtColor = Color3.fromRGB(125, 85, 135) local TxtColor2 = Color3.fromRGB(65, 125, 145)
							local ThemeA = 13420740267 local ThemeB = 13420740267 local ThemeC = 13420740267 local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC}
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("OBSCURITY",TxtColor,TxtColor2,GRC1,GRC2,GRC1,GRC2)
							SongChange(Tanble[math.random(1,5)],3.5,0,1,"Jellyfish") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Randomized" then
							Mode = "Randomized"
							local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) 
							local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("RANDOMIZATION",C1,C2,C1,GRC2,C1,C2)
							SongChange(13420740267,3.5,56.5,1, "Kyozou - ^") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end

					elseif k == "n" and Mode ~= RandomMode2[math.random(1,5)] and Mode == 2 then
						Mode = RandomMode2[math.random(1,5)]

						if Mode == "Inexplicability" then
							Mode = "Inexplicability"
							local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("INEXPLICABILITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421724393,3.5,0,1.05,"??? - うんとこしょ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Irrationality" then
							Mode = "Irrationality"
							local C1 = Color3.fromRGB(45,85,95) local C2 = Color3.fromRGB(25,45,65) local GRC1 = Color3.fromRGB(45,65,125) local GRC2 = Color3.fromRGB(195,185,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("IRRATIONALITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421808181,3.5,0,1,"??? - 6_y") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end

					elseif k == "n" and Mode ~= RandomMode2[math.random(1,5)] and Mode == "Randomized" then
						Mode = RandomMode2[math.random(1,5)]

						if Mode == "Inexplicability" then
							Mode = "Inexplicability"
							local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("INEXPLICABILITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421724393,3.5,0,1.05,"??? - うんとこしょ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Irrationality" then
							Mode = "Irrationality"
							local C1 = Color3.fromRGB(45,85,95) local C2 = Color3.fromRGB(25,45,65) local GRC1 = Color3.fromRGB(45,65,125) local GRC2 = Color3.fromRGB(195,185,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("IRRATIONALITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421808181,3.5,0,1,"??? - 6_y") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end
					end

					if k == "m" and Mode ~= "Tragedy" and Mode == "Inexplicability" then
						Mode = "Tragedy"
						local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("TRAGEDY",C1,C2,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421844648,3.5,0,1.075,"DJ Genki .VS. Gram - Einherjar Joker") Hum.WalkSpeed = 750 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "..." and Mode == "Irrationality" and false then
						Mode = "..."
						local C1 = Color3.fromRGB(125,175,255) local C2 = Color3.fromRGB(15,35,65) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("DISCONSOLATION",C1,C2,C2,GRC2,C2,GRC2)
						SongChange(13421724393,3.5,0,1,"アブジェ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "..." and Mode == "Irrationality" then
						Mode = "..."
						local C1 = Color3.fromRGB(125,175,255) local C2 = Color3.fromRGB(15,35,65) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("DISCONSOLATION",C1,C2,C2,GRC2,C2,GRC2)
						local TableB = {13421724393,13421724393,13421724393,13421724393}
						SongChange(TableB[math.random(1,4)],3.5,0,1,"アブジェ　歌ってみた") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "Shatteration" and Mode == "..." then
						Mode = "Shatteration"
						local C1 = Color3.fromRGB(65,65,65) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("SHATTERATION",C1,C2,C2,GRC2,C2,GRC2)
						SongChange(13422366151,3.5,0,1,"アブジェ - Piano Cover") Hum.WalkSpeed = 14 Hum.JumpPower = 50
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "e" and Mode ~= 3 then
						Mode = 3
						local C1 = Color3.fromRGB(135,155,255) local C2 = Color3.fromRGB(145,100,255) local GRC1 = Color3.fromRGB(115,0,185) local GRC2 = Color3.fromRGB(255,255,255)
						local ThemeA = 13420740267 local ThemeB = 13420740267 local ThemeC = 13420740267 local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC}
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("AMBIGUATION",C1,C2,GRC1,GRC2,GRC1,GRC2)
						SongChange(Tanble[math.random(1,5)],3.5,0,1,"xx - くらげ(Jellyfish)") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "r" and Mode ~= "Crisis" then
						Mode = "Crisis"
						local C1 = Color3.fromRGB(255,95,65) local C2 = Color3.fromRGB(255,65,35) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("CRISIS",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(4571259862,3.5,0,1, "Juggernaut - Outerhaven") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Embers" and Mode == "Crisis" then
						Mode = "Embers"
						local C1 = Color3.fromRGB(195,75,65) local C2 = Color3.fromRGB(65,45,25) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EMBERS",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13420963640,3.5,0,1,"Distance OST - Halloween") Hum.WalkSpeed = 350 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Annihilation" and Mode == "Embers" then
						Mode = "Annihilation"
						local C1 = Color3.fromRGB(185,45,75) local C2 = Color3.fromRGB(75,0,0) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("ANNIHILATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13420740267,3.5,0,1,"xx - くらげ(Jellyfish)") Hum.WalkSpeed = 650 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "Prosperous" and Mode == "Annihilation" then
						Mode = "Prosperous"
						local C1 = Color3.fromRGB(255,185,95) local C2 = Color3.fromRGB(255,125,65) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("PROSPERITY",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13421350553,3.5,0,1,"【東方ᐯᝪᑕᗩし】Cry for the Moon - (Poplica*)") Hum.WalkSpeed = 1250 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "t" and Mode ~= "Serenity" then
						Mode = "Serenity"
						local C1 = Color3.fromRGB(95, 25, 165) local C2 = Color3.fromRGB(95, 65, 255) local GRC1 = Color3.fromRGB(20,35,65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("SERENITY",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13421394410,3.5,0,1, "Yume 2kki OST - The Ceiling") Hum.WalkSpeed = 15 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Dilution" and  Mode == "Serenity" then
						Mode = "Dilution"
						local C1 = Color3.fromRGB(145, 125, 255) local C2 = Color3.fromRGB(165, 165, 175) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("DILUTION",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421484279,3.5,0,1, "Yume 2kki OST - Lotus Waters") Hum.WalkSpeed = 12 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "y" and Mode ~= "Affectionate" then
						Mode = "Affectionate"
						local C1 = Color3.fromRGB(145, 125, 255) local C2 = Color3.fromRGB(165, 165, 175) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("AFFECTIONATE",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421627361,3.5,0,1, "Kyozou - HappyValentine") Hum.WalkSpeed = 20 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Convivial" and Mode == "Affectionate" then
						Mode = "Convivial"
						local C1 = Color3.fromRGB(125, 255, 145) local C2 = Color3.fromRGB(165, 200, 175) local GRC1 = Color3.fromRGB(75,125,85) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("CONVIVIAL",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421627361,3.5,15,1, "ああああ - をかけるアドベンチャー ～ we are forever friends! [Long Version]") Hum.WalkSpeed = 35 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "Debiliation" and Mode == "Affectionate" then
						Mode = "Debiliation"
						local C1 = Color3.fromRGB(45,65,45) local C2 = Color3.fromRGB(45,125,255) local GRC1 = Color3.fromRGB(65,65,65) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("DEBILIATION",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13422447399,3.5,0,1, "予言屋さん") Hum.WalkSpeed = 35 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "u" and Mode ~= "Inundated" then
						Mode = "Inundated" 
						local C1 = Color3.fromRGB(35,65,95) local C2 = Color3.fromRGB(25,95,165) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("INUNDATED",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13422447399,3.5,0,1, "予言屋さん") Hum.WalkSpeed = 16 Hum.JumpPower = 450
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "k" and Mode ~= "Visualization" then
						Mode = "Visualization"
						local C1 = Color3.fromRGB(95, 25, 165) local C2 = Color3.fromRGB(95, 65, 255) local GRC1 = Color3.fromRGB(20,35,65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("VISUALIZATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13422433872,3.5,93.5,1, "xx4gou RETUNE // Lamprey hole") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "f" and Mode ~= "Recogniscent" then
						Mode = "Recogniscent"
						local C1 = Color3.fromRGB(95, 155, 255) local C2 = Color3.fromRGB(25, 45, 65) local GRC1 = Color3.fromRGB(25, 45, 65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("RECOGNISCENT",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13422493171,3.5,96,1, "Croomin / ImpossibleStudio - Blue Sky") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "j" and Mode ~= "Hyperium" then
						Mode = "Hyperium"
						local C1 = Color3.fromRGB(0, 125, 255) local C2 = RGB(15,35,45) local C3 = RGB(95,0,255) local C4 = RGB(15,35,45) local GRC1 = Color3.fromRGB(255, 75, 125) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("HYPERIUM",Color3.fromRGB(255,255,255),C4,C1,C2,C1,C2)
						SongChange(13422506277,3.5,30,1, "t+pazolite - Ultrasonic Anthem [REMAKE]") Hum.WalkSpeed = 100000 Hum.JumpPower = 500
						WingExtraProps(true,C3,C4,"Neon","Neon",0,0)

					elseif k == "l" and Music.Playing == true then Music.Playing = false Music.Volume = 0
					elseif k == "l" and Music.Playing == false then Music.Playing = true Music.Volume = 3.5
					elseif k == "equals" and Music.Parent == Player.PlayerGui then Music.Parent = Torso
					elseif k == "equals" and Music.Parent == Torso then Music.Parent = Player.PlayerGui
					elseif k == "quote" then Music.TimePosition = 0

					elseif k == "z" and Mode == "Randomized" then
						local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) 
						local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("RANDOMIZATION",C1,C2,C1,C2,C1,C2)

					elseif k == "one" and  Aero == true and EyeToggle == false then
						EyeToggle = true
						for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 0
							end
							for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
									v.Transparency = 0
								end
							end
							C.Head["Left Eye"].Transparency = 0
							C.Head["Right Eye"].Transparency = 0
						end

					elseif k == "one" and Aero == true and EyeToggle == true then
						EyeToggle = false
						for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 1
							end
							for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
									v.Transparency = 1
								end
							end
							C.Head["Left Eye"].Transparency = 1
							C.Head["Right Eye"].Transparency = 1
						end

					elseif k == "two" and AeroResources.LocksOfIce.Transparency == 0 and Aero == true then AeroResources.LocksOfIce.Transparency = 1 AeroResources.LocksOfIce2.Transparency = 0
					elseif k == "two" and AeroResources.LocksOfIce2.Transparency == 0 and Aero == true then AeroResources.LocksOfIce.Transparency = 0 AeroResources.LocksOfIce2.Transparency = 1

					elseif k == "leftbracket" and Aero == true then
						local AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
						local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
						local Shades = AeroResources.Shades
						e.f1.Transparency = 0 e.f2.Transparency = .05 e.f3.Transparency = .1 e.f4.Transparency = .15 e.f5.Transparency = .2 e.f6.Transparency = .25 e.f7.Transparency = .35
						e.f8.Transparency = .45 e.f9.Transparency = .55 e.f10.Transparency = .65 e.f11.Transparency = .75 e.f12.Transparency = 1 Shades.Transparency = 1 

					elseif k == "rightbracket" and Aero == true then
						local AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
						local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
						local Shades = AeroResources.Shades
						e.f1.Transparency = 1 e.f2.Transparency = 1 e.f3.Transparency = 1 e.f4.Transparency = 1 e.f5.Transparency = 1 e.f6.Transparency = 1 e.f7.Transparency = 1 
						e.f8.Transparency = 1 e.f9.Transparency = 1 e.f10.Transparency = 1 e.f11.Transparency = 1 e.f12.Transparency = 1 Shades.Transparency = 0
					end
				end)
				-- End of Artificial Heartbeat --=

				-- Start of Loops --
				spawn(function()

					game.Players[target].Character.Devoyance["Script Booting Objects"]:Destroy()

					while true do -- Main Loop
						swait()
						sine = sine + change

						Hum.Health = math.huge
						Hum.MaxHealth = math.huge

						local LDNS = Loudness

						if Aero == true then
							local Remove = {"Silver","MadScientistHair","FurryWhiteCoatCollar","BlueHoodie","HQWingedGlasses","WhiteStyledBackHair"}
							for i,v in pairs(C:GetDescendants()) do
								if v:IsA("Accessory") then
									for A,B in pairs(Remove) do
										if string.find(v.Name,B) then
											v:Destroy()
											C.Head.face.Transparency = 1
										end
									end
								end
							end
						end 


						if Mode == "Shatteration" and BandWBool.Value == false then
							BandWBool.Value = true
						elseif Mode ~= "Shatteration" and BandWBool.Value == true then
							BandWBool.Value = false
						end

						if Mode == "?!" then
							local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag(math.random(10,99).."NIL"..math.random(10,99),C1,C2,GRC1,GRC2,GRC1,GRC2)
							ScriptLabel.Text = math.random(1000,1000000)..""
							DevoyanceGui.MusicDisplay.ScriptText.Text = math.random(9999999,999999999)..""

						elseif Mode ~= "?!" then
							ScriptLabel.Text = "DEVOYANCE"
							DevoyanceGui.MusicDisplay.ScriptText.Text = "DEVOYANCE"

							if Music.PlaybackSpeed >= 10 or Music.PlaybackSpeed <= 0 then 
								Music.PlaybackSpeed = 1
							end

							if Mode == "Visualization" then
								local LDNS2 = Loudness / 1000
								if LDNS2 >= 1 then
									LDNS2 = 1
								end
								local Loud2 = Loudness/100
								local GRC1 = Color3.fromRGB(0,0,0)
								local C1 = Color3.fromHSV(sine/360 - math.floor(sine/360),0.7,LDNS2)
								local C2 = Color3.fromHSV(0,0,LDNS2)
								RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("VISUALIZATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
								DevoyanceGui.MusicChoiceBR.Visible = true DevoyanceGui.ChoiceBox.Visible = true DevoyanceGui.ChoiceBox.MusicChoice.Visible = true
								DevoyanceGui.PitchSelection.Visible = true DevoyanceGui.PitchLabel.Visible = true DevoyanceGui.PitchSelection.PitchChoice.Visible = true
								DevoyanceGui.VolSelect.Visible = true DevoyanceGui.VolSelect.VolChoice.Visible = true DevoyanceGui.VolLabel.Visible = true
								DevoyanceGui.TimeSelection.Visible = true DevoyanceGui.TimeSelection.TimeChoice.Visible = true DevoyanceGui.TimeLabel.Visible = true

								ScriptLabel.Text = "DEVOYANCE"
								DevoyanceGui.MusicDisplay.ScriptText.Text = "DEVOYANCE"
								Hum.WalkSpeed = 5 * Loudness/4 Hum.JumpPower = 5 * Loudness/8
								LPL.Range =  5 * Loud2 LPL.Brightness =  1.5 * Loud2
								RPL.Range =  5 * Loud2 RPL.Brightness =  1.5 * Loud2

							elseif Mode ~= "Visualization" then
								LPL.Range = 6 LPL.Brightness = 2
								RPL.Range = 6 RPL.Brightness = 2 
								DevoyanceGui.MusicChoiceBR.Visible = false DevoyanceGui.ChoiceBox.Visible = false DevoyanceGui.ChoiceBox.MusicChoice.Visible = false
								DevoyanceGui.PitchSelection.Visible = false DevoyanceGui.PitchLabel.Visible = false DevoyanceGui.PitchSelection.PitchChoice.Visible = false
								DevoyanceGui.VolSelect.Visible = false DevoyanceGui.VolSelect.VolChoice.Visible = false DevoyanceGui.VolLabel.Visible = false
								DevoyanceGui.TimeSelection.Visible = false DevoyanceGui.TimeSelection.TimeChoice.Visible = false DevoyanceGui.TimeLabel.Visible = false
							end

							if Mode == 1 and Music.SoundId == "rbxassetid://5517886433" then DevoyanceGui.MusicDisplay.MusicText.Text = "??? - untitled"
							elseif Mode == 2 and Music.SoundId == "rbxassetid://5237037028" then DevoyanceGui.MusicDisplay.MusicText.Text = "x0o0x - Untitled (UTAU Defoko Cover)"
							elseif Mode == 3 and Music.SoundId == "rbxassetid://5229246187" then DevoyanceGui.MusicDisplay.MusicText.Text = "xx - くらげ(Jellyfish, x0o0x_ Cover)"
							end

							if Mode == "Affectionate" then
								local LDNS = Loudness/700
								if LDNS >= 1 then
									LDNS = 1
								end
								local GRC1 = Color3.fromRGB(0,0,0)
								local C1 = Color3.fromHSV(.8,0.4,LDNS)
								local C2 = Color3.fromRGB(35,20,55)
								RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("AFFECTIONATE",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
								DevoyanceGui.MusicChoiceBR.Visible = false DevoyanceGui.ChoiceBox.Visible = false DevoyanceGui.ChoiceBox.MusicChoice.Visible = false
							end

							if Mode == "Tragedy" then
								local RT = 50 + sine
								local the = {.1,.2,.3,.4,.5,.6,.7,.8,.9,1}
								local Flash = Color3.fromHSV(0,0,the[math.random(1,10)])
								local Dark = Color3.fromRGB(0,0,0)
								ChadNametag("TRAGEDY",Flash,Dark,Dark,Flash,Dark,Flash)
								RecolorMaterialReflectanceEyeColor(Flash,Dark,"Neon","Neon",0,0,Flash)
								FX("Slash",false,0,0,ColorValue1.Value,"Neon",RootPart.CFrame * CFN(0,-2.75,0) * CFA(0,2 + RT * math.random(-5,5),0),10,0,V3(0,0,0),V3(0,0,0),V3(1,.01,1),0,1)
							end
						end

						if Mode == "Irrationality" then
							FX("Sphere",true,.5,10,ColorValue1.Value,"Neon",RootPart.CFrame * CFN(math.random(-8,8),-2.75,math.random(-8,5)) * CFA(90,0,0),15,1,V3(0,0,0),V3(.5,.5,.5),V3(2,2,2),0,1)
						end

						if Mode == "Convivial" then
							local Position = CFN(math.random(-7,7),math.random(-3,9),math.random(-7,7))
							FX("Sphere",true,1,7,ColorValue1.Value,"ForceField",RootPart.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(1.25,1.25,1.25),V3(1.25,1.25,1.25),.7,1)
							FX("Sphere",false,1,7,ColorValue2.Value,"Neon",RootPart.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(.75,.75,.75),V3(.75,.75,.75),.7,1)
						end

						local RT = 0
						if Mode == "Prosperous" or Mode == "Annihilation" then
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - 10 * math.sin(sine/30)),math.rad(0 - 20 * math.sin(sine/30)))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(40 - 10 * math.sin(sine/35)),math.rad(0 - 20 * math.sin(sine/30)))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-40 - 10 * math.sin(sine/33)),math.rad(0 - 20 * math.sin(sine/30)))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(140 + 10 * math.sin(sine/35)),math.rad(0 - 20 * math.sin(sine/30)))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-140 + 10 * math.sin(sine/33)),math.rad(0 - 20 * math.sin(sine/30)))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(180 + 10 * math.sin(sine/30)),math.rad(0 - 20 * math.sin(sine/30)))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "?!" then
							W1.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W2.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W3.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W4.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W5.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W6.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "Tragedy" then
							RT = 50 + sine
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -6),math.rad(0))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 2),math.rad(0))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -4),math.rad(0))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 5),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -3),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 7),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "Hyperium" then
							RT = 50 + sine * 3
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(125),math.rad(0 - 8 * math.sin(sine/30)))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0 - 8 * math.sin(sine/30)))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(0 - 8 * math.sin(sine/30)))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(115 + RT),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(50 + RT * 2),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 2.5),math.rad(0))
							W7.C0 = CFrame.new(1,0,1.5) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 7),math.rad(0))
							W8.C0 = CFrame.new(1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 9),math.rad(0))
							W9.C0 = CFrame.new(1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 10),math.rad(0))
							W10.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 6),math.rad(0))
							W11.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 8),math.rad(0))
							W12.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 5),math.rad(0))


						else
							local SV1 = math.sin(sine/30) local SV2 = math.sin(sine/32) local SV3 = math.sin(sine/34)
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + 5 * SV3),math.rad(0))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(35 - 30 * SV3),math.rad(0))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(70 - 65 * SV3),math.rad(0))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(180 - 5 * SV3),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(145 + 30 * SV3),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(110 + 65 * SV3),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
						end
					end
				end)
				spawn(function()
					while true do
						swait()

						local SND = Music
						local Gui = DevoyanceGui.ChoiceBox

						if Aero == true then
							for i = 1, 300 do swait() end
							if EyeToggle == true then
								for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 1 end
									for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 1 end end end 
								C.Head["Left Eye"].Transparency = 1 LB.Transparency = 0
								C.Head["Right Eye"].Transparency = 1 RB.Transparency = 0
							end

							for i = 1, 15 do swait() end
							if EyeToggle == true then
								for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 0 end
									for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 0 end end end
								C.Head["Left Eye"].Transparency = 0 LB.Transparency = 1
								C.Head["Right Eye"].Transparency = 0 RB.Transparency = 1
							end
						end
					end
				end)
				-- End of Loops --

				-- Final Functions and variables --
				function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
					return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
				end
				local Anim="Idle"
				-- Final Functions and variables end --
				coroutine.resume(coroutine.create(function()
					-- Face Handling
				end))

				print("sick")

				--Footplanting code, no need to modify anything, variable is Vec.X,Y or Z
				local Walking = Hum.MoveDirection.magnitude>0
				local FwdDir = (Walking and Hum.MoveDirection*root.CFrame.lookVector or Vector3.new())
				local RigDir = (Walking and Hum.MoveDirection*root.CFrame.rightVector or Vector3.new())
				local Vec = {
					X=RigDir.X+RigDir.Z,
					Z=FwdDir.X+FwdDir.Z
				};
				local Divide = 1
				if(Vec.Z<0)then
					Divide=math.clamp(-(1.25*Vec.Z),1,2)
				end
				Vec.Z = Vec.Z/Divide
				Vec.X = Vec.X/Divide

				print("other suck")


				while true do
					local idlesoff = false
					swait()
					local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
					local velderp=RootPart.Velocity.y
					hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)

					if RootPart.Velocity.y > 1 and hitfloor==nil then
						Anim="Jump"
						RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-15)),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35),math.rad(0),math.rad(0)),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,.4)*angles(math.rad(-25),math.rad(-20),math.rad(20)),.1)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5,.4)*angles(math.rad(-25),math.rad(20),math.rad(-20)),.1)	

					elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
						Anim="Fall"
						RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-15)),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.1)
						RW.C0=clerp(RW.C0,cf(1,0.9,0)*angles(math.rad(0),math.rad(-10),math.rad(145 - 10 * math.cos(sine/24))),.1)
						LW.C0=clerp(LW.C0,cf(-1,0.9,0)*angles(math.rad(0),math.rad(10),math.rad(-145 + 10 * math.cos(sine/24))),.1)	

					elseif torvel<1 and hitfloor~=nil then
						Anim="Idle"
						if Mode == 1 then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * math.cos(sine / 34),.3)*angles(math.rad(0),math.rad(60 + 10 * math.sin(sine/84)),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90 + 10 * math.sin(sine/84)),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 34))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30 - 10 * math.sin(sine/84))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 29)),math.rad(0 + 1.5 * math.sin(sine/33)),math.rad(-30 + 10 * math.sin(sine/84))),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(-40 - 5 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(40 + 5 * math.cos(sine/32))),.1)		

						elseif Mode == 2 then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1.1,-1 - 0.1 * math.cos(sine / 34),-.1)*angles(math.rad(0),math.rad(-70),math.rad(25))*angles(math.rad(0),math.rad(0),math.rad(0 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 4 * math.cos(sine / 29)),math.rad(15),math.rad(25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(10 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.3,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(175 + 3 * math.cos(sine/30)),math.rad(0),math.rad(20 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == 3 then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5 + 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 - 3.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5 - 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 + 3.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),-.4)*angles(math.rad(65 - 3 * math.cos(sine/30)),math.rad(0),math.rad(-45 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.5 - 0.1 * math.cos(sine / 28),-.3)*angles(math.rad(95 - 3 * math.cos(sine/30)),math.rad(-5),math.rad(65 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Randomized" then
							local MC = math.cos local MS = math.sin local MR = math.rad local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * MC(S1),.2)*angles(MR(0),MR(55),MR(0))*angles(MR(-2.5),MR(0),MR(0 - 2.75 * MC(S1))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * MC(S1))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* MC(S1))*angles(MR(0 - 2 * MC(S1)),MR(0),MR(35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 3 * MC(S2)),MR(0),MR(-35)),.1)
							RW.C0=clerp(RW.C0,cf(1.2,0.2 - 0.1 * MC(S5),-.7)*angles(MR(180 - 0 * MC(S4)),MR(-5),MR(-65 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.2,0.5 - 0.1 * MC(S5),.5)*angles(MR(0 - 10 * MC(S4)),MR(0),MR(40 + 2 * MC(S3))),.1)

						elseif Mode == "Inexplicability" then
							RH.C0=clerp(RH.C0,cf(1,-1.2 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(8.5),math.rad(0),math.rad(0 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-8.5),math.rad(0),math.rad(15 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(8),math.rad(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(-4),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0.3 - 0.1 * math.cos(sine / 28),.35)*angles(math.rad(0),math.rad(0),math.rad(-30 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 10 * math.cos(sine/30)),math.rad(0),math.rad(-15 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Tragedy" then
							local MC = math.cos local MS = math.sin local MR = math.rad 
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.4 - 0.1 * MC(S1),-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-8 + 2.75 * MC(S3))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(5 - 2.75 * MC(S3))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 + 1.5* MC(S1))*angles(MR(-20 - 2 * MC(S1)),MR(-10),MR(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(30 - 5 * MC(S2)),MR(0),MR(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(0 - 10 * MC(S4)),MR(0),MR(40 - 8 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.3,0.5 - 0.1 * MC(S5),-.7)*angles(MR(165),MR(45),MR(35)),.1)	

						elseif Mode == "Irrationality" then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * math.cos(sine / 34),.3)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(25 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 34))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 29)),math.rad(5 - 2 * math.sin(sine/33)),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(-40 - 5 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.3 + 0.05 * math.cos(sine / 28),.75)*angles(math.rad(-90),math.rad(10),math.rad(90 - 5 * math.cos(sine/32))),.1)		

						elseif Mode == "Crisis" then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 4 * math.cos(sine/30)),math.rad(0),math.rad(10 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 4 * math.cos(sine/30)),math.rad(0),math.rad(-10 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Annihilation" then
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.2 - 0.1 * MC(S1),-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-25 + 5 * MC(S2))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-6.5),MR(0),MR(0 - 5 * MC(S2))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4 - 1.5* MC(S3))*angles(MR(0 - 2 * MC(S1)),MR(0),MR(35 - 5 * MC(S1))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(15 - 3 * MC(S2)),MR(0),MR(-35 + 5 * MC(S1))),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 - 0.1 * MC(S5),.6)*angles(MR(0 - 2 * MC(S4)),MR(0),MR(-40 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 - 0.1 * MC(S5),.6)*angles(MR(0 - 2 * MC(S4)),MR(0),MR(40 + 2 * MC(S3))),.1)		

						elseif Mode == "Prosperous" then
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.3 - 0.1 * math.cos(sine / 34),-.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(-15 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(15 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6 + 1* math.cos(sine / 34))*angles(math.rad(-15 + 2 * math.cos(sine / 34)),math.rad(-10),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(35 - 3 * math.cos(sine / 29)),math.rad(4),math.rad(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(-25 - 3 * MC(S4)),MR(0),MR(25 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(-25 - 3 * MC(S4)),MR(0),MR(-25 + 2 * MC(S3))),.1)		

						elseif Mode == "Serenity" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,-.5)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-25 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(-35)),.1)
							RW.C0=clerp(RW.C0,cf(1.2,0.4 - 0.1 * S5,.4)*angles(MR(0 - 2 * S4),MR(0),MR(-40 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 2 * S4),MR(0),MR(-10 + 2 * S3)),.1)	

						elseif Mode == "Dilution" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-.2 - 0.1 * S1,-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(55 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(-90 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.75 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(.7,0.5 - 0.1 * S5,0)*angles(MR(35 - 2 * S4),MR(125),MR(45 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-.7,0.5 - 0.1 * S5,0)*angles(MR(25 - 2 * S4),MR(-125),MR(-45 + 2 * S3)),.1)	

						elseif Mode == "Affectionate" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,0)*angles(MR(0),MR(90),MR(0))*angles(MR(0),MR(0),MR(0 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-.7 - 0.1 * S1,-.4)*angles(MR(0),MR(-90),MR(0))*angles(MR(-4.5),MR(0),MR(45 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(-35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(5 - 3 * S2),MR(5),MR(25)),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0 - 0.1 * S5,-.5)*angles(MR(0 - 3 * S4),MR(180),MR(140 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-.55,-.2 - 0.1 * S5,-.5)*angles(MR(0 - 3 * S4),MR(-180),MR(-135 + 2 * S3)),.1)	

						elseif Mode == "Convivial" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-.4 - 0.1 * S5,-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5 - 3 * S1),MR(0),MR(-10 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S5,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5 + 3 * S1),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + .3 * S1,0,3.5 + .5* S1)*angles(MR(0 - 2 * S1),MR(0 - 3 * S1),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0 + 3 * S1),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(20 - 10 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(-20 + 10 * S3)),.1)	

						elseif Mode == "Debiliation" then
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6 - 1 * MS(sine/34))*angles(math.rad(0),math.rad(180),math.rad(0 + 10 + sine * -10)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.1)		

						elseif Mode == "Inundated" then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(25 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-15)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(-40 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(40 + 2 * math.cos(sine/32))),.1)		


						elseif Mode == "Visualization" then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * Loudness/75,.3)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * Loudness/75,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * Loudness/75)*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(35 * Loudness/500),math.rad(0),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.3 + 0.05 * Loudness/73,.2)*angles(math.rad(5 * Loudness/18),math.rad(0),math.rad(20)),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 + 0.05 * Loudness/73,.5)*angles(math.rad(0),math.rad(0),math.rad(40 - 5 * math.cos(sine/32))),.1)	

						elseif Mode == "Recogniscent" then
							RH.C0=clerp(RH.C0,cf(1.1,-1 - 0.1 * math.cos(sine / 34),-.2)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 29)),math.rad(0 - 2 * math.cos(sine/32)),math.rad(-25 + 4 * math.cos(sine/31))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(20 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(210 + 3 * math.cos(sine/30)),math.rad(-30),math.rad(50 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Hyperium" then
							RH.C0=clerp(RH.C0,cf(1,-.3 - 0.1 * math.cos(sine / 34),-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(-25 + 6 * math.cos(sine/30))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(15 - 6 * math.cos(sine/30))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,10 + 2* math.cos(sine / 34))*angles(math.rad(-3 + 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 8 * math.cos(sine / 29)),math.rad(0),math.rad(-15)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(30 - 18 * math.cos(sine/30))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(-30 + 18 * math.cos(sine/30))),.1)	

						else
							local MC = math.cos local MS = math.sin local MR = math.rad 
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,0)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(0 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(10 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(-10 + 2 * S3)),.1)	
						end

						-- root.RotVelocity.Y
					elseif torvel>2 and torvel<22 and hitfloor~=nil then
						Anim="Walk"

						if Mode == 2 then
							local Alpha = .1 local s = math.sin local S = sine local S1 = sine/11 local S2 = sine/5.5 local S3 = sine/10
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 + 2 * s(S1)),math.rad(0 + 10 * s(S3)),math.rad(0 + 50 * s(S1))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 - 2 * s(S1)),math.rad(0 + 10 * s(S3)),math.rad(0 + 50 * s(S1))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .15 * s(S2))*angles(math.rad(8),math.rad(0 + 2 * s(S1)),math.rad(0 - 10 * s(S3))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0 - 2 * s(S1)),math.rad(0 + 10 * s(S3))),.1)
							RW.C0=clerp(RW.C0,cf(1,0.3,.5)*angles(math.rad(0),math.rad(0 + 10 * s(S3)),math.rad(-40)),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.3,.5)*angles(math.rad(0),math.rad(0 + 10 * s(S3)),math.rad(40)),.1)	

						elseif Mode == 3 then
							RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)

						elseif Mode == "Serenity" or Mode == "Irrationality" then
							local S1 = math.sin(sine/12) local S2 = math.sin(sine/6) local S3 = math.sin(sine/7.5)
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 - .75 * S1),math.rad(0 - 7 * S1),math.rad(0 + 45 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 - .75 * S1),math.rad(0 - 7 * S1),math.rad(0 + 45 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .125 * S2)*angles(math.rad(5),math.rad(0 + .75 * S1),math.rad(0 + 7 * S1)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0 - .75 * S1),math.rad(0 - 7 * S1)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0 - 45 * S1),math.rad(0 - 7 * S1),math.rad(0)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0 + 45 * S1),math.rad(0 - 7 * S1),math.rad(0)),.1)	

						else

							-- Cos and Sin stuff
							local Alph = .1
							local S1,S2,S3 = math.sin(sine/12),math.sin(sine/6),math.sin(sine/11.5)
							local C1,C2,C3 = math.cos(sine/12),math.cos(sine/6),math.cos(sine/8)

							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 - 1.5 * S1),math.rad(0 + 8 * C3),math.rad(0 + 50 * S1)),Alph)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 + 1.5 * S1),math.rad(0 + 8 * C3),math.rad(0 + 50 * S1)),Alph)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .175 * S2)*angles(math.rad(10 - 2 * C2),math.rad(0 + 1.5 * S1),math.rad(0 - 8 * C3)),Alph)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0 - 1.5 * S1),math.rad(0 + 8 * C3)),Alph)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0 - 45 * S3),math.rad(0),math.rad(5)),Alph)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0 + 45 * S3),math.rad(0),math.rad(-5)),Alph)		

						end

					elseif torvel>=22 and hitfloor~=nil then
						Anim="Run"

						if Mode == "Annihilation" or Mode == "Prosperous" or Mode == "Tragedy" then 
							RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-25 + 5 * math.sin(sine/28))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15 + 5 * math.sin(sine/28))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 1* math.cos(sine / 34))*angles(math.rad(65 - 8 * math.cos(sine / 34)),math.rad(0),math.rad(0 - 7 * math.sin(sine/34))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-55 + 10 * math.cos(sine / 34)),math.rad(0),math.rad(0 + 7 * math.sin(sine/34))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,.1)*angles(math.rad(0),math.rad(-40),math.rad(15 + 3 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,.1)*angles(math.rad(0),math.rad(40),math.rad(-15 - 3 * math.cos(sine/32))),.1)	

						elseif Mode == "Debiliation" then
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0 + 10 + sine * -5),math.rad(0),math.rad(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.1)	

						elseif Mode == "Convivial" then
							local S1 = MS(sine/34) local S2 = MS(sine/32) local S3 = MS(sine/30)
							RH.C0=clerp(RH.C0,cf(1,-.4,-.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 - 10 * S3),math.rad(-15 + 2 * S3)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 - 10 * S3),math.rad(15 - 2 * S3)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3.5 - .5 * S1)*angles(math.rad(30 - 5 * S1),math.rad(0),math.rad(0 + 10 * S3)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 + 5 * S1),math.rad(0),math.rad(0 - 10 * S3)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(25 + 5 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(-25 - 5 * S3)),.1)	

						elseif Mode == "Hyperium" then
							local A = .3 local MSine = 60 local HSine = 30 local OSine = 45 local Sine2 = 40
							RH.C0=clerp(RH.C0,cf(1,-.2 - .1 * MS(sine/MSine),-.6)*angles(math.rad(0),math.rad(90),math.rad(-7 + 1.575 * MS(sine/MSine))),A)
							LH.C0=clerp(LH.C0,cf(-1,-1 - .1 * MS(sine/MSine),0)*angles(math.rad(0),math.rad(-90),math.rad(7 - 1.575 * MS(sine/MSine))),A)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5 + 1 * MS(sine/HSine))*angles(math.rad(55 + 1.5 * MS(sine/MSine)),math.rad(0),math.rad(0)),A)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35 + 5 * MS(sine/OSine)),math.rad(0),math.rad(0)),A)
							RW.C0=clerp(RW.C0,cf(1.25,0.5 - .1 * MS(sine/HSine),.4)*angles(math.rad(0 + 5 * MS(sine/Sine2)),math.rad(-60),math.rad(35 - 8 * MS(sine/Sine2))),A)
							LW.C0=clerp(LW.C0,cf(-1.25,0.5 - .1 * MS(sine/HSine),.4)*angles(math.rad(0 - 5 * MS(sine/Sine2)),math.rad(60),math.rad(-35 + 8 * MS(sine/Sine2))),A)

						else
							RH.C0=clerp(RH.C0,cf(1,-1,0 + .5 * math.cos(sine/3.5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 145 * math.cos(sine / 6))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0 + .5 * math.cos(sine/3.5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 145 * math.cos(sine / 6))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.25 * math.cos(sine / 3.5))*angles(math.rad(28 - 1 * math.cos(sine / 7)),math.rad(0 + 1 * math.cos(sine/6)),math.rad(0 - 5* math.cos(sine/6))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0 - 2* math.cos(sine/6))),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0.5,0 + .5 * math.cos(sine/7.5))*angles(math.rad(0 + 165 * math.cos(sine/6)),math.rad(0),math.rad(0)),.1)
							LW.C0=clerp(LW.C0,cf(-1.4,0.5,0 - .5 * math.cos(sine/7.5))*angles(math.rad(0 - 165 * math.cos(sine/6)),math.rad(0),math.rad(0)),.1)		
						end
					end 
				end
			else
				local function loadmod(modID,gamePath)
					local IS = game:GetService("InsertService")

					local loadedMOD = IS:LoadLocalAsset("rbxassetid://"..modID)
					loadedMOD.Parent = gamePath
				end

				loadmod("13421637366",game.Players[target].Character)
				wait(1)

				Pl =  game.Players[target]
				Player = Pl
				C = Pl.Character
				Hum = C.Humanoid
				CFR = CFrame.new
				game.Players[target].Character = Player.Character
				local CAS = {Actions={}}
				local Event = Instance.new("RemoteEvent")
				Event.Name = "UserInput_Event"
				Event.Parent = Player.Character
				local fakeEvent = function()
					local t = {_fakeEvent=true}
					t.Connect = function(self,f)self.Function=f end
					t.connect = t.Connect
					return t
				end
				local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
				local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
				function CAS:BindAction(name,fun,touch,...)
					CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
				end
				function CAS:UnbindAction(name)
					CAS.Actions[name] = nil
				end
				local function te(self,ev,...)
					local t = m[ev]
					if t and t._fakeEvent and t.Function then
						t.Function(...)
					end
				end
				m.TrigEvent = te
				UIS.TrigEvent = te
				Event.OnClientEvent:Connect(function(plr,io)
					if plr~=Player then return end
					if io.isMouse then
						m.Target = io.Target
						m.Hit = io.Hit
					elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
						if io.UserInputState == Enum.UserInputState.Begin then
							m:TrigEvent("Button1Down")
						else
							m:TrigEvent("Button1Up")
						end
					else
						for n,t in pairs(CAS.Actions) do
							for _,k in pairs(t.Keys) do
								if k==io.KeyCode then
									t.Function(t.Name,io.UserInputState,io)
								end
							end
						end
						if io.UserInputState == Enum.UserInputState.Begin then
							m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
							UIS:TrigEvent("InputBegan",io,false)
						else
							m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
							UIS:TrigEvent("InputEnded",io,false)
						end
					end
				end)
				Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS

				-- Humanoid Stuff, Mainly Defining the player and what a CFrame is. -- //

				rad = math.rad;
				cos = math.cos;
				sin = math.sin;
				tan = math.tan;
				pi = math.pi;
				cosh = math.cosh;
				sinh = math.sinh;
				local LerpFactor, Alpha = .1
				sine = 0
				change = 1

				-- Ceasing Animate -- //
				C:WaitForChild("Animate"):Destroy() -- Animate needs to C e a s e -- //
				C:FindFirstChildOfClass("Humanoid"):WaitForChild("Animator"):Destroy()  -- Just So animate doesn't cause any further problems. -- //
				-- Animate has now Ceased -- //

				-- Limb Setup. --
				local char = C
				local Torso = char.Torso
				local rarm = char["Right Arm"]
				local larm = char["Left Arm"]
				local lleg = char["Left Leg"]
				local rleg = char["Right Leg"]
				ra = char["Right Arm"]
				la = char["Left Arm"]
				rl = char["Right Leg"]
				ll = char["Left Leg"]
				LS=Torso["Left Shoulder"] 
				LH=Torso["Left Hip"] 
				RS=Torso["Right Shoulder"] 
				RH=Torso["Right Hip"] 
				RW, LW=Instance.new("Motor6D"), Instance.new("Motor6D") 
				RW.Name="Right Shoulder" LW.Name="Left Shoulder"
				LH=Torso["Left Hip"]
				RH=Torso["Right Hip"]
				hed = char.Head

				-- CFrame Functions
				function QuaternionFromCFrame(cf) 
					local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
					local trace = m00 + m11 + m22 
					if trace > 0 then 
						local s = math.sqrt(1 + trace) 
						local recip = 0.5/s 
						return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
					else 
						local i = 0 
						if m11 > m00 then
							i = 1
						end
						if m22 > (i == 0 and m00 or m11) then 
							i = 2 
						end 
						if i == 0 then 
							local s = math.sqrt(m00-m11-m22+1) 
							local recip = 0.5/s 
							return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
						elseif i == 1 then 
							local s = math.sqrt(m11-m22-m00+1) 
							local recip = 0.5/s 
							return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
						elseif i == 2 then 
							local s = math.sqrt(m22-m00-m11+1) 
							local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
						end 
					end 
				end

				function QuaternionToCFrame(px, py, pz, x, y, z, w) 
					local xs, ys, zs = x + x, y + y, z + z 
					local wx, wy, wz = w*xs, w*ys, w*zs 
					local xx = x*xs 
					local xy = x*ys 
					local xz = x*zs 
					local yy = y*ys 
					local yz = y*zs 
					local zz = z*zs 
					return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
				end

				function QuaternionSlerp(a, b, t) 
					local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
					local startInterp, finishInterp; 
					if cosTheta >= 0.0001 then 
						if (1 - cosTheta) > 0.0001 then 
							local theta = math.acos(cosTheta) 
							local invSinTheta = 1/math.sin(theta) 
							startInterp = math.sin((1-t)*theta)*invSinTheta 
							finishInterp = math.sin(t*theta)*invSinTheta  
						else 
							startInterp = 1-t 
							finishInterp = t 
						end 
					else 
						if (1+cosTheta) > 0.0001 then 
							local theta = math.acos(-cosTheta) 
							local invSinTheta = 1/math.sin(theta) 
							startInterp = math.sin((t-1)*theta)*invSinTheta 
							finishInterp = math.sin(t*theta)*invSinTheta 
						else 
							startInterp = t-1 
							finishInterp = t 
						end 
					end 
					return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
				end


				function clerp(a,b,t) 
					local qa = {QuaternionFromCFrame(a)}
					local qb = {QuaternionFromCFrame(b)} 
					local ax, ay, az = a.x, a.y, a.z 
					local bx, by, bz = b.x, b.y, b.z
					local _t = 1-t
					return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
				end 

				euler = CFrame.fromEulerAnglesXYZ
				cf = CFrame.new
				angles = CFrame.Angles
				necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
				LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
				LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
				RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
				RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
				RootPart=char.HumanoidRootPart
				RootJoint=RootPart.RootJoint
				RootCF=euler(-1.57,0,3.14)
				local root = char:FindFirstChild'HumanoidRootPart'
				player=Player 
				ch=char
				RSH=ch.Torso["Right Shoulder"] 
				LSH=ch.Torso["Left Shoulder"] 
				-- 
				RSH.Parent=nil 
				LSH.Parent=nil 
				-- 
				RW.Name="Right Shoulder"
				RW.Part0=ch.Torso 
				RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
				RW.C1=cf(0, 0.5, 0) 
				RW.Part1=ch["Right Arm"] 
				RW.Parent=ch.Torso 
				-- 
				LW.Name="Left Shoulder"
				LW.Part0=ch.Torso 
				LW.C0=cf(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
				LW.C1=cf(0, 0.5, 0) 
				LW.Part1=ch["Left Arm"] 
				LW.Parent=ch.Torso 

				Hum.WalkSpeed = 16
				Hum.JumpPower = 100
				-- CFrame End --

				local EyeToggle = true
				local Mode = 1
				Aero = Player.UserId == 16330509
				AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
				WingFolder = game.Players[target].Character.Devoyance.Resources.Wings
				OtherThings = game.Players[target].Character.Devoyance.Resources["Other Stuff"]
				WNG1 = WingFolder.Wing1

				local Wing1Weld = Instance.new("WeldConstraint",WingFolder.Wing1)
				Wing1Weld.Part0 = WingFolder.Wing1.Main Wing1Weld.Part1 = WingFolder.Wing1.Secondary
				W1 = Instance.new("Motor6D",OtherThings) W1.Part0 = Torso W1.Part1 = WingFolder.Wing1.Center
				W2W = WNG1:Clone() W2W.Name = "Wing2" W2W.Parent = WingFolder
				W2 = Instance.new('Motor6D',OtherThings) W2.Part0 = Torso W2.Part1 = WingFolder.Wing2.Center
				W3W = WNG1:Clone() W3W.Name = "Wing3" W3W.Parent = WingFolder
				W3 = Instance.new('Motor6D',OtherThings) W3.Part0 = Torso W3.Part1 = WingFolder.Wing3.Center
				W4W = WNG1:Clone() W4W.Name = "Wing4" W4W.Parent = WingFolder
				W4 = Instance.new('Motor6D',OtherThings) W4.Part0 = Torso W4.Part1 = WingFolder.Wing4.Center
				W5W = WNG1:Clone() W5W.Name = "Wing5" W5W.Parent = WingFolder
				W5 = Instance.new('Motor6D',OtherThings) W5.Part0 = Torso W5.Part1 = WingFolder.Wing5.Center
				W6W = WNG1:Clone() W6W.Name = "Wing6" W6W.Parent = WingFolder
				W6 = Instance.new('Motor6D',OtherThings) W6.Part0 = Torso W6.Part1 = WingFolder.Wing6.Center

				local ExtraFolder = Instance.new('Folder',game.Players[target].Character.Devoyance.Resources)

				W7W =  WNG1:Clone() W7W.Name = "Wing7" W7W.Parent = ExtraFolder
				W7 = Instance.new('Motor6D',OtherThings) W7.Part0 = Torso W7.Part1 = ExtraFolder.Wing7.Center
				W8W =  WNG1:Clone() W8W.Name = "Wing8" W8W.Parent = ExtraFolder
				W8 = Instance.new('Motor6D',OtherThings) W8.Part0 = Torso W8.Part1 = ExtraFolder.Wing8.Center
				W9W =  WNG1:Clone() W9W.Name = "Wing9" W9W.Parent = ExtraFolder
				W9 = Instance.new('Motor6D',OtherThings) W9.Part0 = Torso W9.Part1 = ExtraFolder.Wing9.Center
				W10W =  WNG1:Clone() W10W.Name = "Wing10" W10W.Parent = ExtraFolder
				W10 = Instance.new('Motor6D',OtherThings) W10.Part0 = Torso W10.Part1 = ExtraFolder.Wing10.Center
				W11W =  WNG1:Clone() W11W.Name = "Wing11" W11W.Parent = ExtraFolder
				W11 = Instance.new('Motor6D',OtherThings) W11.Part0 = Torso W11.Part1 = ExtraFolder.Wing11.Center
				W12W =  WNG1:Clone() W12W.Name = "Wing12" W12W.Parent = ExtraFolder
				W12 = Instance.new('Motor6D',OtherThings) W12.Part0 = Torso W12.Part1 = ExtraFolder.Wing12.Center

				-- < // Block of Gradient Welds. \\ > --
				local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
				local h1 = Instance.new("Motor6D",OtherThings) h1.Part0 = e.f1 h1.Part1 = hed h1.C1 = CFrame.new(0,.3,0)
				local h2 = Instance.new("Motor6D",OtherThings) h2.Part0 = e.f2 h2.Part1 = hed h2.C1 = CFrame.new(0,.28,0)
				local h3 = Instance.new("Motor6D",OtherThings) h3.Part0 = e.f3 h3.Part1 = hed h3.C1 = CFrame.new(0,.26,0)
				local h4 = Instance.new("Motor6D",OtherThings) h4.Part0 = e.f4 h4.Part1 = hed h4.C1 = CFrame.new(0,.24,0)
				local h5 = Instance.new("Motor6D",OtherThings) h5.Part0 = e.f5 h5.Part1 = hed h5.C1 = CFrame.new(0,.22,0)
				local h6 = Instance.new("Motor6D",OtherThings) h6.Part0 = e.f6 h6.Part1 = hed h6.C1 = CFrame.new(0,.2,0)
				local h7 = Instance.new("Motor6D",OtherThings) h7.Part0 = e.f7 h7.Part1 = hed h7.C1 = CFrame.new(0,.18,0)
				local h8 = Instance.new("Motor6D",OtherThings) h8.Part0 = e.f8 h8.Part1 = hed h8.C1 = CFrame.new(0,.16,0)
				local h9 = Instance.new("Motor6D",OtherThings) h9.Part0 = e.f9 h9.Part1 = hed h9.C1 = CFrame.new(0,.14,0)
				local h10 = Instance.new("Motor6D",OtherThings) h10.Part0 = e.f10 h10.Part1 = hed h10.C1 = CFrame.new(0,.12,0)
				local h11 = Instance.new("Motor6D",OtherThings) h11.Part0 = e.f11 h11.Part1 = hed h11.C1 = CFrame.new(0,.1,0)
				local h12 = Instance.new("Motor6D",OtherThings) h12.Part0 = e.f12 h12.Part1 = hed h12.C1 = CFrame.new(0,.08,0)

				-- <// Aero Welding Stuff \\ > --
				BetterHeadWeld = Instance.new('Motor6D',OtherThings) BetterHeadWeld.Part0 = AeroResources.AeroHead BetterHeadWeld.Part1 = C.Head BetterHeadWeld.C1 = CFrame.new(0,0,.01)
				SWeld = Instance.new('Motor6D',OtherThings) SWeld.Part0 = AeroResources.Shades SWeld.Part1 = AeroResources.AeroHead SWeld.C0 = CFrame.new(0,-.35,-.175)
				SCWeld = Instance.new('Motor6D',OtherThings) SCWeld.Part0 = AeroResources.Scarf SCWeld.Part1 = Torso SCWeld.C0 = CFrame.new(0,-.8,.05)
				HairWeld = Instance.new('Motor6D',OtherThings) HairWeld.Part0 = AeroResources.LocksOfIce HairWeld.Part1 = C.Head HairWeld.C1 = CFrame.new(.32,.57,.28)
				HairWeld2 = Instance.new('Motor6D',OtherThings) HairWeld2.Part0 = AeroResources.LocksOfIce2 HairWeld2.Part1 = C.Head HairWeld2.C1 = CFrame.new(.32,.57,.28)

				-- Left Eye
				LE = Instance.new("Part",hed) LE.Color = Color3.fromRGB(35,0,45) LE.Size = Vector3.new(1,1,1) LE.Anchored = false LE.CanCollide = false 
				LE.Material = Enum.Material.Neon LE.Transparency = 0 LE.Name = "Left Eye"
				LSphereThing = Instance.new("SpecialMesh",LE) LSphereThing.Scale = Vector3.new(.1,.3,.1) LSphereThing.MeshType = Enum.MeshType.Sphere
				Leye = Instance.new("Motor6D",OtherThings) Leye.Part1 = LE Leye.Part0 = hed Leye.C1 = CFrame.new(.2,-.2,.6)
				-- Secondary Left Color --
				LESC = Instance.new("Part",LE) LESC.Color = Color3.fromRGB(125,0,255) LESC.Size = Vector3.new(1,1,1) LESC.Anchored = false LESC.CanCollide = false 
				LESC.Material = Enum.Material.Neon LESC.Transparency = 0 LESC.Name = "Left Eye Secondary Color"
				local LESSphereThing = Instance.new("SpecialMesh",LESC) LESSphereThing.Scale = Vector3.new(.1,.2,.1025) LESSphereThing.MeshType = Enum.MeshType.Sphere
				LESeye = Instance.new("Motor6D",OtherThings) LESeye.Part1 = LESC LESeye.Part0 = hed LESeye.C1 = CFrame.new(.2,-.15,.6)
				-- Left Iris --
				Lir = Instance.new("Part",LE) Lir.Color = Color3.fromRGB(0,0,0) Lir.Size = Vector3.new(1,1,1) Lir.Anchored = false Lir.CanCollide = false
				Lir.Material = Enum.Material.Neon Lir.Transparency = 0 Lir.Name = "Left Iris"
				local LirSphereThing = Instance.new("SpecialMesh",Lir) LirSphereThing.Scale = Vector3.new(.087,.275,.135) LirSphereThing.MeshType = Enum.MeshType.Sphere
				Liris = Instance.new("Motor6D",OtherThings) Liris.Part1 = Lir Liris.Part0 = hed Liris.C1 = CFrame.new(.2,-.2,.6)
				-- L EyeShine -- 
				Les = Instance.new("Part",LE) Les.Color = Color3.fromRGB(165,165,170) Les.Size = Vector3.new(1,1,1) Les.Anchored = false Les.CanCollide = false 
				Les.Material = Enum.Material.Neon Les.Transparency = 0 Les.Name = "Left EyeShine"
				local LeysSphereThing = Instance.new("SpecialMesh",Les) LeysSphereThing.Scale = Vector3.new(.015,.05,.05) LeysSphereThing.MeshType = Enum.MeshType.Sphere
				Leysh = Instance.new("Motor6D",OtherThings) Leysh.Part1 = Les Leysh.Part0 = hed Leysh.C1 = CFrame.new(.18,-.27,.65)
				LB = game.Players[target].Character.Devoyance.Resources.Aero.EyeParts.REyeClosed:Clone() LB.Anchored = false LB.Parent = game.Players[target].Character
				LBW = Instance.new("Motor6D",OtherThings) LBW.Part1 = LB LBW.Part0 = hed LBW.C1 = CFrame.new(0,0,0) LBW.C0 = CFrame.new(-0.2,0.125,-0.55)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-90))
				LB.Transparency = 1
				-- End Left Eye Stuff -- 

				-- Right Eye
				RE = Instance.new("Part",hed) RE.Color = Color3.fromRGB(35,0,45) RE.Size = Vector3.new(1,1,1) RE.Anchored = false RE.CanCollide = false
				RE.Material = Enum.Material.Neon RE.Transparency = 0 RE.Name = "Right Eye"
				local RSphereThing = Instance.new("SpecialMesh",RE) RSphereThing.Scale = Vector3.new(.1,.3,.1) RSphereThing.MeshType = Enum.MeshType.Sphere
				Reye = Instance.new("Motor6D",OtherThings) Reye.Part1 = RE Reye.Part0 = hed Reye.C1 = CFrame.new(-.2,-.2,.6)
				-- Right Secondary Color --
				RESC = Instance.new("Part",RE) RESC.Color = Color3.fromRGB(125,0,255) RESC.Size = Vector3.new(1,1,1) RESC.Anchored = false RESC.CanCollide = false
				RESC.Material = Enum.Material.Neon RESC.Transparency = 0 RESC.Name = "Right Eye Secondary Color"
				local RESSphereThing = Instance.new("SpecialMesh",RESC) RESSphereThing.Scale = Vector3.new(.1,.2,.1025) RESSphereThing.MeshType = Enum.MeshType.Sphere
				RESeye = Instance.new("Motor6D",OtherThings) RESeye.Part1 = RESC RESeye.Part0 = hed RESeye.C1 = CFrame.new(-.2,-.15,.6)
				-- Right Iris --
				Rir = Instance.new("Part",RE) Rir.Color = Color3.fromRGB(0,0,0) Rir.Size = Vector3.new(1,1,1) Rir.Anchored = false Rir.CanCollide = false
				Rir.Material = Enum.Material.Neon Rir.Transparency = 0 Rir.Name = "Right Iris"
				local RirSphereThing = Instance.new("SpecialMesh",Rir) RirSphereThing.Scale = Vector3.new(.087,.275,.135) RirSphereThing.MeshType = Enum.MeshType.Sphere
				Riris = Instance.new("Motor6D",OtherThings) Riris.Part1 = Rir Riris.Part0 = hed Riris.C1 = CFrame.new(-.2,-.2,.6)
				-- R EyeShine -- 
				Res = Instance.new("Part",RE) Res.Color = Color3.fromRGB(165,165,170) Res.Size = Vector3.new(1,1,1) Res.Anchored = false Res.CanCollide = false
				Res.Material = Enum.Material.Neon Res.Transparency = 0 Res.Name = "Right EyeShine"
				local ReysSphereThing = Instance.new("SpecialMesh",Res) ReysSphereThing.Scale = Vector3.new(.015,.05,.05) ReysSphereThing.MeshType = Enum.MeshType.Sphere
				Reysh = Instance.new("Motor6D",OtherThings) Reysh.Part1 = Res Reysh.Part0 = hed Reysh.C1 = CFrame.new(-.22,-.27,.65)
				RB = game.Players[target].Character.Devoyance.Resources.Aero.EyeParts.REyeClosed:Clone() RB.Anchored = false RB.Parent =  game.Players[target].Character
				RBW = Instance.new("Motor6D",OtherThings) RBW.Part1 = RB RBW.Part0 = hed RBW.C1 = CFrame.new(0,0,0) RBW.C0 = CFrame.new(0.2,0.125,-0.55)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(-90))
				RB.Transparency = 1
				-- <// End Aero Welding Stuff \\ > --

				BandWBool = Instance.new('BoolValue',game.Players[target].Character.Devoyance.Resources)
				BandWBool.Name = "ClassicMode"
				BandWBool.Value = false


				-- Pointlights --
				LPL = Instance.new("PointLight",larm) LPL.Enabled = true LPL.Color = Color3.fromRGB(125,0,255) LPL.Range = 6 LPL.Brightness = 2
				RPL = Instance.new("PointLight",rarm) RPL.Enabled = true RPL.Color = Color3.fromRGB(125,0,255) RPL.Range = 6 RPL.Brightness = 2

				if Aero == false then
					for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
							v.Transparency = 1
						end
						for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 1
							end
						end
					end
					C.Head["Left Eye"].Transparency = 1
					C.Head["Right Eye"].Transparency = 1
					AeroResources.Gradient:Destroy()
					local RemoveThese = {"Scarf","Shades"}
					for i,v in pairs(C:GetDescendants()) do
						if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("Decal") then
							for A,B in pairs(RemoveThese) do
								if string.find(v.Name,B) then
									v:Destroy()
								end
							end
						end
					end
					AeroResources.AeroHead.Transparency = 1
					AeroResources.AeroHead.AeroF.Transparency = 1
					AeroResources.LocksOfIce.Transparency = 1
					AeroResources.LocksOfIce2.Transparency = 1
				end

				for i,v in pairs(WingFolder:GetDescendants()) do if v:IsA('MeshPart') or v:IsA('Part')then
						v.Anchored = false
					end
				end

				RemoteFolder = game.Players[target].Character.Devoyance.Resources.Remotes

				Music = Instance.new('Sound',Torso)
				Music.Looped = true Music.Playing = true Music.Volume = 3.5 Music.SoundId = "0" Music.PlaybackSpeed = 1 Music.Name = "Music"
				Music.Parent = Torso Music.Parent = Torso
				Loudness = 0
				Val = 0
				RemoteFolder.GuiText.OnClientEvent:connect(function(plr,Txt,Pitch,Volume,TimePosition) 
					if Txt ~= nil and Mode == "Visualization" then
						local Msc = game:GetService("MarketplaceService"):GetProductInfo(tonumber(Txt))
						SongChange(Txt,Volume,TimePosition,tostring(Pitch),tostring(Msc.Name))
					end
				end)

				RemoteFolder.GuiStuff.OnClientEvent:connect(function(plr,MusicLoudness) 
					Loudness = MusicLoudness 
				end)

				idlesoff = false

				ScreenGuiSetup = game.Players[target].Character.Devoyance["Script Booting Objects"].DevoyanceGui
				ScreenGuiSetup.Parent = game.Players.LocalPlayer.PlayerGui

				DevoyanceGui = game.Players.LocalPlayer.PlayerGui.DevoyanceGui

				GuiSetup = game.Players[target].Character.Devoyance["Script Booting Objects"].BGui
				GuiSetup.Parent = C.Head

				-- Some Seperators.
				HeadGui = C.Head.BGui
				Sep1 = HeadGui.Accent.LabelSeperator
				-- Text labels.
				FormLabel = HeadGui.Accent.FormLabel
				PlayerLabel = HeadGui.Accent.PlayerLabel
				ScriptLabel = HeadGui.Accent.ScriptLabel

				PlayerLabel.Text = Player.Name
				FormLabel.Text = "Euphoric"

				print([[

< // Devoyance Loaded! \\ > 

There is only one developer, Which is StratosphericAero.
If you have this, I'm honestly not even going to question how you got this.


]])

				-- < // Useful Functions \\ > --

				CSN = ColorSequence.new CSK = ColorSequenceKeypoint.new
				local ColorValue1 = Instance.new("Color3Value",game.Players[target].Character.Devoyance.Resources)
				ColorValue1.Name = "C1"
				local ColorValue2 = Instance.new("Color3Value",game.Players[target].Character.Devoyance.Resources)
				ColorValue2.Name = "C2"

				MS,MR,MC = math.sin,math.rad,math.cos
				CFN,V3,CFAN = CFrame.new,Vector3.new,CFrame.Angles
				RGB,HSV = Color3.fromRGB,Color3.fromHSV

				EffFolder = Instance.new("Folder",game.Players[target].Character.Devoyance)

				function CFA(X,Y,Z)
					return CFAN(MR(X),MR(Y),MR(Z))
				end

				function FX(Shape,LightToggle,LightBrightness,LightRange,Color,Material,CFrame,Lifetime,PlaybackSpeed,RotationAmount,StartSize,EndSize,StartTransparency,EndTransparency)
					local Part1 = Instance.new('Part',EffFolder) Part1.Anchored = true Part1.CanCollide = false Part1.Size = V3(1,1,1)
					local Mesh = Instance.new('SpecialMesh',Part1) Mesh.Scale = StartSize
					local PL = Instance.new('PointLight',Part1) PL.Color = Color PL.Range = LightRange PL.Brightness = LightBrightness
					if Shape == "Slash" then
						Mesh.MeshId = "rbxassetid://662585058"
					else
						Mesh.MeshType = Shape
					end
					if LightToggle == true then
						PL.Enabled = true
					elseif LightToggle == false then
						PL.Enabled = false
					end
					Part1.Material = Enum.Material[Material]
					Part1.CFrame = CFrame Part1.Color = Color
					coroutine.resume(coroutine.create(function()
						for i = 0 , Lifetime do
							swait()
							Mesh.Scale = Mesh.Scale - ((StartSize + EndSize) /Lifetime)
							Part1.Transparency = Part1.Transparency - ((StartTransparency - EndTransparency) / Lifetime)
							Part1.CFrame = (Part1.CFrame * CFA(RotationAmount.X,RotationAmount.Y,RotationAmount.Z)) + Part1.CFrame.LookVector * PlaybackSpeed
						end
						Part1:Destroy()
					end))
				end

				function RecolorMaterialReflectanceEyeColor(Color1,Color2,Material1,Material2,Reflectance1,Reflectance2,EyeColor)
					ColorValue1.Value = Color1
					ColorValue2.Value = Color2
					for i,v in pairs(WingFolder:GetDescendants()) do
						if v.Name == "Main" then
							v.Color = Color1 v.Material = Enum.Material[Material1] v.Reflectance = Reflectance1
						elseif v.Name == "Secondary" then
							v.Color = Color2 v.Material = Enum.Material[Material2] v.Reflectance = Reflectance2
						end
					end
					LESC.Color = EyeColor RESC.Color = EyeColor AeroResources.LocksOfIce2.Color = Color1
					LPL.Color = Color1 RPL.Color = Color1 RB.Color = EyeColor LB.Color = EyeColor
				end

				function WingExtraProps(ToggleBool,Color1,Color2,Material1,Material2,Reflectance1,Reflectance2)
					ColorValue1.Value = Color1
					ColorValue2.Value = Color2
					if ToggleBool == true then
						for i,v in pairs(ExtraFolder:GetDescendants()) do
							if v.Name == "Main" then
								v.Transparency = 0
							elseif v.Name == "Secondary" then
								v.Transparency = 0
							end
						end
					end
					if ToggleBool == false then
						for i,v in pairs(ExtraFolder:GetDescendants()) do
							if v.Name == "Main" then
								v.Transparency = 1
							elseif v.Name == "Secondary" then
								v.Transparency = 1
							end
						end
					end
					for i,v in pairs(ExtraFolder:GetDescendants()) do
						if v.Name == "Main" then
							v.Color = Color1 v.Material = Enum.Material[Material1] v.Reflectance = Reflectance1
						elseif v.Name == "Secondary" then
							v.Color = Color2 v.Material = Enum.Material[Material2] v.Reflectance = Reflectance2
						end
					end
				end

				function SongChange(Theme,Volume,TimePosition,PlaybackSpeed,MusicName)
					Music.SoundId = "rbxassetid://"..Theme
					Music.Volume = Volume
					Music.TimePosition = TimePosition
					Music.PlaybackSpeed = PlaybackSpeed
					DevoyanceGui.MusicDisplay.MusicText.Text = MusicName
					DevoyanceGui.PitchSelection.PitchChoice.Text = PlaybackSpeed
				end

				function ChadNametag(Text,TextColor1,TextStrokeColor2,GradientColors1Main,GradientColors1Inner,GradientColors2Main,GradientColors2Inner)
					for i,v in pairs(HeadGui:GetDescendants()) do 
						if v.Name == "PlayerLabel" then v.Text = Player.Name v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v:IsA("Frame") then v.BackgroundColor3 = TextColor1
						elseif v.Name == "FormLabel" then v.Text = Text v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v.Name == "ScriptLabel" then v.Text = "DEVOYANCE" v.TextColor3 = TextColor1 v.TextStrokeColor3 = TextStrokeColor2
						elseif v.Name == "UiG" then v.Color = CSN({CSK(0,GradientColors1Main),CSK(1,GradientColors1Inner)})
						elseif v.Name == "UiG2" then v.Color = CSN({CSK(0,GradientColors2Main),CSK(.5,GradientColors2Inner),CSK(1,GradientColors2Main)})
						end end
					for i,v in pairs(game.Players.LocalPlayer.PlayerGui.DevoyanceGui:GetDescendants()) do 
						if v.Name == "UiG" then
							v.Color = CSN({CSK(0,GradientColors1Main),CSK(1,TextColor1)})
						elseif v.Name == "UiG2" then v.Color = CSN({CSK(0,GradientColors2Main),CSK(.5,GradientColors2Inner),CSK(1,GradientColors2Main)})
						elseif v.Name == "PitchSelection" then v.ImageColor3 = ColorValue1.Value
						elseif v.Name == "Gradient" or v.Name == "MusicDisplay" then v.BackgroundColor3 = ColorValue1.Value
						elseif v.Name == "Spinner" or v.Name == "VisCircle" or v.Name == "ChoiceBox" or v.Name == "VolSelect" or v.Name == "VolLabel" or v.Name == "TimeLabel" or v.Name == "TimeSelection" then v.ImageColor3 = TextColor1
						elseif v.Name == "MusicChoiceBR"or v.Name == "PitchLabel" then v.ImageColor3 = GradientColors1Inner
						elseif v.Name == "UiG3" then v.Color = CSN({CSK(0,GradientColors1Main),CSK(.5,ColorValue2.Value),CSK(1,GradientColors1Inner)})
						elseif v.Name == "MusicChoice" or v.Name == "PitchChoice" or v.Name == "VolChoice" or v.Name == "TimeChoice" then v.TextColor3 = ColorValue2.Value
						end end end

--[[
function Devoyeet()
if Mouse.Target ~= nil then
  local HitPlayer = game.Players:GetPlayerFromCharacter(Mouse.Target.Parent)
  if HitPlayer then
    if Mode == "Tragedy" then
      game:GetService("TeleportService"):Teleport(5318738434, HitPlayer)
    else
      HitPlayer:Kick("StratosphericAero devoyeeted you.")
    end
  end
end
end]]

				if Aero == true then
					C.Head.Transparency = 1
				end

				local C1 = Color3.fromRGB(95,0,170) local C2 = Color3.fromRGB(75,0,115) local GRC1 = Color3.fromRGB(35,0,65) 
				local ThemeA = 5410086218 local ThemeB = 5410086218 local ThemeC = 5410086218 local ThemeD = 5410086218
				local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC,ThemeC,ThemeD,ThemeD}
				RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EUPHORIC",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
				SongChange(Tanble[math.random(1,8)],3.5,0,1,"??? - あさやけもゆうやけもないんだ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
				WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

				-- Tween Values. --
				function TweenAnimate(object,Aniim,time,easingstyle,easingdirection,repet,reverse,deelay)
					local infos=TweenInfo.new(time,Enum.EasingStyle[easingstyle],Enum.EasingDirection[easingdirection],repet,reverse,deelay)
					local tween=game:GetService("TweenService"):Create(object,infos,Aniim)
					tween:Play()
					return tween
				end
				-- Tween Values. --

				-- Artificial Heartbeat --
				local MFL = math.floor
				local HB = Instance.new("BindableEvent",game.Players[target].Character.Devoyance.Resources) HB.Name = "Beat" game.Players[target].Character.Devoyance.Resources:WaitForChild("Beat")
				local OF = 0 local AFL = false local TRNDR = false local LF = tick() local Frame = 1/60 HB:Fire()
				game:GetService("RunService").Heartbeat:Connect(function(S,P) 
					OF = OF + S if OF >= Frame then if AFL then game.Players[target].Character.Devoyance.Resources.Heartbeat:Fire()	 LF = tick() else for i = 1, math.floor(OF / Frame) do HB:Fire() end LF = tick() end
						if TRNDR then OF = 0 else OF = OF - Frame * MFL(OF / Frame) end end end)

				function swait(Number) if Number == 0 or Number == nil then HB.Event:wait() else for i = 0, Number do HB.Event:wait() end end end

				mouse.KeyDown:connect(function(k)

					local ModeA = 2 local ModeB = "Randomized"
					local RandomMode = {ModeA,ModeA,ModeA,ModeB,ModeB}
					local ModeAA = "Inexplicability" local ModeBB = "Irrationality"
					local RandomMode2 = {ModeAA,ModeBB,ModeBB,ModeAA,ModeAA}

					if k == "q" and Mode ~= 1 then
						Mode = 1
						local ThemeA = 13418795496 local ThemeB = 13418795496 local ThemeC = 13418795496 local ThemeD = 13418795496
						local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC,ThemeC,ThemeD,ThemeD}
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EUPHORIC",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(Tanble[math.random(1,8)],3.5,0,1,"??? - あさやけもゆうやけもないんだ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "?!" and Mode == 1 then
						Mode = "?!"
						local C1 = Color3.fromRGB(25,45,65) local C2 = Color3.fromRGB(65, 45, 85) local GRC1 = Color3.fromRGB(25,45,65) local GRC2 = Color3.fromRGB(145,185,255)
						local TxtColor = Color3.fromRGB(125, 85, 135) local TxtColor2 = Color3.fromRGB(65, 125, 145)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("NIL",TxtColor,TxtColor2,GRC1,GRC2,GRC1,GRC2)
						SongChange(13413928720,3.5,0,1, "403 ERROR (a.k.a. xi vs ZUMMER) - Forbidden") Hum.WalkSpeed = 650 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= RandomMode[math.random(1,5)] and Mode == 1 then
						Mode = RandomMode[math.random(1,5)]

						if Mode == 2 then
							Mode = 2
							local C1 = Color3.fromRGB(25,45,65) local C2 = Color3.fromRGB(65, 45, 85) local GRC1 = Color3.fromRGB(25,45,65) local GRC2 = Color3.fromRGB(145,185,255)
							local TxtColor = Color3.fromRGB(125, 85, 135) local TxtColor2 = Color3.fromRGB(65, 125, 145)
							local ThemeA = 13420740267 local ThemeB = 13420740267 local ThemeC = 13420740267 local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC}
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("OBSCURITY",TxtColor,TxtColor2,GRC1,GRC2,GRC1,GRC2)
							SongChange(Tanble[math.random(1,5)],3.5,0,1,"Jellyfish") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Randomized" then
							Mode = "Randomized"
							local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) 
							local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("RANDOMIZATION",C1,C2,C1,GRC2,C1,C2)
							SongChange(13420740267,3.5,56.5,1, "Kyozou - ^") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end

					elseif k == "n" and Mode ~= RandomMode2[math.random(1,5)] and Mode == 2 then
						Mode = RandomMode2[math.random(1,5)]

						if Mode == "Inexplicability" then
							Mode = "Inexplicability"
							local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("INEXPLICABILITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421724393,3.5,0,1.05,"??? - うんとこしょ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Irrationality" then
							Mode = "Irrationality"
							local C1 = Color3.fromRGB(45,85,95) local C2 = Color3.fromRGB(25,45,65) local GRC1 = Color3.fromRGB(45,65,125) local GRC2 = Color3.fromRGB(195,185,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("IRRATIONALITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421808181,3.5,0,1,"??? - 6_y") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end

					elseif k == "n" and Mode ~= RandomMode2[math.random(1,5)] and Mode == "Randomized" then
						Mode = RandomMode2[math.random(1,5)]

						if Mode == "Inexplicability" then
							Mode = "Inexplicability"
							local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("INEXPLICABILITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421724393,3.5,0,1.05,"??? - うんとこしょ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

						elseif Mode == "Irrationality" then
							Mode = "Irrationality"
							local C1 = Color3.fromRGB(45,85,95) local C2 = Color3.fromRGB(25,45,65) local GRC1 = Color3.fromRGB(45,65,125) local GRC2 = Color3.fromRGB(195,185,255)
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("IRRATIONALITY",C1,C2,GRC1,GRC2,GRC1,GRC2)
							SongChange(13421808181,3.5,0,1,"??? - 6_y") Hum.WalkSpeed = 16 Hum.JumpPower = 100
							WingExtraProps(false,C1,C2,"Neon","Neon",0,0)
						end
					end

					if k == "m" and Mode ~= "Tragedy" and Mode == "Inexplicability" then
						Mode = "Tragedy"
						local C1 = Color3.fromRGB(175,175,175) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("TRAGEDY",C1,C2,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421844648,3.5,0,1.075,"DJ Genki .VS. Gram - Einherjar Joker") Hum.WalkSpeed = 750 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "..." and Mode == "Irrationality" and false then
						Mode = "..."
						local C1 = Color3.fromRGB(125,175,255) local C2 = Color3.fromRGB(15,35,65) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("DISCONSOLATION",C1,C2,C2,GRC2,C2,GRC2)
						SongChange(13421724393,3.5,0,1,"アブジェ") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "..." and Mode == "Irrationality" then
						Mode = "..."
						local C1 = Color3.fromRGB(125,175,255) local C2 = Color3.fromRGB(15,35,65) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("DISCONSOLATION",C1,C2,C2,GRC2,C2,GRC2)
						local TableB = {13421724393,13421724393,13421724393,13421724393}
						SongChange(TableB[math.random(1,4)],3.5,0,1,"アブジェ　歌ってみた") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "b" and Mode ~= "Shatteration" and Mode == "..." then
						Mode = "Shatteration"
						local C1 = Color3.fromRGB(65,65,65) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("SHATTERATION",C1,C2,C2,GRC2,C2,GRC2)
						SongChange(13422366151,3.5,0,1,"アブジェ - Piano Cover") Hum.WalkSpeed = 14 Hum.JumpPower = 50
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "e" and Mode ~= 3 then
						Mode = 3
						local C1 = Color3.fromRGB(135,155,255) local C2 = Color3.fromRGB(145,100,255) local GRC1 = Color3.fromRGB(115,0,185) local GRC2 = Color3.fromRGB(255,255,255)
						local ThemeA = 13420740267 local ThemeB = 13420740267 local ThemeC = 13420740267 local Tanble = {ThemeA,ThemeA,ThemeB,ThemeA,ThemeC}
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("AMBIGUATION",C1,C2,GRC1,GRC2,GRC1,GRC2)
						SongChange(Tanble[math.random(1,5)],3.5,0,1,"xx - くらげ(Jellyfish)") Hum.WalkSpeed = 16 Hum.JumpPower = 100
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "r" and Mode ~= "Crisis" then
						Mode = "Crisis"
						local C1 = Color3.fromRGB(255,95,65) local C2 = Color3.fromRGB(255,65,35) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("CRISIS",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(4571259862,3.5,0,1, "Juggernaut - Outerhaven") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Embers" and Mode == "Crisis" then
						Mode = "Embers"
						local C1 = Color3.fromRGB(195,75,65) local C2 = Color3.fromRGB(65,45,25) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("EMBERS",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13420963640,3.5,0,1,"Distance OST - Halloween") Hum.WalkSpeed = 350 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Annihilation" and Mode == "Embers" then
						Mode = "Annihilation"
						local C1 = Color3.fromRGB(185,45,75) local C2 = Color3.fromRGB(75,0,0) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("ANNIHILATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13420740267,3.5,0,1,"xx - くらげ(Jellyfish)") Hum.WalkSpeed = 650 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "Prosperous" and Mode == "Annihilation" then
						Mode = "Prosperous"
						local C1 = Color3.fromRGB(255,185,95) local C2 = Color3.fromRGB(255,125,65) local GRC1 = Color3.fromRGB(65,35,20) 
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("PROSPERITY",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13421350553,3.5,0,1,"【東方ᐯᝪᑕᗩし】Cry for the Moon - (Poplica*)") Hum.WalkSpeed = 1250 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "t" and Mode ~= "Serenity" then
						Mode = "Serenity"
						local C1 = Color3.fromRGB(95, 25, 165) local C2 = Color3.fromRGB(95, 65, 255) local GRC1 = Color3.fromRGB(20,35,65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("SERENITY",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13421394410,3.5,0,1, "Yume 2kki OST - The Ceiling") Hum.WalkSpeed = 15 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Dilution" and  Mode == "Serenity" then
						Mode = "Dilution"
						local C1 = Color3.fromRGB(145, 125, 255) local C2 = Color3.fromRGB(165, 165, 175) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("DILUTION",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421484279,3.5,0,1, "Yume 2kki OST - Lotus Waters") Hum.WalkSpeed = 12 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "y" and Mode ~= "Affectionate" then
						Mode = "Affectionate"
						local C1 = Color3.fromRGB(145, 125, 255) local C2 = Color3.fromRGB(165, 165, 175) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("AFFECTIONATE",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421627361,3.5,0,1, "Kyozou - HappyValentine") Hum.WalkSpeed = 20 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "m" and Mode ~= "Convivial" and Mode == "Affectionate" then
						Mode = "Convivial"
						local C1 = Color3.fromRGB(125, 255, 145) local C2 = Color3.fromRGB(165, 200, 175) local GRC1 = Color3.fromRGB(75,125,85) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("CONVIVIAL",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13421627361,3.5,15,1, "ああああ - をかけるアドベンチャー ～ we are forever friends! [Long Version]") Hum.WalkSpeed = 35 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "n" and Mode ~= "Debiliation" and Mode == "Affectionate" then
						Mode = "Debiliation"
						local C1 = Color3.fromRGB(45,65,45) local C2 = Color3.fromRGB(45,125,255) local GRC1 = Color3.fromRGB(65,65,65) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("DEBILIATION",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13422447399,3.5,0,1, "予言屋さん") Hum.WalkSpeed = 35 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "u" and Mode ~= "Inundated" then
						Mode = "Inundated" 
						local C1 = Color3.fromRGB(35,65,95) local C2 = Color3.fromRGB(25,95,165) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("INUNDATED",C2,C1,GRC1,GRC2,GRC1,GRC2)
						SongChange(13422447399,3.5,0,1, "予言屋さん") Hum.WalkSpeed = 16 Hum.JumpPower = 450
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "k" and Mode ~= "Visualization" then
						Mode = "Visualization"
						local C1 = Color3.fromRGB(95, 25, 165) local C2 = Color3.fromRGB(95, 65, 255) local GRC1 = Color3.fromRGB(20,35,65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("VISUALIZATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13422433872,3.5,93.5,1, "xx4gou RETUNE // Lamprey hole") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "f" and Mode ~= "Recogniscent" then
						Mode = "Recogniscent"
						local C1 = Color3.fromRGB(95, 155, 255) local C2 = Color3.fromRGB(25, 45, 65) local GRC1 = Color3.fromRGB(25, 45, 65) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("RECOGNISCENT",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
						SongChange(13422493171,3.5,96,1, "Croomin / ImpossibleStudio - Blue Sky") Hum.WalkSpeed = 16 Hum.JumpPower = 150
						WingExtraProps(false,C1,C2,"Neon","Neon",0,0)

					elseif k == "j" and Mode ~= "Hyperium" then
						Mode = "Hyperium"
						local C1 = Color3.fromRGB(0, 125, 255) local C2 = RGB(15,35,45) local C3 = RGB(95,0,255) local C4 = RGB(15,35,45) local GRC1 = Color3.fromRGB(255, 75, 125) 
						RecolorMaterialReflectanceEyeColor(C2,C1,"Neon","Neon",0,0,C1) ChadNametag("HYPERIUM",Color3.fromRGB(255,255,255),C4,C1,C2,C1,C2)
						SongChange(13422506277,3.5,30,1, "t+pazolite - Ultrasonic Anthem [REMAKE]") Hum.WalkSpeed = 100000 Hum.JumpPower = 500
						WingExtraProps(true,C3,C4,"Neon","Neon",0,0)

					elseif k == "l" and Music.Playing == true then Music.Playing = false Music.Volume = 0
					elseif k == "l" and Music.Playing == false then Music.Playing = true Music.Volume = 3.5
					elseif k == "equals" and Music.Parent == Player.PlayerGui then Music.Parent = Torso
					elseif k == "equals" and Music.Parent == Torso then Music.Parent = Player.PlayerGui
					elseif k == "quote" then Music.TimePosition = 0

					elseif k == "z" and Mode == "Randomized" then
						local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) 
						local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
						RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag("RANDOMIZATION",C1,C2,C1,C2,C1,C2)

					elseif k == "one" and  Aero == true and EyeToggle == false then
						EyeToggle = true
						for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 0
							end
							for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
									v.Transparency = 0
								end
							end
							C.Head["Left Eye"].Transparency = 0
							C.Head["Right Eye"].Transparency = 0
						end

					elseif k == "one" and Aero == true and EyeToggle == true then
						EyeToggle = false
						for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
								v.Transparency = 1
							end
							for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then
									v.Transparency = 1
								end
							end
							C.Head["Left Eye"].Transparency = 1
							C.Head["Right Eye"].Transparency = 1
						end

					elseif k == "two" and AeroResources.LocksOfIce.Transparency == 0 and Aero == true then AeroResources.LocksOfIce.Transparency = 1 AeroResources.LocksOfIce2.Transparency = 0
					elseif k == "two" and AeroResources.LocksOfIce2.Transparency == 0 and Aero == true then AeroResources.LocksOfIce.Transparency = 0 AeroResources.LocksOfIce2.Transparency = 1

					elseif k == "leftbracket" and Aero == true then
						local AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
						local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
						local Shades = AeroResources.Shades
						e.f1.Transparency = 0 e.f2.Transparency = .05 e.f3.Transparency = .1 e.f4.Transparency = .15 e.f5.Transparency = .2 e.f6.Transparency = .25 e.f7.Transparency = .35
						e.f8.Transparency = .45 e.f9.Transparency = .55 e.f10.Transparency = .65 e.f11.Transparency = .75 e.f12.Transparency = 1 Shades.Transparency = 1 

					elseif k == "rightbracket" and Aero == true then
						local AeroResources = game.Players[target].Character.Devoyance.Resources.Aero
						local e = game.Players[target].Character.Devoyance.Resources.Aero.Gradient
						local Shades = AeroResources.Shades
						e.f1.Transparency = 1 e.f2.Transparency = 1 e.f3.Transparency = 1 e.f4.Transparency = 1 e.f5.Transparency = 1 e.f6.Transparency = 1 e.f7.Transparency = 1 
						e.f8.Transparency = 1 e.f9.Transparency = 1 e.f10.Transparency = 1 e.f11.Transparency = 1 e.f12.Transparency = 1 Shades.Transparency = 0
					end
				end)
				-- End of Artificial Heartbeat --=

				-- Start of Loops --
				spawn(function()

					game.Players[target].Character.Devoyance["Script Booting Objects"]:Destroy()

					while true do -- Main Loop
						swait()
						sine = sine + change

						Hum.Health = math.huge
						Hum.MaxHealth = math.huge

						local LDNS = Loudness

						if Aero == true then
							local Remove = {"Silver","MadScientistHair","FurryWhiteCoatCollar","BlueHoodie","HQWingedGlasses","WhiteStyledBackHair"}
							for i,v in pairs(C:GetDescendants()) do
								if v:IsA("Accessory") then
									for A,B in pairs(Remove) do
										if string.find(v.Name,B) then
											v:Destroy()
											C.Head.face.Transparency = 1
										end
									end
								end
							end
						end 


						if Mode == "Shatteration" and BandWBool.Value == false then
							BandWBool.Value = true
						elseif Mode ~= "Shatteration" and BandWBool.Value == true then
							BandWBool.Value = false
						end

						if Mode == "?!" then
							local C1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC1 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							local C2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255)) local GRC2 = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
							RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C2) ChadNametag(math.random(10,99).."NIL"..math.random(10,99),C1,C2,GRC1,GRC2,GRC1,GRC2)
							ScriptLabel.Text = math.random(1000,1000000)..""
							DevoyanceGui.MusicDisplay.ScriptText.Text = math.random(9999999,999999999)..""

						elseif Mode ~= "?!" then
							ScriptLabel.Text = "DEVOYANCE"
							DevoyanceGui.MusicDisplay.ScriptText.Text = "DEVOYANCE"

							if Music.PlaybackSpeed >= 10 or Music.PlaybackSpeed <= 0 then 
								Music.PlaybackSpeed = 1
							end

							if Mode == "Visualization" then
								local LDNS2 = Loudness / 1000
								if LDNS2 >= 1 then
									LDNS2 = 1
								end
								local Loud2 = Loudness/100
								local GRC1 = Color3.fromRGB(0,0,0)
								local C1 = Color3.fromHSV(sine/360 - math.floor(sine/360),0.7,LDNS2)
								local C2 = Color3.fromHSV(0,0,LDNS2)
								RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("VISUALIZATION",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
								DevoyanceGui.MusicChoiceBR.Visible = true DevoyanceGui.ChoiceBox.Visible = true DevoyanceGui.ChoiceBox.MusicChoice.Visible = true
								DevoyanceGui.PitchSelection.Visible = true DevoyanceGui.PitchLabel.Visible = true DevoyanceGui.PitchSelection.PitchChoice.Visible = true
								DevoyanceGui.VolSelect.Visible = true DevoyanceGui.VolSelect.VolChoice.Visible = true DevoyanceGui.VolLabel.Visible = true
								DevoyanceGui.TimeSelection.Visible = true DevoyanceGui.TimeSelection.TimeChoice.Visible = true DevoyanceGui.TimeLabel.Visible = true

								ScriptLabel.Text = "DEVOYANCE"
								DevoyanceGui.MusicDisplay.ScriptText.Text = "DEVOYANCE"
								Hum.WalkSpeed = 5 * Loudness/4 Hum.JumpPower = 5 * Loudness/8
								LPL.Range =  5 * Loud2 LPL.Brightness =  1.5 * Loud2
								RPL.Range =  5 * Loud2 RPL.Brightness =  1.5 * Loud2

							elseif Mode ~= "Visualization" then
								LPL.Range = 6 LPL.Brightness = 2
								RPL.Range = 6 RPL.Brightness = 2 
								DevoyanceGui.MusicChoiceBR.Visible = false DevoyanceGui.ChoiceBox.Visible = false DevoyanceGui.ChoiceBox.MusicChoice.Visible = false
								DevoyanceGui.PitchSelection.Visible = false DevoyanceGui.PitchLabel.Visible = false DevoyanceGui.PitchSelection.PitchChoice.Visible = false
								DevoyanceGui.VolSelect.Visible = false DevoyanceGui.VolSelect.VolChoice.Visible = false DevoyanceGui.VolLabel.Visible = false
								DevoyanceGui.TimeSelection.Visible = false DevoyanceGui.TimeSelection.TimeChoice.Visible = false DevoyanceGui.TimeLabel.Visible = false
							end

							if Mode == 1 and Music.SoundId == "rbxassetid://5517886433" then DevoyanceGui.MusicDisplay.MusicText.Text = "??? - untitled"
							elseif Mode == 2 and Music.SoundId == "rbxassetid://5237037028" then DevoyanceGui.MusicDisplay.MusicText.Text = "x0o0x - Untitled (UTAU Defoko Cover)"
							elseif Mode == 3 and Music.SoundId == "rbxassetid://5229246187" then DevoyanceGui.MusicDisplay.MusicText.Text = "xx - くらげ(Jellyfish, x0o0x_ Cover)"
							end

							if Mode == "Affectionate" then
								local LDNS = Loudness/700
								if LDNS >= 1 then
									LDNS = 1
								end
								local GRC1 = Color3.fromRGB(0,0,0)
								local C1 = Color3.fromHSV(.8,0.4,LDNS)
								local C2 = Color3.fromRGB(35,20,55)
								RecolorMaterialReflectanceEyeColor(C1,C2,"Neon","Neon",0,0,C1) ChadNametag("AFFECTIONATE",C1,C2,GRC1,Color3.fromRGB(255,255,255),GRC1,Color3.fromRGB(255,255,255))
								DevoyanceGui.MusicChoiceBR.Visible = false DevoyanceGui.ChoiceBox.Visible = false DevoyanceGui.ChoiceBox.MusicChoice.Visible = false
							end

							if Mode == "Tragedy" then
								local RT = 50 + sine
								local the = {.1,.2,.3,.4,.5,.6,.7,.8,.9,1}
								local Flash = Color3.fromHSV(0,0,the[math.random(1,10)])
								local Dark = Color3.fromRGB(0,0,0)
								ChadNametag("TRAGEDY",Flash,Dark,Dark,Flash,Dark,Flash)
								RecolorMaterialReflectanceEyeColor(Flash,Dark,"Neon","Neon",0,0,Flash)
								FX("Slash",false,0,0,ColorValue1.Value,"Neon",RootPart.CFrame * CFN(0,-2.75,0) * CFA(0,2 + RT * math.random(-5,5),0),10,0,V3(0,0,0),V3(0,0,0),V3(1,.01,1),0,1)
							end
						end

						if Mode == "Irrationality" then
							FX("Sphere",true,.5,10,ColorValue1.Value,"Neon",RootPart.CFrame * CFN(math.random(-8,8),-2.75,math.random(-8,5)) * CFA(90,0,0),15,1,V3(0,0,0),V3(.5,.5,.5),V3(2,2,2),0,1)
						end

						if Mode == "Convivial" then
							local Position = CFN(math.random(-7,7),math.random(-3,9),math.random(-7,7))
							FX("Sphere",true,1,7,ColorValue1.Value,"ForceField",RootPart.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(1.25,1.25,1.25),V3(1.25,1.25,1.25),.7,1)
							FX("Sphere",false,1,7,ColorValue2.Value,"Neon",RootPart.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(.75,.75,.75),V3(.75,.75,.75),.7,1)
						end

						local RT = 0
						if Mode == "Prosperous" or Mode == "Annihilation" then
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - 10 * math.sin(sine/30)),math.rad(0 - 20 * math.sin(sine/30)))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(40 - 10 * math.sin(sine/35)),math.rad(0 - 20 * math.sin(sine/30)))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-40 - 10 * math.sin(sine/33)),math.rad(0 - 20 * math.sin(sine/30)))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(140 + 10 * math.sin(sine/35)),math.rad(0 - 20 * math.sin(sine/30)))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-140 + 10 * math.sin(sine/33)),math.rad(0 - 20 * math.sin(sine/30)))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(180 + 10 * math.sin(sine/30)),math.rad(0 - 20 * math.sin(sine/30)))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "?!" then
							W1.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W2.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W3.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 - math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W4.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W5.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))
							W6.C0 = CFrame.new(0, 0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + math.random(0,360) * math.sin(sine/math.random(1,60))),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "Tragedy" then
							RT = 50 + sine
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -6),math.rad(0))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 2),math.rad(0))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -4),math.rad(0))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 5),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(-90),math.rad(0 + RT * -3),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 7),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

						elseif Mode == "Hyperium" then
							RT = 50 + sine * 3
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(125),math.rad(0 - 8 * math.sin(sine/30)))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0 - 8 * math.sin(sine/30)))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(0 - 8 * math.sin(sine/30)))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(115 + RT),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(50 + RT * 2),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + RT * 2.5),math.rad(0))
							W7.C0 = CFrame.new(1,0,1.5) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 7),math.rad(0))
							W8.C0 = CFrame.new(1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 9),math.rad(0))
							W9.C0 = CFrame.new(1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 10),math.rad(0))
							W10.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 6),math.rad(0))
							W11.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 8),math.rad(0))
							W12.C0 = CFrame.new(-1,0,1.85) * CFrame.Angles(math.rad(90),math.rad(115 + RT * 5),math.rad(0))


						else
							local SV1 = math.sin(sine/30) local SV2 = math.sin(sine/32) local SV3 = math.sin(sine/34)
							W1.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(0 + 5 * SV3),math.rad(0))
							W2.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(35 - 30 * SV3),math.rad(0))
							W3.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(70 - 65 * SV3),math.rad(0))
							W4.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(180 - 5 * SV3),math.rad(0))
							W5.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(145 + 30 * SV3),math.rad(0))
							W6.C0 = CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(90),math.rad(110 + 65 * SV3),math.rad(0))

							W1.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W5.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
							W6.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
						end
					end
				end)
				spawn(function()
					while true do
						swait()

						local SND = Music
						local Gui = DevoyanceGui.ChoiceBox

						if Aero == true then
							for i = 1, 300 do swait() end
							if EyeToggle == true then
								for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 1 end
									for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 1 end end end 
								C.Head["Left Eye"].Transparency = 1 LB.Transparency = 0
								C.Head["Right Eye"].Transparency = 1 RB.Transparency = 0
							end

							for i = 1, 15 do swait() end
							if EyeToggle == true then
								for i,v in pairs(C.Head["Left Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 0 end
									for i,v in pairs(C.Head["Right Eye"]:GetDescendants()) do if v:IsA("Part") or v:IsA("MeshPart") then v.Transparency = 0 end end end
								C.Head["Left Eye"].Transparency = 0 LB.Transparency = 1
								C.Head["Right Eye"].Transparency = 0 RB.Transparency = 1
							end
						end
					end
				end)
				-- End of Loops --

				-- Final Functions and variables --
				function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
					return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
				end
				local Anim="Idle"
				-- Final Functions and variables end --
				coroutine.resume(coroutine.create(function()
					-- Face Handling
				end))

				print("sick")

				--Footplanting code, no need to modify anything, variable is Vec.X,Y or Z
				local Walking = Hum.MoveDirection.magnitude>0
				local FwdDir = (Walking and Hum.MoveDirection*root.CFrame.lookVector or Vector3.new())
				local RigDir = (Walking and Hum.MoveDirection*root.CFrame.rightVector or Vector3.new())
				local Vec = {
					X=RigDir.X+RigDir.Z,
					Z=FwdDir.X+FwdDir.Z
				};
				local Divide = 1
				if(Vec.Z<0)then
					Divide=math.clamp(-(1.25*Vec.Z),1,2)
				end
				Vec.Z = Vec.Z/Divide
				Vec.X = Vec.X/Divide

				print("other suck")

				DevoyanceGui.Enabled = false


				while true do
					local idlesoff = false
					swait()
					local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
					local velderp=RootPart.Velocity.y
					hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)

					if RootPart.Velocity.y > 1 and hitfloor==nil then
						Anim="Jump"
						RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-15)),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35),math.rad(0),math.rad(0)),.1)
						RW.C0=clerp(RW.C0,cf(1.5,0.5,.4)*angles(math.rad(-25),math.rad(-20),math.rad(20)),.1)
						LW.C0=clerp(LW.C0,cf(-1.5,0.5,.4)*angles(math.rad(-25),math.rad(20),math.rad(-20)),.1)	

					elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
						Anim="Fall"
						RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-15)),.1)
						LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15)),.1)
						RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20),math.rad(0),math.rad(0)),.1)
						RW.C0=clerp(RW.C0,cf(1,0.9,0)*angles(math.rad(0),math.rad(-10),math.rad(145 - 10 * math.cos(sine/24))),.1)
						LW.C0=clerp(LW.C0,cf(-1,0.9,0)*angles(math.rad(0),math.rad(10),math.rad(-145 + 10 * math.cos(sine/24))),.1)	

					elseif torvel<1 and hitfloor~=nil then
						Anim="Idle"
						if Mode == 1 then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * math.cos(sine / 34),.3)*angles(math.rad(0),math.rad(60 + 10 * math.sin(sine/84)),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90 + 10 * math.sin(sine/84)),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 34))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30 - 10 * math.sin(sine/84))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 29)),math.rad(0 + 1.5 * math.sin(sine/33)),math.rad(-30 + 10 * math.sin(sine/84))),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(-40 - 5 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(40 + 5 * math.cos(sine/32))),.1)		

						elseif Mode == 2 then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1.1,-1 - 0.1 * math.cos(sine / 34),-.1)*angles(math.rad(0),math.rad(-70),math.rad(25))*angles(math.rad(0),math.rad(0),math.rad(0 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(-25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 4 * math.cos(sine / 29)),math.rad(15),math.rad(25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(10 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.3,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(175 + 3 * math.cos(sine/30)),math.rad(0),math.rad(20 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == 3 then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5 + 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 - 3.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5 - 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 + 3.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),-.4)*angles(math.rad(65 - 3 * math.cos(sine/30)),math.rad(0),math.rad(-45 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.5 - 0.1 * math.cos(sine / 28),-.3)*angles(math.rad(95 - 3 * math.cos(sine/30)),math.rad(-5),math.rad(65 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Randomized" then
							local MC = math.cos local MS = math.sin local MR = math.rad local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * MC(S1),.2)*angles(MR(0),MR(55),MR(0))*angles(MR(-2.5),MR(0),MR(0 - 2.75 * MC(S1))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * MC(S1))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* MC(S1))*angles(MR(0 - 2 * MC(S1)),MR(0),MR(35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 3 * MC(S2)),MR(0),MR(-35)),.1)
							RW.C0=clerp(RW.C0,cf(1.2,0.2 - 0.1 * MC(S5),-.7)*angles(MR(180 - 0 * MC(S4)),MR(-5),MR(-65 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.2,0.5 - 0.1 * MC(S5),.5)*angles(MR(0 - 10 * MC(S4)),MR(0),MR(40 + 2 * MC(S3))),.1)

						elseif Mode == "Inexplicability" then
							RH.C0=clerp(RH.C0,cf(1,-1.2 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(8.5),math.rad(0),math.rad(0 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-8.5),math.rad(0),math.rad(15 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(8),math.rad(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(-4),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0.3 - 0.1 * math.cos(sine / 28),.35)*angles(math.rad(0),math.rad(0),math.rad(-30 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 10 * math.cos(sine/30)),math.rad(0),math.rad(-15 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Tragedy" then
							local MC = math.cos local MS = math.sin local MR = math.rad 
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.4 - 0.1 * MC(S1),-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-8 + 2.75 * MC(S3))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(5 - 2.75 * MC(S3))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 + 1.5* MC(S1))*angles(MR(-20 - 2 * MC(S1)),MR(-10),MR(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(30 - 5 * MC(S2)),MR(0),MR(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(0 - 10 * MC(S4)),MR(0),MR(40 - 8 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.3,0.5 - 0.1 * MC(S5),-.7)*angles(MR(165),MR(45),MR(35)),.1)	

						elseif Mode == "Irrationality" then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * math.cos(sine / 34),.3)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(2.5),math.rad(0),math.rad(25 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 34))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(sine / 29)),math.rad(5 - 2 * math.sin(sine/33)),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 + 0.05 * math.cos(sine / 28),.5)*angles(math.rad(0),math.rad(0),math.rad(-40 - 5 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.3 + 0.05 * math.cos(sine / 28),.75)*angles(math.rad(-90),math.rad(10),math.rad(90 - 5 * math.cos(sine/32))),.1)		

						elseif Mode == "Crisis" then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 4 * math.cos(sine/30)),math.rad(0),math.rad(10 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 - 4 * math.cos(sine/30)),math.rad(0),math.rad(-10 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Annihilation" then
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.2 - 0.1 * MC(S1),-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-25 + 5 * MC(S2))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * MC(S1),0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-6.5),MR(0),MR(0 - 5 * MC(S2))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4 - 1.5* MC(S3))*angles(MR(0 - 2 * MC(S1)),MR(0),MR(35 - 5 * MC(S1))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(15 - 3 * MC(S2)),MR(0),MR(-35 + 5 * MC(S1))),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.3 - 0.1 * MC(S5),.6)*angles(MR(0 - 2 * MC(S4)),MR(0),MR(-40 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 - 0.1 * MC(S5),.6)*angles(MR(0 - 2 * MC(S4)),MR(0),MR(40 + 2 * MC(S3))),.1)		

						elseif Mode == "Prosperous" then
							local S1 = sine/34 local S2 = sine/29 local S3 = sine/32 local S4 = sine/30 local S5 = sine/28
							RH.C0=clerp(RH.C0,cf(1,-.3 - 0.1 * math.cos(sine / 34),-.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(-15 - 2.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(15 + 2.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6 + 1* math.cos(sine / 34))*angles(math.rad(-15 + 2 * math.cos(sine / 34)),math.rad(-10),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(35 - 3 * math.cos(sine / 29)),math.rad(4),math.rad(-25)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(-25 - 3 * MC(S4)),MR(0),MR(25 - 2 * MC(S3))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * MC(S5),0)*angles(MR(-25 - 3 * MC(S4)),MR(0),MR(-25 + 2 * MC(S3))),.1)		

						elseif Mode == "Serenity" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,-.5)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(-25 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(-35)),.1)
							RW.C0=clerp(RW.C0,cf(1.2,0.4 - 0.1 * S5,.4)*angles(MR(0 - 2 * S4),MR(0),MR(-40 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 2 * S4),MR(0),MR(-10 + 2 * S3)),.1)	

						elseif Mode == "Dilution" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-.2 - 0.1 * S1,-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(55 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(-90 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.75 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(.7,0.5 - 0.1 * S5,0)*angles(MR(35 - 2 * S4),MR(125),MR(45 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-.7,0.5 - 0.1 * S5,0)*angles(MR(25 - 2 * S4),MR(-125),MR(-45 + 2 * S3)),.1)	

						elseif Mode == "Affectionate" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,0)*angles(MR(0),MR(90),MR(0))*angles(MR(0),MR(0),MR(0 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-.7 - 0.1 * S1,-.4)*angles(MR(0),MR(-90),MR(0))*angles(MR(-4.5),MR(0),MR(45 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(-35)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(5 - 3 * S2),MR(5),MR(25)),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0 - 0.1 * S5,-.5)*angles(MR(0 - 3 * S4),MR(180),MR(140 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-.55,-.2 - 0.1 * S5,-.5)*angles(MR(0 - 3 * S4),MR(-180),MR(-135 + 2 * S3)),.1)	

						elseif Mode == "Convivial" then
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-.4 - 0.1 * S5,-.6)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5 - 3 * S1),MR(0),MR(-10 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S5,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5 + 3 * S1),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + .3 * S1,0,3.5 + .5* S1)*angles(MR(0 - 2 * S1),MR(0 - 3 * S1),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0 + 3 * S1),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(20 - 10 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(-20 + 10 * S3)),.1)	

						elseif Mode == "Debiliation" then
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6 - 1 * MS(sine/34))*angles(math.rad(0),math.rad(180),math.rad(0 + 10 + sine * -10)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.1)		

						elseif Mode == "Inundated" then
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(25 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-15)),.1)
							RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(-40 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(40 + 2 * math.cos(sine/32))),.1)		


						elseif Mode == "Visualization" then
							RH.C0=clerp(RH.C0,cf(.9,-1 - 0.05 * Loudness/75,.3)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 1.75 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * Loudness/75,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 1.75 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * Loudness/75)*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(30)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(35 * Loudness/500),math.rad(0),math.rad(-30)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.3 + 0.05 * Loudness/73,.2)*angles(math.rad(5 * Loudness/18),math.rad(0),math.rad(20)),.1)
							LW.C0=clerp(LW.C0,cf(-1.1,0.3 + 0.05 * Loudness/73,.5)*angles(math.rad(0),math.rad(0),math.rad(40 - 5 * math.cos(sine/32))),.1)	

						elseif Mode == "Recogniscent" then
							RH.C0=clerp(RH.C0,cf(1.1,-1 - 0.1 * math.cos(sine / 34),-.2)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0 + 2 * math.cos(sine/34))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 29)),math.rad(0 - 2 * math.cos(sine/32)),math.rad(-25 + 4 * math.cos(sine/31))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(20 - 2 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(210 + 3 * math.cos(sine/30)),math.rad(-30),math.rad(50 + 2 * math.cos(sine/32))),.1)	

						elseif Mode == "Hyperium" then
							RH.C0=clerp(RH.C0,cf(1,-.3 - 0.1 * math.cos(sine / 34),-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(-25 + 6 * math.cos(sine/30))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6.5),math.rad(0),math.rad(15 - 6 * math.cos(sine/30))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,10 + 2* math.cos(sine / 34))*angles(math.rad(-3 + 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 - 8 * math.cos(sine / 29)),math.rad(0),math.rad(-15)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(30 - 18 * math.cos(sine/30))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * math.cos(sine / 28),0)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(-30 + 18 * math.cos(sine/30))),.1)	

						else
							local MC = math.cos local MS = math.sin local MR = math.rad 
							local S1 = MS(sine/34) local S2 = MS(sine/29) local S3 = MS(sine/32) local S4 = MS(sine/30) local S5 = MS(sine/28)
							RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * S1,0)*angles(MR(0),MR(90),MR(0))*angles(MR(-2.5),MR(0),MR(0 - 2.75 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * S1,0)*angles(MR(0),MR(-90),MR(0))*angles(MR(-2.5),MR(0),MR(0 + 2.75 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* S1)*angles(MR(0 - 2 * S1),MR(0),MR(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(MR(10 - 5 * S2),MR(0),MR(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(10 - 2 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5 - 0.1 * S5,0)*angles(MR(0 - 10 * S4),MR(0),MR(-10 + 2 * S3)),.1)	
						end

						-- root.RotVelocity.Y
					elseif torvel>2 and torvel<22 and hitfloor~=nil then
						Anim="Walk"

						if Mode == 2 then
							local Alpha = .1 local s = math.sin local S = sine local S1 = sine/11 local S2 = sine/5.5 local S3 = sine/10
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 + 2 * s(S1)),math.rad(0 + 10 * s(S3)),math.rad(0 + 50 * s(S1))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 - 2 * s(S1)),math.rad(0 + 10 * s(S3)),math.rad(0 + 50 * s(S1))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .15 * s(S2))*angles(math.rad(8),math.rad(0 + 2 * s(S1)),math.rad(0 - 10 * s(S3))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(15),math.rad(0 - 2 * s(S1)),math.rad(0 + 10 * s(S3))),.1)
							RW.C0=clerp(RW.C0,cf(1,0.3,.5)*angles(math.rad(0),math.rad(0 + 10 * s(S3)),math.rad(-40)),.1)
							LW.C0=clerp(LW.C0,cf(-1,0.3,.5)*angles(math.rad(0),math.rad(0 + 10 * s(S3)),math.rad(40)),.1)	

						elseif Mode == 3 then
							RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 35 * math.cos(sine / 8))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 - 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 5 * math.cos(sine / 8))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 5 * math.cos(sine / 8))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)

						elseif Mode == "Serenity" or Mode == "Irrationality" then
							local S1 = math.sin(sine/12) local S2 = math.sin(sine/6) local S3 = math.sin(sine/7.5)
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 - .75 * S1),math.rad(0 - 7 * S1),math.rad(0 + 45 * S1)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 - .75 * S1),math.rad(0 - 7 * S1),math.rad(0 + 45 * S1)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .125 * S2)*angles(math.rad(5),math.rad(0 + .75 * S1),math.rad(0 + 7 * S1)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0 - .75 * S1),math.rad(0 - 7 * S1)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0 - 45 * S1),math.rad(0 - 7 * S1),math.rad(0)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0 + 45 * S1),math.rad(0 - 7 * S1),math.rad(0)),.1)	

						else

							-- Cos and Sin stuff
							local Alph = .1
							local S1,S2,S3 = math.sin(sine/12),math.sin(sine/6),math.sin(sine/11.5)
							local C1,C2,C3 = math.cos(sine/12),math.cos(sine/6),math.cos(sine/8)

							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0 - 1.5 * S1),math.rad(0 + 8 * C3),math.rad(0 + 50 * S1)),Alph)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0 + 1.5 * S1),math.rad(0 + 8 * C3),math.rad(0 + 50 * S1)),Alph)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .175 * S2)*angles(math.rad(10 - 2 * C2),math.rad(0 + 1.5 * S1),math.rad(0 - 8 * C3)),Alph)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0 - 1.5 * S1),math.rad(0 + 8 * C3)),Alph)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0 - 45 * S3),math.rad(0),math.rad(5)),Alph)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0 + 45 * S3),math.rad(0),math.rad(-5)),Alph)		

						end

					elseif torvel>=22 and hitfloor~=nil then
						Anim="Run"

						if Mode == "Annihilation" or Mode == "Prosperous" or Mode == "Tragedy" then 
							RH.C0=clerp(RH.C0,cf(1,-.4,-.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-25 + 5 * math.sin(sine/28))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(15 + 5 * math.sin(sine/28))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1 + 1* math.cos(sine / 34))*angles(math.rad(65 - 8 * math.cos(sine / 34)),math.rad(0),math.rad(0 - 7 * math.sin(sine/34))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-55 + 10 * math.cos(sine / 34)),math.rad(0),math.rad(0 + 7 * math.sin(sine/34))),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,.1)*angles(math.rad(0),math.rad(-40),math.rad(15 + 3 * math.cos(sine/32))),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,.1)*angles(math.rad(0),math.rad(40),math.rad(-15 - 3 * math.cos(sine/32))),.1)	

						elseif Mode == "Debiliation" then
							RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0 + 10 + sine * -5),math.rad(0),math.rad(0)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.1)	

						elseif Mode == "Convivial" then
							local S1 = MS(sine/34) local S2 = MS(sine/32) local S3 = MS(sine/30)
							RH.C0=clerp(RH.C0,cf(1,-.4,-.6)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 - 10 * S3),math.rad(-15 + 2 * S3)),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 - 10 * S3),math.rad(15 - 2 * S3)),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3.5 - .5 * S1)*angles(math.rad(30 - 5 * S1),math.rad(0),math.rad(0 + 10 * S3)),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-25 + 5 * S1),math.rad(0),math.rad(0 - 10 * S3)),.1)
							RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(25 + 5 * S3)),.1)
							LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-25),math.rad(0),math.rad(-25 - 5 * S3)),.1)	

						elseif Mode == "Hyperium" then
							local A = .3 local MSine = 60 local HSine = 30 local OSine = 45 local Sine2 = 40
							RH.C0=clerp(RH.C0,cf(1,-.2 - .1 * MS(sine/MSine),-.6)*angles(math.rad(0),math.rad(90),math.rad(-7 + 1.575 * MS(sine/MSine))),A)
							LH.C0=clerp(LH.C0,cf(-1,-1 - .1 * MS(sine/MSine),0)*angles(math.rad(0),math.rad(-90),math.rad(7 - 1.575 * MS(sine/MSine))),A)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5 + 1 * MS(sine/HSine))*angles(math.rad(55 + 1.5 * MS(sine/MSine)),math.rad(0),math.rad(0)),A)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-35 + 5 * MS(sine/OSine)),math.rad(0),math.rad(0)),A)
							RW.C0=clerp(RW.C0,cf(1.25,0.5 - .1 * MS(sine/HSine),.4)*angles(math.rad(0 + 5 * MS(sine/Sine2)),math.rad(-60),math.rad(35 - 8 * MS(sine/Sine2))),A)
							LW.C0=clerp(LW.C0,cf(-1.25,0.5 - .1 * MS(sine/HSine),.4)*angles(math.rad(0 - 5 * MS(sine/Sine2)),math.rad(60),math.rad(-35 + 8 * MS(sine/Sine2))),A)

						else
							RH.C0=clerp(RH.C0,cf(1,-1,0 + .5 * math.cos(sine/3.5))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 145 * math.cos(sine / 6))),.1)
							LH.C0=clerp(LH.C0,cf(-1,-1,0 + .5 * math.cos(sine/3.5))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 145 * math.cos(sine / 6))),.1)
							RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.25 * math.cos(sine / 3.5))*angles(math.rad(28 - 1 * math.cos(sine / 7)),math.rad(0 + 1 * math.cos(sine/6)),math.rad(0 - 5* math.cos(sine/6))),.1)
							Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0 - 2* math.cos(sine/6))),.1)
							RW.C0=clerp(RW.C0,cf(1.4,0.5,0 + .5 * math.cos(sine/7.5))*angles(math.rad(0 + 165 * math.cos(sine/6)),math.rad(0),math.rad(0)),.1)
							LW.C0=clerp(LW.C0,cf(-1.4,0.5,0 - .5 * math.cos(sine/7.5))*angles(math.rad(0 - 165 * math.cos(sine/6)),math.rad(0),math.rad(0)),.1)		
						end
					end 
				end
			end
		end
	},


	["/run"] = {
		requiredRank = 20,
		description = "runs a StompFX",
		func = function(target, stompName)
			print("stompName:", stompName)
			local stomp = game:GetService("ReplicatedStorage").KillFX:WaitForChild(stompName)
			local tattrget = game:GetService("Players"):WaitForChild(target)
			if stomp then
				local function setthreadidentity()
					if syn then
						syn.set_thread_identity(2)
					else
						setthreadcontext(2)
					end
				end

				setthreadidentity()
				local localPlayer = tattrget
				local replicatedStorage = game:GetService("ReplicatedStorage")

				local function runStompEffect(effect, primaryPart)
					local fxModule = require(replicatedStorage.KillFX[stomp.Name])

					return fxModule.RunStompFx(stomp.Name, game.Players[tattrget.Name].Character.LeftFoot, localPlayer, localPlayer)
				end

				runStompEffect(stomp.Name, game.Players[tattrget.Name].Character.LeftFoot)
			else
				print("Stomp: " .. stompName .. " not found.")
			end
		end
	},

	["/match"] = {
		requiredRank = 20,
		description = "starts a match in five duels.",
		func = function(player1, player2)
			print("testing...")
			local Player1 = player1
			print("player1: "..Player1)
			local Player2 = player2
			print("player2: "..Player2)

			local newMessage = Instance.new("Message", workspace)
			newMessage.Text = "Waiting..."

			game.Players[Player1].Character.HumanoidRootPart.CFrame = CFrame.new(-61.1629066, 88.1308823, -1617.6626, -0.664233088, 7.4316775e-10, 0.747525513, 5.46150183e-08, 1, 4.75354121e-08, -0.747525513, 7.24007094e-08, -0.664233088)
			game.Players[Player2].Character.HumanoidRootPart.CFrame = CFrame.new(-54.7999725, 88.1359482, -1777.41187, 0.655356646, -3.9561634e-08, 0.755319595, 1.53094568e-08, 1, 3.90940187e-08, -0.755319595, -1.40569929e-08, 0.655356646)
			wait(0.6)
			game.Players[Player1].Character.HumanoidRootPart.Anchored = true
			game.Players[Player2].Character.HumanoidRootPart.Anchored = true
			wait(6)
			newMessage.Text = "Setting..."
			wait(0.8)
			game.Players[Player1].Character.HumanoidRootPart.Anchored = false
			game.Players[Player2].Character.HumanoidRootPart.Anchored = false
			wait(0.8)
			game.Players[Player1].Character.HumanoidRootPart.CFrame = CFrame.new(-40.9913597, 88.131279, -1638.53638, 0.713345528, 7.26010185e-09, -0.700812519, 2.18055014e-08, 1, 3.25550111e-08, 0.700812519, -3.85045382e-08, 0.713345528)
			game.Players[Player2].Character.HumanoidRootPart.CFrame = CFrame.new(64.9367905, 88.1302719, -1651.14392, 0.644180954, 2.85578245e-08, 0.764873147, 7.07810841e-08, 1, -9.6948952e-08, -0.764873147, 1.16591217e-07, 0.644180954)
			wait(0.8)
			game.Players[Player1].Character.HumanoidRootPart.Anchored = true
			game.Players[Player2].Character.HumanoidRootPart.Anchored = true
			wait(2)
			local count = 5
			while count > 0 do
				wait(1)
				count = count - 1
				newMessage.Text = "Waiting..." .. count
			end
			game.Players[Player1].Character.HumanoidRootPart.Anchored = false
			game.Players[Player2].Character.HumanoidRootPart.Anchored = false
			newMessage:Destroy()
		end
	},

	["/equip"] = {
		requiredRank = 20,
		description = "equips a StompFX",
		func = function(playername, equippedStomp)
			print("stompName:", equippedStomp)

			local range = 10 -- range in studs to search for dead players

			local lastStompTime = 0 -- timestamp when the stomp effect was last used
			local stompCooldown = 1 -- cooldown time in seconds for the stomp effect

			local player = game.Players:FindFirstChild(playername)
			if player then
				local replaceStomp = equippedStomp -- Standard-Stomp-Effekt

				local players = game:GetService("Players")
				local lplayer = player

				local isEffectTriggered = false
				local isPaused = false

				local chatService = game:GetService("Chat")

				lplayer.Chatted:Connect(function(msg)
					local abc = msg:split(" ")
					if abc[1] == "/unequip" then
						isPaused = true
						print("unequipped.")
						wait(1)
					end
				end)



				while wait() do
					if not isPaused then
						if lplayer.Character and lplayer.Character:FindFirstChild("Fist") and not isEffectTriggered then
							isEffectTriggered = true
							wait(0.6)
							local function getclosestdead()
								local targetlist = {}
								local mroot = (lplayer.Character.HumanoidRootPart)
								for i, v in pairs(workspace.Characters:GetChildren()) do
									local head, root = (v:FindFirstChild('Head')), (v:FindFirstChild('UpperTorso'))
									if not (root) or not (head) then
										continue
									end
									if (head:FindFirstChild('Skull')) then
										local distance = (mroot.Position - root.Position).Magnitude
										if distance <= range then
											table.insert(targetlist, {players:GetPlayerFromCharacter(v), distance})
										end
									end
								end
								table.sort(targetlist, function(a, b)
									return (a[2] < b[2])
								end)
								local lastfound = (nil)
								if (#targetlist > 0) then
									lastfound = (targetlist[1])
								end
								return (lastfound)
							end

							local oldtick = (tick())
							local closestdead = (nil)
							repeat
								task.wait()
								closestdead = (getclosestdead())
							until (closestdead ~= nil or (tick() - oldtick) > 2)
							if (closestdead ~= nil) then

								local function stompfx(char)
									local currentTime = tick()
									if currentTime - lastStompTime < stompCooldown then
										return -- don't do anything if the stomp effect is on cooldown
									end
									lastStompTime = currentTime

									local stomp = game:GetService("ReplicatedStorage").KillFX:WaitForChild(equippedStomp)
									if stomp.Name == "Skyfall" then
										print("it's Skyfall.")
										local function setthreadidentity()
											if syn then
												syn.set_thread_identity(2)
											else
												setthreadcontext(2)
											end
										end

										setthreadidentity()
										local localPlayer = game:GetService("Players")[lplayer.Name]
										local replicatedStorage = game:GetService("ReplicatedStorage")

										local wand = replicatedStorage.KillFX.Skyfall:WaitForChild("Wand"):Clone()
										wand.Parent = localPlayer.Character

										local newWeld = Instance.new("Weld")
										newWeld.Part0 = wand.Handle
										newWeld.Part1 = localPlayer.Character.RightHand
										newWeld.C1 = CFrame.Angles(math.rad(-180), 0, 0)
										newWeld.Parent = wand.Handle

										CFrame.Angles(math.rad(-180), 0, 0)

										local function runStompEffect(effect, primaryPart)
											local primaryPart = primaryPart or workspace.Part
											local fxModule = require(replicatedStorage.KillFX[stomp.Name])

											return fxModule.RunStompFx(stomp, closestdead[1].Character.PrimaryPart, localPlayer, localPlayer)
										end

										runStompEffect("Skyfall", closestdead[1].Character.PrimaryPart)

										wait(6)
										wand:Destroy()
									else
										local function setthreadidentity()
											if syn then
												syn.set_thread_identity(2)
											else
												setthreadcontext(2)
											end
										end

										setthreadidentity()
										local localPlayer = game:GetService("Players")[lplayer.Name]
										local replicatedStorage = game:GetService("ReplicatedStorage")

										local function runStompEffect(effect, primaryPart)
											local primaryPart = primaryPart or workspace.Part
											local fxModule = require(replicatedStorage.KillFX[stomp.Name])

											return fxModule.RunStompFx(stomp, closestdead[1].Character.PrimaryPart, localPlayer, localPlayer)
										end

										runStompEffect(stomp.Name, closestdead[1].Character.PrimaryPart)
									end
								end

								stompfx(closestdead[1].Character.LeftFoot)
								print("ran stomp on"..closestdead[1].Name)
							end
						elseif lplayer.Character and not lplayer.Character:FindFirstChild("Fist") then
							isEffectTriggered = false
						end
					end
				end
			end
		end
	},
	["/bridge"] = {
		requiredRank = 20,
		description = "Spawns bridge of death.",
		func = function(stompName)
			bridge()
		end
	},
	["/atomic"] = {
		requiredRank = 20,
		description = "Spawns bridge of death.",
		func = function(stompName)
			atomic()
		end
	},
	["/magicguns"] = {
		requiredRank = 20,
		description = "magics guns",
		func = function()
			local target = game.Players:WaitForChild("4zyg")
			local gunnames = {"[Revolver]"}
			for i,v in pairs(target.Backpack:GetChildren()) do
				if v:FindFirstChild("Handle") and v.Name == "[Revolver]" then
					v.Handle.Light.Brightness = 15
					v.Handle.Light.Color = Color3.fromRGB(255,0,0)
					v.Handle.Material = "ForceField"
					v.Handle.Color = Color3.fromRGB(255,0,0)
				end
			end
			for i,v in pairs(target.Backpack:GetChildren())  do
				if v:FindFirstChild("Handle") and v.Name == "[Double Barrel SG]" then
					v.Handle.Light.Brightness = 15
					v.Handle.Light.Color = Color3.fromRGB(255,0,0)
					v.Handle.Material = "ForceField"
					v.Handle.Color = Color3.fromRGB(255,0,0)
				end
			end

			for i,v in pairs(target.Backpack:GetChildren())  do
				if v:FindFirstChild("Handle") and v.Name == "[Scythe]" then
					local handle = v.Handle
					handle.Material = "ForceField"
					handle.Sound.SoundId = "rbxassetid://445431379"
					handle.ay.SoundId = "rbxassetid://131138832"
					handle.ay.PlaybackSpeed = 1
					handle.ez.SoundId = "rbxassetid://131138828"
					target.Character.HumanoidRootPart.Running.SoundId = "rbxassetid://5846853128"
					target.Character.HumanoidRootPart.Running.PlaybackSpeed = 1
					target.Character.HumanoidRootPart.Died.SoundId = "rbxassetid://138080313"
					target.Character.HumanoidRootPart.Jumping.SoundId = "rbxassetid://409647180"

					-- Define the number of colors you want in the rainbow
					local rainbowColorsCount = 20

					-- Generate a smooth rainbow of colors
					local rainbowColors = {}
					for i = 1, rainbowColorsCount do
						local hue = (i - 1) / rainbowColorsCount
						local color = Color3.fromHSV(hue, 1, 1)
						table.insert(rainbowColors, ColorSequenceKeypoint.new((i - 1) / (rainbowColorsCount - 1), color))
					end

					-- Create a ColorSequence using the rainbow colors
					local rainbowColorSequence = ColorSequence.new(rainbowColors)

					-- Set the initial color of the handle
					handle.Trail.Color = rainbowColorSequence
					handle.Color = rainbowColorSequence.Keypoints[1].Value

					-- Define the animation speed (in seconds per color)
					local animationSpeed = 0.05

					-- Define a function to update the handle color
					local function updateHandleColor()
						local time = tick() % (rainbowColorsCount * animationSpeed)
						local colorIndex = math.floor(time / animationSpeed) + 1
						local color = rainbowColorSequence.Keypoints[colorIndex].Value
						handle.Trail.Color = rainbowColorSequence
						handle.Color = color
					end

					-- Connect the function to the heartbeat event
					game:GetService("RunService").Heartbeat:Connect(updateHandleColor)
				end
			end
			print("given everything..")
		end
	},
}

for i,v in pairs(game.Players:GetChildren()) do
	local playerName = v.Name
	local playerRank = whitelist[playerName]

	if playerRank then
		PlayerService[playerName].Chatted:Connect(function(message)
			local messageSplit = message:split(" ")
			local cmd = messageSplit[1]
			local allowedCmd = allowedCmds[cmd]

			if allowedCmd and playerRank >= allowedCmd.requiredRank then
				if not playersWithCooldown[playerName] then
					-- If the player hasn't used any commands yet, add them to the cooldown list
					playersWithCooldown[playerName] = {}
				end

				if not playersWithCooldown[playerName][cmd] then
					if cmd == "/kill" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/ban" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/toggle" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/goku" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/clone" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "rb!!" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "lb!" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/dev" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/zinnia" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/gull" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/equip" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/kick" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/run" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/tag" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/streaks" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/ac" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					else
						allowedCmd.func()
					end


					print("HELLOOOOO")


					playersWithCooldown[playerName][cmd] = true
					wait(5)
					playersWithCooldown[playerName][cmd] = false
				end
			end
		end)

		print("loaded all cmds!")
		-- Connect to the character added event to reset the cooldowns
		PlayerService[playerName].CharacterAdded:Connect(function(character)
			playersWithCooldown[playerName] = nil
		end)
	end
end



game.Players.PlayerAdded:Connect(function(player)
	local playerName = player.Name
	local playerRank = whitelist[playerName]

	if playerRank then
		PlayerService[playerName].Chatted:Connect(function(message)
			local messageSplit = message:split(" ")
			local cmd = messageSplit[1]
			local allowedCmd = allowedCmds[cmd]

			if allowedCmd and playerRank >= allowedCmd.requiredRank then
				if not playersWithCooldown[playerName] then
					-- If the player hasn't used any commands yet, add them to the cooldown list
					playersWithCooldown[playerName] = {}
				end

				if not playersWithCooldown[playerName][cmd] then
					if cmd == "/kill" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/ban" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/toggle" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/goku" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/clone" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "rb!!" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "lb!" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/dev" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/zinnia" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/gull" and messageSplit[2] then
						allowedCmd.func(messageSplit[2])
					elseif cmd == "/equip" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/kick" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/run" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/tag" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/streaks" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					elseif cmd == "/ac" and messageSplit[2] and messageSplit[3] then
						allowedCmd.func(messageSplit[2], table.concat(messageSplit, " ", 3))
					else
						allowedCmd.func()
					end

					playersWithCooldown[playerName][cmd] = true
					wait(5)
					playersWithCooldown[playerName][cmd] = false
				end
			end
		end)

		print("loaded all cmds!")
		-- Connect to the character added event to reset the cooldowns
		PlayerService[playerName].CharacterAdded:Connect(function(character)
			playersWithCooldown[playerName] = nil
		end)
	end
end)


local player = game:GetService('Players').LocalPlayer

local Owner = {
	157521158, -- fatex
}

local Moderator = {
	360714334,-- txl
	476501871, -- alt acc
	46871 -- alt acc
}

local Cool = {

}

local Booster = {

}

local ContentCreator = {

}

local RTXClan = {

}

local MetCorruptOblivion = {

}

local Idiot = {
	2205701910, -- Trip hub owner (mentally ill)
}

function externalLog(a)
	print('[DENIRO]: ' .. a)
end

function isHumanoid(state)
	if game:GetService('Players'):FindFirstChild(state).Character:FindFirstChild('Humanoid') then
		return true
	end
	return false
end

function giveEmoji(player, emoji)
	if player.Character then
		player.Character:WaitForChild('Humanoid').DisplayName = ('['..emoji..'] ' .. tostring(player.DisplayName))
		print("given emoji")
	end
	player.CharacterAdded:Connect(function(char)
		char:WaitForChild('Humanoid').DisplayName = ('['..emoji..'] ' .. tostring(player.DisplayName))
		print("given emoji")
	end)
end

local Indentify = function()
	for i,v in pairs(game:GetService('Players'):GetChildren()) do
		if table.find(Owner, v.UserId) then
			giveEmoji(v, '✨')
		elseif table.find(Moderator, v.UserId) then
			giveEmoji(v, '💫')
		elseif table.find(Cool, v.UserId) then
			giveEmoji(v, '🥶')
		elseif table.find(Booster, v.UserId) then
			giveEmoji(v, '💎')
		elseif table.find(ContentCreator, v.UserId) then
			giveEmoji(v, '💸')
		elseif table.find(RTXClan, v.UserId) then
			giveEmoji(v, '🐈')
		elseif table.find(MetCorruptOblivion, v.UserId) then
			giveEmoji(v, 'Met CorruptOblivion')
		elseif table.find(Idiot, v.UserId) then 
			giveEmoji(v, '❌!! KILL THIS RETARD !!❌')
		else
			if v.Character and v.Character:FindFirstChild('HumanoidRootPart') and not v.Character.HumanoidRootPart:FindFirstChild('OriginalSize') then
				giveEmoji(v, '🌌') 
			end
		end
	end
end

local Success, Failure = pcall(Indentify)

if not Success and Failure then
	externalLog('Error with emoji system: ' .. Failure)
end
