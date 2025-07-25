SMODS.Atlas {
  key = "CatanJokers",
  path = "CatanJokers.png",
  px = 71,
  py = 95
}

SMODS.Joker {
  key = 'hill',
  rarity = 1,
  atlas = 'CatanJokers',
  pos = { x = 0, y = 0 },
  cost = 5,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_brick
    return {}
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, "c_catan_brick",
                'hill')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
              G.GAME.consumeable_buffer = 0
              new_card:juice_up(0.3, 0.5)
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
            { message = "+1 Brick", colour = G.C.CATAN.Resource })
          return true
        end
      }))
    end
  end
}

SMODS.Joker {
  key = 'forest',
  rarity = 1,
  atlas = 'CatanJokers',
  pos = { x = 1, y = 0 },
  cost = 5,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_lumber
    return {}
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, "c_catan_lumber",
                'forest')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
              G.GAME.consumeable_buffer = 0
              new_card:juice_up(0.3, 0.5)
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
            { message = "+1 Lumber", colour = G.C.CATAN.Resource })
          return true
        end
      }))
    end
  end
}

SMODS.Joker {
  key = 'pasture',
  rarity = 1,
  atlas = 'CatanJokers',
  pos = { x = 2, y = 0 },
  cost = 5,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_wool
    return {}
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, "c_catan_wool",
                'pasture')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
              G.GAME.consumeable_buffer = 0
              new_card:juice_up(0.3, 0.5)
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
            { message = "+1 Wool", colour = G.C.CATAN.Resource })
          return true
        end
      }))
    end
  end
}

SMODS.Joker {
  key = 'field',
  rarity = 1,
  atlas = 'CatanJokers',
  pos = { x = 3, y = 0 },
  cost = 5,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_grain
    return {}
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, "c_catan_grain",
                'field')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
              G.GAME.consumeable_buffer = 0
              new_card:juice_up(0.3, 0.5)
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
            { message = "+1 Grain", colour = G.C.CATAN.Resource })
          return true
        end
      }))
    end
  end
}

SMODS.Joker {
  key = 'mountain',
  rarity = 1,
  atlas = 'CatanJokers',
  pos = { x = 4, y = 0 },
  cost = 5,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_ore
    return {}
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not (context.blueprint_card or card).getting_sliced then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, "c_catan_ore",
                'mountain')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
              G.GAME.consumeable_buffer = 0
              new_card:juice_up(0.3, 0.5)
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
            { message = "+1 Ore", colour = G.C.CATAN.Resource })
          return true
        end
      }))
    end
  end
}

SMODS.Joker {
  key = 'agentboard',
  config = { extra = { money = 4 } },
  rarity = 2,
  atlas = 'CatanJokers',
  pos = { x = 5, y = 0 },
  cost = 5,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS.c_catan_settlement
    return { vars = { card.ability.extra.money, card.ability.extra.money * count_settlements() } }
  end,
  calc_dollar_bonus = function(self, card)
    if count_settlements() > 0 then return card.ability.extra.money * count_settlements() end
  end
}