SMODS.current_mod.optional_features = { cardareas = { unscored = true } }

function is_boss_active()
  return G and G.GAME and G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss'))
end

SMODS.Atlas {
  key = "Catan",
  path = "Catan.png",
  px = 67,
  py = 95
}

SMODS.ConsumableType {
  key = "catan_Resource",
  primary_colour = HEX("AB8B59"),
  secondary_colour = HEX("AB8B59"),
  collection_rows = { 5 },
  shop_rate = 0,
  default = "c_catan_brick",
  can_stack = true,
  can_divide = true
}

SMODS.UndiscoveredSprite({
  key = "catan_Resource",
  atlas = "Catan",
  path = "Catan.png",
  pos = { x = 5, y = 0 },
  px = 67,
  py = 95,
}):register()

SMODS.Consumable {
  set = "catan_Resource",
  key = "brick",
  pos = { x = 0, y = 0 },
  cost = 2,
  atlas = "Catan"
}

SMODS.Consumable {
  set = "catan_Resource",
  key = "lumber",
  pos = { x = 1, y = 0 },
  cost = 2,
  atlas = "Catan"
}

SMODS.Consumable {
  set = "catan_Resource",
  key = "wool",
  pos = { x = 2, y = 0 },
  cost = 2,
  atlas = "Catan"
}

SMODS.Consumable {
  set = "catan_Resource",
  key = "grain",
  pos = { x = 3, y = 0 },
  cost = 2,
  atlas = "Catan"
}

SMODS.Consumable {
  set = "catan_Resource",
  key = "ore",
  pos = { x = 4, y = 0 },
  cost = 2,
  atlas = "Catan"
}

SMODS.ConsumableType {
  key = "catan_DevelopmentCard",
  primary_colour = HEX("DAAB64"),
  secondary_colour = HEX("DAAB64"),
  collection_rows = { 5, 5, 5 },
  shop_rate = 0,
  default = "c_catan_knight1",
  can_stack = true,
  can_divide = true
}

