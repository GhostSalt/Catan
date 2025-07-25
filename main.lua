SMODS.Atlas {
  key = "modicon",
  path = "CatanIcon.png",
  px = 34,
  py = 34
}

G.C.CATAN = {
  Resource = HEX("AB8B59")
}

function find_consumable(key)
  local found = {}
  if G.consumeables then
    for _, card in pairs(G.consumeables.cards) do
      if card.config.center.key == key then
        found[#found + 1] = card
      end
    end
  end
  return found
end

function count_settlements()
  return #SMODS.find_card("c_phanta_settlement")
end

local allFolders = { "none", "items" }

local allFiles = { ["none"] = {}, ["items"] = { "Jokers", "Catan" } }

for i = 1, #allFolders do
  if allFolders[i] == "none" then
    for j = 1, #allFiles[allFolders[i]] do
      assert(SMODS.load_file(allFiles[allFolders[i]][j] .. ".lua"))()
    end
  else
    for j = 1, #allFiles[allFolders[i]] do
      assert(SMODS.load_file(allFolders[i] .. "/" .. allFiles[allFolders[i]][j] .. ".lua"))()
    end
  end
end

if next(SMODS.find_mod('Bakery')) then assert(SMODS.load_file("items/Charm.lua"))() end
if next(SMODS.find_mod('CardSleeves')) then assert(SMODS.load_file("items/Sleeves.lua"))() end




local cfbs = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
  if card.config.center.set == "phanta_CatanResource" then return true end
  return cfbs(card)
end

local update_ref = Game.update
function Game:update(dt)
  if not G.GAME.phanta_catanresource_rate_cache then G.GAME.phanta_catanresource_rate_cache = 0 end
  if not G.GAME.phanta_catandevelopmentcard_rate_cache then G.GAME.phanta_catandevelopmentcard_rate_cache = 0 end
  if not G.GAME.phanta_catanbuilding_rate_cache then G.GAME.phanta_catanbuilding_rate_cache = 0 end

  G.GAME.phanta_catanresource_rate = G.GAME.phanta_catanresource_rate_cache
  G.GAME.phanta_catandevelopmentcard_rate = G.GAME.phanta_catandevelopmentcard_rate_cache
  G.GAME.phanta_catanbuilding_rate = G.GAME.phanta_catanbuilding_rate_cache

  return update_ref(self, dt)
end