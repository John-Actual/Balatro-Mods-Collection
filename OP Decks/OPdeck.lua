-- Atlas
SMODS.Atlas{
    key = "OPatlas",
    px = 71,
    py = 95,
    path = {
        ['default'] = 'Enhancers.png'
    }
}
-- Classic OP Deck
SMODS.Back{
    name = "OP Deck",
    key = "OPDeck",
    atlas = 'OPatlas',
    pos = {x = 0, y = 0},
    config = {polysteel = true},
    unlocked = true,
    loc_txt = {
        name = "Classic OP Deck",
        text = {
            "Every Card is",
            "{C:purple}Steel{}, {C:attention, T:e_polychrome}Polychrome{}, and",
            "has a {C:gold}gold{} sticker"
        }
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                for i = #G.playing_cards, 1, -1 do
                    G.playing_cards[i]:set_ability(G.P_CENTERS.m_steel)
                    G.playing_cards[i]:set_edition({
                        polychrome = true
                    }, true, true)
                    G.playing_cards[i]:set_seal("Gold",true, true)
                end
                return true
            end
        }))
    end
}

-- Lucky OP Deck
SMODS.Back{
    name = "Lucky Deck",
    key = "LuckyDeck",
    atlas = 'OPatlas',
    pos = {x = 0, y = 2},
    config = {lucky = true, joker = 'j_lucky_cat'},
    unlocked = true,
    loc_txt = {
        name = "Lucky OP Deck",
        text = {
            "Every Card is",
            "{C:attention}Lucky{} and",
            "start with a {C:attention}Negative Lucky Cat{}"
        }
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                for i = #G.playing_cards, 1, -1 do
                    G.playing_cards[i]:set_ability(G.P_CENTERS.m_lucky)
                end
                
                local card = Card(0,0,G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS.j_lucky_cat, nil)
                card:set_edition({negative = true})
                card:add_to_deck()
                G.jokers:emplace(card)
                return card
            end
        }))
    end
}

-- Money OP Deck
SMODS.Back{
    name = "Money OP Deck",
    key = "MoneyDeck",
    atlas = 'OPatlas',
    pos = {x = 1, y = 2},
    config = {dollars = 100000000000000000000000000000000000000000000000000000000000000000000000},
    unlocked = true,
    loc_txt = {
        name = "Money OP Deck",
        text = {
            "Start with a",
            "whole lotta {C:gold}money{}"
        }
    },
    loc_vars = function(self)
        return { vars = { self.config.dollars }}
    end
}

 -- I love you Perkeo
SMODS.Back{
    name = "Perkeo Deck",
    key = "PerkeoDeck",
    atlas = 'OPatlas',
    pos = {x = 2, y = 2},
    config = {joker = 'j_perkeo'},
    unlocked = true,
    loc_txt = {
        name = "Perkeo OP Deck",
        text = {
            "Start with {C:attention}Perkeo{}"
        }
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                
                local card = Card(0,0,G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS.j_perkeo, nil)
                card:add_to_deck()
                G.jokers:emplace(card)
                return card
            end
        }))
    end
}

SMODS.Back{
    name = "Perkeo Deck",
    key = "PerkeoDeck",
    atlas = 'OPatlas',
    pos = {x = 2, y = 2},
    config = {joker = 'j_perkeo'},
    unlocked = true,
    loc_txt = {
        name = "Perkeo OP Deck",
        text = {
            "Start with {C:attention}Perkeo{}"
        }
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                
                local card = Card(0,0,G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS.j_perkeo, nil)
                card:add_to_deck()
                G.jokers:emplace(card)
                return card
            end
        }))
    end
}