SMODS.UndiscoveredSprite({
  key = "catan_DevelopmentCard",
  atlas = "Catan",
  path = "Catan.png",
  pos = { x = 3, y = 3 },
  px = 67,
  py = 95,
}):register()

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight1",
  pos = { x = 3, y = 1 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight2",
  pos = { x = 4, y = 1 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight3",
  pos = { x = 5, y = 1 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight4",
  pos = { x = 0, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight5",
  pos = { x = 1, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight6",
  pos = { x = 2, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "knight7",
  pos = { x = 3, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { main_end = { { n = G.UIT.C, config = { align = "bm", minh = 0.4 }, nodes = { { n = G.UIT.C, config = { ref_table = self, align = "m", colour = is_boss_active() and G.C.GREEN or G.C.RED, r = 0.05, padding = 0.06 }, nodes = { { n = G.UIT.T, config = { text = ' ' .. localize(is_boss_active() and 'k_active' or 'ph_no_boss_active') .. ' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.32 * 0.9 } } } } } } } }
  end,
  can_use = function(self, card)
    return is_boss_active()
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if is_boss_active() then
          play_sound("timpani")
          card:juice_up()
          G.GAME.blind:disable()
        end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "library",
  pos = { x = 4, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_double } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_double'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "market",
  pos = { x = 5, y = 2 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_double } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_double'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "greathall",
  pos = { x = 0, y = 3 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_double } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_double'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "chapel",
  pos = { x = 1, y = 3 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_double } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_double'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "university",
  pos = { x = 2, y = 3 },
  cost = 6,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_double } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_double'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "monopoly",
  pos = { x = 0, y = 1 },
  cost = 6,
  config = { extra = { no_of_cards = 4 } },
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.no_of_cards } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        play_sound('timpani')
        local resource = pseudorandom_element(G.P_CENTER_POOLS.catan_Resource, pseudoseed('monopolychosenresource'))
            .key
        local creation_event = Event({
          delay = 0.3,
          blockable = false,
          func = function()
            local new_card = create_card("catan_Resource", G.consumables, nil, nil, nil, nil, resource, 'monopoly')
            new_card:add_to_deck()
            G.consumeables:emplace(new_card)
            return true
          end
        })
        for i = 1, card.ability.extra.no_of_cards, 1 do G.E_MANAGER:add_event(creation_event) end
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "yearofplenty",
  pos = { x = 1, y = 1 },
  cost = 6,
  config = { extra = { money = 30 } },
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.money } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        ease_dollars(card.ability.extra.money)
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_DevelopmentCard",
  key = "roadbuilding",
  pos = { x = 2, y = 1 },
  cost = 6,
  config = { extra = { no_of_cards = 2 } },
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.no_of_cards }, relevant = { SMODS.Centers["c_catan_road"] } }
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        local creation_event = Event({
          delay = 0.3,
          blockable = false,
          func = function()
            play_sound("timpani")
            local new_card = create_card("catan_Building", G.consumables, nil, nil, nil, nil, 'c_catan_road',
              'roadbuilding')
            new_card:add_to_deck()
            G.consumeables:emplace(new_card)
            new_card:juice_up(0.3, 0.5)
            return true
          end
        })
        for i = 1, card.ability.extra.no_of_cards do G.E_MANAGER:add_event(creation_event) end
        return true
      end
    }))
    delay(0.6)
  end
}



SMODS.ConsumableType {
  key = "catan_Building",
  primary_colour = HEX("884444"),
  secondary_colour = HEX("884444"),
  collection_rows = { 3 },
  shop_rate = 0,
  default = "c_catan_road",
  can_stack = true,
  can_divide = true
}

SMODS.UndiscoveredSprite({
  key = "catan_Building",
  atlas = "Catan",
  path = "Catan.png",
  pos = { x = 3, y = 4 },
  px = 67,
  py = 95,
}):register()

SMODS.Consumable {
  set = "catan_Building",
  key = "road",
  pos = { x = 0, y = 4 },
  cost = 4,
  config = { max_highlighted = 3 },
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.max_highlighted } }
  end,
  can_use = function(self, card)
    return #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        play_sound('tarot1')
        card:juice_up(0.3, 0.5)
        return true
      end
    }))
    for i = 1, #G.hand.highlighted do
      local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
          G.hand.highlighted[i]:flip()
          play_sound('card1', percent)
          G.hand.highlighted[i]:juice_up(0.3, 0.3)
          return true
        end
      }))
    end
    delay(0.2)
    for i = 1, #G.hand.highlighted do
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
          G.hand.highlighted[i]:set_ability(SMODS.poll_enhancement { guaranteed = true })
          return true
        end
      }))
    end
    for i = 1, #G.hand.highlighted do
      local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
          G.hand.highlighted[i]:flip()
          play_sound('tarot2', percent, 0.6)
          G.hand.highlighted[i]:juice_up(0.3, 0.3)
          return true
        end
      }))
    end
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.2,
      func = function()
        G.hand:unhighlight_all()
        return true
      end
    }))
    delay(0.5)
  end
}

SMODS.Consumable {
  set = "catan_Building",
  key = "settlement",
  pos = { x = 1, y = 4 },
  cost = 8,
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { relevant = { G.P_TAGS.tag_rare } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        add_tag(Tag('tag_rare'))
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}

SMODS.Consumable {
  set = "catan_Building",
  key = "city",
  pos = { x = 2, y = 4 },
  cost = 18,
  config = { extra = { no_of_tags = 2 } },
  atlas = "Catan",
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.no_of_tags }, relevant = { G.P_TAGS.tag_negative } }
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        for i = 1, card.ability.extra.no_of_tags do add_tag(Tag('tag_negative')) end
        play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
        play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
        card:juice_up()
        return true
      end
    }))
    delay(0.6)
  end
}









