COMPONENTS.Fetch = {
	_required = { "Source", "PlayerData", "All" },
	_name = "base",
	Source = function(self, source)
		return COMPONENTS.Players[source]
	end,
	PlayerData = function(self, key, value)
		for k, v in pairs(COMPONENTS.Players) do
			if v:GetData(key) == value then
				return v
			end
		end

		return nil
	end,
	Website = function(self, type, id)
		if type == "account" then
			local data = COMPONENTS.WebAPI.GetMember:AccountID(id)
			if data ~= nil then
				return COMPONENTS.DataStore:CreateStore('Fetch', data.id, {
					ID = data.id,
					AccountID = data.id,
					Identifier = data.identifier,
					Name = data.name,
					Roles = data.roles,
				})
			end
		elseif type == "identifier" then
			local data = COMPONENTS.WebAPI.GetMember:Identifier(id)
			if data ~= nil then
				return COMPONENTS.DataStore:CreateStore('Fetch', data.id, {
					ID = data.id,
					AccountID = data.id,
					Identifier = data.identifier,
					Name = data.name,
					Roles = data.roles,
				})
			end
		end
		return nil
	end,
    Offline = function(self, t, id)
        local query = nil
        if t == "account" then
            query = {
                account = id
            }
		elseif t == "identifier" then
            query = {
                identifier = id
            }
		end

        if query then
            local p = promise.new()

            COMPONENTS.Database.Auth:findOne({
                collection = 'users',
                query = query,
            }, function(success, results)
                if success and #results > 0 and results[1]?.account then
                    p:resolve(results[1])
                else
                    p:resolve(nil)
                end
            end)

            local data = Citizen.Await(p)
            if data then
                return COMPONENTS.DataStore:CreateStore('Fetch', data.account, {
                    ID = data._id,
                    AccountID = data.account,
                    Identifier = data.identifier,
                    Name = data.name,
                    Groups = data.groups,
                    Tokens = data.tokens,
                })
            end
        end

		return nil
    end,
	All = function(self)
		return COMPONENTS.Players
	end,
	Count = function(self)
		local c = 0
		for k, v in pairs(COMPONENTS.Players) do
			if v ~= nil then
				c = c + 1
			end
		end
		return c
	end,
}
