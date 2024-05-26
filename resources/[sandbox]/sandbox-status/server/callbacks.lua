function RegisterCallbacks()
    Callbacks:RegisterServerCallback('Status:Get', function(source, data, cb)
        local char = Fetch:CharacterSource(source)
        if char ~= nil then
            local status = char:GetData('Status')
            if status == nil then
                status = {}
            end

            local results = {}
            for k, v in ipairs(data) do
                if status[v.name] ~= nil then
                    results[v.name] = status[v.name]
                else
                    status[v.name] = v.max
                    char:SetData('Status', status)
                    results[v.name] = v.max
                end
            end

            cb(results)
        else
            cb({})
        end
    end)
end