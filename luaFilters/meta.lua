-- Remove invalid metadata
-- Assign sidebar position metadata
function Meta (m)
    return {
        title = "book",
        toc_min_heading_level = "3",
        toc_max_heading_level = "3"
    }
end


-- Remove `style` from block elements
function Div (elem)
    if elem.attributes then
        -- remove inline style
        if elem.attributes.style then
            elem.attributes.style = nil
        end

        -- class -> className
        if elem.classes then
            -- elem.attributes.className = elem.classes
            elem.classes = {}
        end
    end
    return elem
end