for k, v in pairs(SMODS.Centers) do
  if v.set == "catan_Resource" or v.set == "catan_DevelopmentCard" or v.set == "catan_Building" then
    if not v.config then v.config = {} end
    if not v.config.extra then v.config.extra = {} end
    v.config.extra.added_slots = 1

    if v.loc_vars then
      local vars = v:loc_vars({}, v:create_fake_card())
      v.loc_vars = function(self, info_queue, card)
        local new_vars = vars
        if not new_vars then new_vars = {} end
        if not new_vars.vars then new_vars.vars = {} end
        new_vars.vars[#new_vars.vars + 1] = card.ability.extra.added_slots
        local relevant = vars.relevant

        if relevant then
          for _, r in ipairs(relevant) do
            info_queue[#info_queue + 1] = r
          end
        end
        return new_vars
      end
    else
      v.loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.added_slots } }
      end
    end

    v.add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({
        func = function()
          G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.added_slots
          return true
        end
      }))
    end
    v.remove_from_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({
        func = function()
          G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.added_slots
          return true
        end
      }))
    end
  end
end

function catan_add_building_button(scale)
  return {
    n = G.UIT.R,
    config = { id = 'catan_building', align = "cm", minh = 1.2, minw = 1.5, padding = 0.05, r = 0.1, hover = true, colour = G.C.CATAN.Resource, button = "run_catan_menu", shadow = true },
    nodes = {
      {
        n = G.UIT.R,
        config = { align = "cm", padding = 0, maxw = 1.4 },
        nodes = {
          { n = G.UIT.T, config = { text = localize('b_catan_building'), scale = scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } }
        }
      }
    }
  }
end

G.FUNCS.run_catan_menu = function(e)
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

function create_catan_menu()
  local road = UIBox_button({ button = 'catan_craft_road', func = 'catan_can_craft_road', label = { localize('b_catan_road') }, minw = 5, focus_args = { snap_to = true } })
  local settlement = UIBox_button({ button = 'catan_craft_settlement', func = 'catan_can_craft_settlement', label = { localize('b_catan_settlement') }, minw = 5, focus_args = { snap_to = true } })
  local city = UIBox_button({ button = 'catan_craft_city', func = 'catan_can_craft_city', label = { localize('b_catan_city') }, minw = 5, focus_args = { snap_to = true } })
  local developmentcard = UIBox_button({
    button = 'catan_craft_development_card',
    func =
    'catan_can_craft_development_card',
    label = { localize('b_catan_development_card') },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local four_to_one_trade = UIBox_button({
    button = 'catan_four_to_one_first',
    func = 'catan_can_four_to_one',
    label = { localize('b_catan_four_to_one') },
    minw = 5,
    focus_args = { snap_to = true }
  })

  local t = create_UIBox_generic_options({
    infotip = localize("catan_menu_infotip"),
    contents = {
      road,
      settlement,
      city,
      developmentcard,
      four_to_one_trade
    }
  })
  return t
end

local four_trade = nil
local one_trade = nil

function create_catan_four_to_one_first()
  local brick = UIBox_button({
    button = 'catan_assign_four_brick',
    func = 'catan_can_trade_brick',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_brick' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local lumber = UIBox_button({
    button = 'catan_assign_four_lumber',
    func = 'catan_can_trade_lumber',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_lumber' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local wool = UIBox_button({
    button = 'catan_assign_four_wool',
    func = 'catan_can_trade_wool',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_wool' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local grain = UIBox_button({
    button = 'catan_assign_four_grain',
    func = 'catan_can_trade_grain',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_grain' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local ore = UIBox_button({
    button = 'catan_assign_four_ore',
    func = 'catan_can_trade_ore',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_ore' } },
    minw = 5,
    focus_args = { snap_to = true }
  })

  local t = create_UIBox_generic_options({
    infotip = localize("catan_menu_four_info"),
    contents = {
      brick,
      lumber,
      wool,
      grain,
      ore
    },
    back_func = "catan_return_to_building"
  })
  return t
end

function create_catan_four_to_one_second()
  local brick = UIBox_button({
    button = 'catan_trade_for_brick',
    func = 'catan_can_trade_for_brick',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_brick' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local lumber = UIBox_button({
    button = 'catan_trade_for_lumber',
    func = 'catan_can_trade_for_lumber',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_lumber' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local wool = UIBox_button({
    button = 'catan_trade_for_wool',
    func = 'catan_can_trade_for_wool',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_wool' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local grain = UIBox_button({
    button = 'catan_trade_for_grain',
    func = 'catan_can_trade_for_grain',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_grain' } },
    minw = 5,
    focus_args = { snap_to = true }
  })
  local ore = UIBox_button({
    button = 'catan_trade_for_ore',
    func = 'catan_can_trade_for_ore',
    label = { localize { type = 'name_text', set = 'catan_Resource', key = 'c_catan_ore' } },
    minw = 5,
    focus_args = { snap_to = true }
  })

  local t = create_UIBox_generic_options({
    infotip = localize("catan_menu_one_info"),
    contents = {
      brick,
      lumber,
      wool,
      grain,
      ore
    },
    back_func = "catan_return_to_four"
  })
  return t
end

G.FUNCS.catan_return_to_building = function(e)
  four_trade = nil
  one_trade = nil
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_return_to_four = function(e)
  one_trade = nil
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_first()
  }
end

G.FUNCS.catan_can_four_to_one = function(e)
  return false
end

G.FUNCS.catan_four_to_one_first = function(e)
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_first()
  }
