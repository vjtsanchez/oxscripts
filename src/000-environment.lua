local print = print
local pairs = pairs
local ipairs = ipairs
local setfenv = setfenv
local tonumber = tonumber
local tostring = tostring
local assert = assert
local type = type
local collectgarbage = collectgarbage
local unpack = unpack
local pcall = pcall
local next = next
local pnext = function(t, i) return pcall(function() return next(t, i) end) end
local os = os
local io = io
local string = string
local math = math
local table = table

local xeno = {}
xeno.ping = Self.Ping
xeno.delayWalker = delayWalker
xeno.gotoLabel = function(name, relative) gotoLabel(name, relative and 1 or 0) end
xeno.loadSettings = loadSettings
xeno.sendScriptSignal = sendScriptSignal
xeno.getWalkerStuck = getWalkerStuck
xeno.getWalkerLuring = getWalkerLuring
xeno.getTargetingIgnoring = getTargetingIgnoring
xeno.registerNativeEventListener = registerNativeEventListener
xeno.getContainerOpen = getContainerOpen
xeno.getContainerName = getContainerName
xeno.getContainerID = getContainerID
xeno.getContainerSpotData = getContainerSpotData
xeno.getContainerItemCount = getContainerItemCount
xeno.getContainerItemCapacity = getContainerItemCapacity
xeno.getItemNameByID = getItemNameByID
xeno.getItemIDByName = getItemIDByName
xeno.minimizeContainer = minimizeContainer
xeno.closeContainer = closeContainer
xeno.containerUseItem = containerUseItem
xeno.containerUseWithContainer = containerUseWithContainer
xeno.containerUseItemWithGround = containerUseItemWithGround
xeno.containerUseItemWithCreature = containerUseItemWithCreature
xeno.containerMoveItemToSlot = containerMoveItemToSlot
xeno.containerMoveItemToGround = containerMoveItemToGround
xeno.containerMoveItemToContainer = containerMoveItemToContainer
xeno.containerBack = containerBack
xeno.isItemContainer = isItemContainer
xeno.isItemCorpse = isItemCorpse
xeno.isItemStackable = isItemStackable
xeno.isItemUseWithable = isItemUseWithable
xeno.isItemFood = isItemFood
xeno.isItemWalkable = isItemWalkable
xeno.isItemFurniture = isItemFurniture
xeno.isItemField = isItemField
xeno.getTileUseTargetID = getTileUseTargetID
xeno.getTileUseID = getTileUseID
xeno.getTileIsWalkable = getTileIsWalkable
xeno.getItemWeight = getItemWeight
xeno.getItemValue = getItemValue
xeno.getItemCost = getItemCost
xeno.setWalkerEnabled = setWalkerEnabled
xeno.setLooterEnabled = setLooterEnabled
xeno.setTargetingEnabled = setTargetingEnabled
xeno.getSelfID = getSelfID
xeno.getSelfTargetID = getSelfTargetID
xeno.getSelfFollowID = getSelfFollowID
xeno.getSelfPosition = getSelfPosition
xeno.getSelfLookDirection = getSelfLookDirection
xeno.getSelfMaxHealth = getSelfMaxHealth
xeno.getSelfMaxMana = getSelfMaxMana
xeno.getSelfMana = getSelfMana
xeno.getSelfHealth = getSelfHealth
xeno.getSelfStamina = getSelfStamina
xeno.getSelfCap = getSelfCap
xeno.getSelfLevel = getSelfLevel
xeno.getSelfExperience = getSelfExperience
xeno.getSelfFlag = getSelfFlag
xeno.getSelfSpellCooldown = getSelfSpellCooldown
xeno.getSelfSpellRequirementsMet = getSelfSpellRequirementsMet
xeno.selfSay = selfSay
xeno.selfYell = selfYell
xeno.selfWhisper = selfWhisper
xeno.selfNpcSay = selfNpcSay
xeno.selfPrivateMessage = selfPrivateMessage
xeno.selfUseItem = selfUseItem
xeno.selfUseItemFromGround = selfUseItemFromGround
xeno.selfUseItemWithGround = selfUseItemWithGround
xeno.selfUseItemWithCreature = selfUseItemWithCreature
xeno.selfBrowseField = selfBrowseField
xeno.doSelfTurn = doSelfTurn
xeno.doSelfStep = doSelfStep
xeno.doSelfWalkTo = doSelfWalkTo
xeno.slotUseItem = slotUseItem
xeno.slotMoveItemToContainer = slotMoveItemToContainer
xeno.shopBuyItemByName = shopBuyItemByName
xeno.shopBuyItemByID = shopBuyItemByID
xeno.shopSellItemByName = shopSellItemByName
xeno.shopSellItemByID = shopSellItemByID
xeno.shopGetItemBuyPriceByName = shopGetItemBuyPriceByName
xeno.shopGetItemBuyPriceByID = shopGetItemBuyPriceByID
xeno.shopGetItemSaleCountByName = shopGetItemSaleCountByName
xeno.shopGetItemSaleCountByID = shopGetItemSaleCountByID
xeno.luaOpenCustomChannel = luaOpenCustomChannel
xeno.luaCloseCustomChannel = luaCloseCustomChannel
xeno.luaSendChannelMessage = luaSendChannelMessage
xeno.HUDGetDimensions = HUDGetDimensions
xeno.HUDCreateItemImage = HUDCreateItemImage
xeno.HUDCreateText = HUDCreateText
xeno.HUDUpdateLocation = HUDUpdateLocation
xeno.HUDUpdateTextText = HUDUpdateTextText
xeno.HUDUpdateTextColor = HUDUpdateTextColor
xeno.HUDUpdateItemImageID = HUDUpdateItemImageID
xeno.HUDUpdateItemImageSize = HUDUpdateItemImageSize
xeno.HUDUpdateItemImageCount = HUDUpdateItemImageCount
xeno.getHeadSlotData = getHeadSlotData
xeno.getArmorSlotData = getArmorSlotData
xeno.getLegsSlotData = getLegsSlotData
xeno.getFeetSlotData = getFeetSlotData
xeno.getAmuletSlotData = getAmuletSlotData
xeno.getWeaponSlotData = getWeaponSlotData
xeno.getRingSlotData = getRingSlotData
xeno.getBackpackSlotData = getBackpackSlotData
xeno.getShieldSlotData = getShieldSlotData
xeno.getAmmoSlotData = getAmmoSlotData
xeno.getSelfCreatureKillCount = getSelfCreatureKillCount
xeno.resetSelfCreatureKillCount = resetSelfCreatureKillCount
xeno.doSelfSelectTrainingMode = doSelfSelectTrainingMode
xeno.getCreatureName = getCreatureName
xeno.getCreatureSkull = getCreatureSkull
xeno.getCreaturePartyStatus = getCreaturePartyStatus
xeno.getCreaturePvPIcon = getCreaturePvPIcon
xeno.getCreatureHealthPercent = getCreatureHealthPercent
xeno.getCreatureVisible = getCreatureVisible
xeno.getCreatureListIndex = getCreatureListIndex
xeno.getCreatureIDFromIndex = getCreatureIDFromIndex
xeno.getCreaturePosition = getCreaturePosition
xeno.isCreaturePlayer = isCreaturePlayer
xeno.isCreatureNpc = isCreatureNpc
xeno.isCreatureMonster = isCreatureMonster
xeno.isCreatureSummon = isCreatureSummon
xeno.isCreatureSelfSummon = isCreatureSelfSummon
xeno.isCreatureStrangeSummon = isCreatureStrangeSummon
xeno.isCreatureMother = isCreatureMother
xeno.attackCreature = attackCreature
xeno.followCreature = followCreature
xeno.screenshot = screenshot
xeno.getUserName = getUserName
xeno.getCreatureSpectators = getCreatureSpectators
xeno.enterCriticalMode = veryUnsafeFunctionEnterCriticalMode
xeno.exitCriticalMode = veryUnsafeFunctionExitCriticalMode
xeno.setDiagnosticsEnabled = setDiagnosticsEnabled
xeno.setTargetingIgnoreEnabled = setTargetingIgnoreEnabled
xeno.alert = alert
