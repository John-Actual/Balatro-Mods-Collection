--ATLAS
SMODS.Atlas{
    key = "chalAtlas",
    px = 71,
    py = 95,
    path = {
        ['default'] = 'Enhancers.png'
    }
}

-- Stone Deck
SMODS.Back{
    name = 'Stone Deck',
    key = 'stoneDeck',
    atlas = 'chalAtlas',
    pos = {x = 0, y = 0},
    config = {stone=true},
    unlocked = true,
    loc_txt = {
        name = "Stone Deck",
        text = {
            "Every Card is {C:attention}Stone{}",
            "All other cards are debuffed"
        }
    },
    apply = function()
        G.E_MANAGER:add_event(Event({
            func = function()
                for i = #G.playing_cards, 1, -1 do
                    G.playing_cards[i]:set_ability(G.P_CENTERS.m_stone)
                end
                return true
            end
        }))
    end,
    calculate = function (self, card, context)
        if context.before then
            for k, v in ipairs(G.play.cards) do
                if v.ability.name ~= "Stone Card" then
                    v:set_debuff(true)
                end
            end
        end
    end
}