end

G.FUNCS.catan_can_trade_brick = function(e)
  if #find_consumable("c_catan_brick") < 4 then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_lumber = function(e)
  if #find_consumable("c_catan_lumber") < 4 then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_wool = function(e)
  if #find_consumable("c_catan_wool") < 4 then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_grain = function(e)
  if #find_consumable("c_catan_grain") < 4 then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_ore = function(e)
  if #find_consumable("c_catan_ore") < 4 then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_assign_four_brick = function(e)
  four_trade = "c_catan_brick"
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_second()
  }
end

G.FUNCS.catan_assign_four_lumber = function(e)
  four_trade = "c_catan_lumber"
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_second()
  }
end

G.FUNCS.catan_assign_four_wool = function(e)
  four_trade = "c_catan_wool"
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_second()
  }
end

G.FUNCS.catan_assign_four_grain = function(e)
  four_trade = "c_catan_grain"
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_second()
  }
end

G.FUNCS.catan_assign_four_ore = function(e)
  four_trade = "c_catan_ore"
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_four_to_one_second()
  }
end






G.FUNCS.catan_can_trade_for_brick = function(e)
  if four_trade == "c_catan_brick" then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_for_lumber = function(e)
  if four_trade == "c_catan_lumber" then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_for_wool = function(e)
  if four_trade == "c_catan_wool" then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_for_grain = function(e)
  if four_trade == "c_catan_grain" then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_trade_for_ore = function(e)
  if four_trade == "c_catan_ore" then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_trade_for_brick = function(e)
  one_trade = "c_catan_brick"
  catan_perform_trade(e)
end

G.FUNCS.catan_trade_for_lumber = function(e)
  one_trade = "c_catan_lumber"
  catan_perform_trade(e)
end

G.FUNCS.catan_trade_for_wool = function(e)
  one_trade = "c_catan_wool"
  catan_perform_trade(e)
end

G.FUNCS.catan_trade_for_grain = function(e)
  one_trade = "c_catan_grain"
  catan_perform_trade(e)
end

G.FUNCS.catan_trade_for_ore = function(e)
  one_trade = "c_catan_ore"
  catan_perform_trade(e)
