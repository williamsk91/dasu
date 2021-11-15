-- Remove invalid metadata
-- Assign sidebar position metadata
function Meta (m)
    return {
        sidebar_position = '3'
    }
end


-- Remove `style` from block elements
function Div (elem)
    if elem.attributes and elem.attributes.style then
        elem.attributes.style = nil
    end
    return elem
end