end

function catan_perform_trade(e)
  local resources = { find_consumable(four_trade)[1], find_consumable(four_trade)[2], find_consumable(four_trade)[3],
    find_consumable(four_trade)[4] }
  for i = 1, #resources do
    resources[i].getting_sliced = true
  end
  G.E_MANAGER:add_event(Event({
    delay = 0.3,
    blockable = false,
    func = function()
      for i = 1, #resources do
        resources[i]:start_dissolve({ G.C.RED }, nil, 1.6)
      end
      local new_card = create_card("catan_Building", G.consumables, nil, nil, nil, nil, one_trade,
        'catan_perform_trade')
      new_card:add_to_deck()
      G.consumeables:emplace(new_card)
      return true
    end
  }))
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_craft_road = function(e)
  local resources = { find_consumable("c_catan_brick")[1], find_consumable("c_catan_lumber")[1] }
  for i = 1, #resources do
    resources[i].getting_sliced = true
  end
  G.E_MANAGER:add_event(Event({
    delay = 0.3,
    blockable = false,
    func = function()
      for i = 1, #resources do
        resources[i]:start_dissolve({ G.C.RED }, nil, 1.6)
      end
      local new_card = create_card("catan_Building", G.consumables, nil, nil, nil, nil, 'c_catan_road',
        'craft_road')
      new_card:add_to_deck()
      G.consumeables:emplace(new_card)
      return true
    end
  }))
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_craft_settlement = function(e)
  local resources = { find_consumable("c_catan_brick")[1], find_consumable("c_catan_lumber")[1], find_consumable(
    "c_catan_grain")[1], find_consumable("c_catan_wool")[1] }
  for i = 1, #resources do
    resources[i].getting_sliced = true
  end
  G.E_MANAGER:add_event(Event({
    delay = 0.3,
    blockable = false,
    func = function()
      for i = 1, #resources do
        resources[i]:start_dissolve({ G.C.RED }, nil, 1.6)
      end
      local new_card = create_card("catan_Building", G.consumables, nil, nil, nil, nil, 'c_catan_settlement',
        'craft_settlement')
      new_card:add_to_deck()
      G.consumeables:emplace(new_card)
      return true
    end
  }))
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_craft_city = function(e)
  local resources = { find_consumable("c_catan_settlement")[1], find_consumable("c_catan_grain")[1], find_consumable(
    "c_catan_grain")[2], find_consumable("c_catan_ore")[1], find_consumable("c_catan_ore")[2], find_consumable(
    "c_catan_ore")[3] }
  for i = 1, #resources do
    resources[i].getting_sliced = true
  end
  G.E_MANAGER:add_event(Event({
    delay = 0.3,
    blockable = false,
    func = function()
      for i = 1, #resources do
        resources[i]:start_dissolve({ G.C.RED }, nil, 1.6)
      end
      local new_card = create_card("catan_Building", G.consumables, nil, nil, nil, nil, 'c_catan_city',
        'craft_city')
      new_card:add_to_deck()
      G.consumeables:emplace(new_card)
      return true
    end
  }))
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_craft_development_card = function(e)
  local resources = { find_consumable("c_catan_grain")[1], find_consumable("c_catan_wool")[1], find_consumable(
    "c_catan_ore")[1] }
  for i = 1, #resources do
    resources[i].getting_sliced = true
  end
  G.E_MANAGER:add_event(Event({
    delay = 0.3,
    blockable = false,
    func = function()
      for i = 1, #resources do
        resources[i]:start_dissolve({ G.C.RED }, nil, 1.6)
      end
      local new_card = create_card("catan_DevelopmentCard", G.consumables, nil, nil, nil, nil, nil,
        'craft_development_card')
      new_card:add_to_deck()
      G.consumeables:emplace(new_card)
      G.SETTINGS.paused = true
      G.FUNCS.overlay_menu {
        definition = create_catan_menu()
      }
      return true
    end
  }))
  if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
  G.SETTINGS.paused = true
  G.FUNCS.overlay_menu {
    definition = create_catan_menu()
  }
end

G.FUNCS.catan_can_craft_road = function(e)
  if not (#find_consumable("c_catan_brick") > 0 and #find_consumable("c_catan_lumber") > 0) then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_craft_settlement = function(e)
  if not (#find_consumable("c_catan_brick") > 0 and #find_consumable("c_catan_lumber") > 0 and #find_consumable("c_catan_grain") > 0 and #find_consumable("c_catan_wool") > 0) then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_craft_city = function(e)
  if not (#find_consumable("c_catan_settlement") > 0 and #find_consumable("c_catan_grain") > 1 and #find_consumable("c_catan_ore") > 2) then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end

G.FUNCS.catan_can_craft_development_card = function(e)
  if not (#find_consumable("c_catan_wool") > 0 and #find_consumable("c_catan_grain") > 0 and #find_consumable("c_catan_ore") > 0) then
    e.config.colour = G.C.UI.BACKGROUND_INACTIVE
    e.config.button = nil
  end
end





local context_ref = SMODS.calculate_context

function SMODS.calculate_context(context, return_table)
  if context and context.starting_shop then
    for i = 1, (G.GAME.Catan and G.GAME.Catan.no_of_resources_in_shop or 0) + 1 do
      local key = pseudorandom_element(G.P_CENTER_POOLS.catan_Resource, pseudoseed('shopchosenresource')).key
      local card = SMODS.create_card { key = key, area = G.shop_booster, bypass_discovery_center = true, bypass_discovery_ui = true }
      card["shop_booster"] = true
      G.shop_booster:emplace(card)
      create_shop_card_ui(card)
    end
  end
  return context_ref(context, return_table)
end

SMODS.Atlas {
  key = "CatanVouchers",
  path = "CatanVouchers.png",
  px = 71,
  py = 95
}

SMODS.Voucher {
  key = "resourcetycoon",
  pos = { x = 0, y = 0 },
  cost = 10,
  atlas = "CatanVouchers",
  redeem = function(self, card)
    G.E_MANAGER:add_event(Event({
      func = function()
        if not G.GAME.Catan then G.GAME.Catan = {} end
        if not G.GAME.Catan.no_of_resources_in_shop then G.GAME.Catan.no_of_resources_in_shop = 0 end
        G.GAME.Catan.no_of_resources_in_shop = G.GAME.Catan.no_of_resources_in_shop + 1
        if G.shop_booster then
          local key = pseudorandom_element(G.P_CENTER_POOLS.catan_Resource, pseudoseed('resourcetycoon')).key
          local card = SMODS.add_card { key = key, area = G.shop_booster }
          create_shop_card_ui(card)
        end
        return true
      end
    }))
  end
}

SMODS.Voucher {
  key = "robber",
  pos = { x = 1, y = 0 },
  cost = 10,
  atlas = "CatanVouchers",
  requires = { 'v_catan_resourcetycoon' },
  redeem = function(self, card)
    G.E_MANAGER:add_event(Event({
      func = function()
        if not G.GAME.Catan then G.GAME.Catan = {} end
        G.GAME.Catan.free_resources = true
        for i = 1, #G.shop_booster.cards do
          if G.shop_booster.cards[i].ability and G.shop_booster.cards[i].ability.set == "catan_Resource" then
            G.shop_booster.cards[i].extra_cost = 0
            G.shop_booster.cards[i].cost = 0
          end
        end
        return true
      end
    }))
  end
}

local set_cost_ref = Card.set_cost

function Card:set_cost()
  if not self.ability or self.ability.set ~= "catan_Resource" or not G.GAME or not G.GAME.Catan or not G.GAME.Catan.free_resources then
    return set_cost_ref(self)
  end

  self.extra_cost = 0
  self.cost = 0
end
