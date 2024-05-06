local _tweets = {}

PHONE.Twitter = {
	Get = function(self)
		return _tweets
	end,
	Post = function(self, source, SID, author, content, image, isRetweet, verified)
		local data = {
			_id = #_tweets + 1,
			time = os.time() * 1000,
			source = source,
			SID = SID,
			author = author,
			content = content,
			image = image,
			likes = {},
			retweet = isRetweet,
			verified = verified,
		}

		table.insert(_tweets, data)
		TriggerClientEvent("Phone:Client:Twitter:Notify", -1, data)
		return true
	end
}

AddEventHandler("Phone:Server:AliasUpdated", function(src)
	local char = Fetch:Source(src):GetData("Character")
	local sid = char:GetData("SID")
	for k, v in ipairs(_tweets) do
		if v.SID == sid then
			v.author = char:GetData("Alias").twitter
		end
	end

	TriggerClientEvent("Phone:Client:SetData", -1, "tweets", _tweets)
end)

function ClearAllTweets(account)
	if account then
		local newTweets = {}

		for k, v in ipairs(_tweets) do
			if v.SID ~= tonumber(account) and v.author.name ~= account then
				table.insert(newTweets, v)
			end
		end

		_tweets = newTweets
		TriggerClientEvent("Phone:Client:SetData", -1, "tweets", _tweets)
	else
		_tweets = {}
		TriggerClientEvent("Phone:Client:SetData", -1, "tweets", _tweets)
	end
end

AddEventHandler("Phone:Server:RegisterMiddleware", function()
	Middleware:Add("Characters:Spawning", function(source)
		TriggerClientEvent("Phone:Client:SetData", source, "tweets", _tweets)
	end, 2)
	Middleware:Add("Phone:UIReset", function(source)
		TriggerClientEvent("Phone:Client:SetData", source, "tweets", _tweets)
	end, 2)
	Middleware:Add("Phone:CharacterCreated", function(source, cData)
		return {{
			app = "twitter",
			alias = {
				avatar = nil,
				name = string.format("%s%s%s", cData.First, cData.Last, cData.SID),
			},
		}}
	end)
end)

AddEventHandler("Phone:Server:RegisterCallbacks", function()
	Callbacks:RegisterServerCallback("Phone:Twitter:CreateTweet", function(source, data, cb)
		local src = source
		local char = Fetch:Source(src):GetData("Character")

		cb(Phone.Twitter:Post(src, char:GetData("SID"), char:GetData("Alias").twitter, data.content, data.image, data.retweet, false))
	end, 1)

	Callbacks:RegisterServerCallback("Phone:Twitter:Favorite", function(source, data, cb)
		local src = source
		local char = Fetch:Source(src):GetData("Character")
		local _id = char:GetData("ID")
		if not data.state then
			table.insert(_tweets[data.id].likes, _id)
		else
			local t = {}
			for k, v in ipairs(_tweets[data.id].likes) do
				if v ~= _id then
					table.insert(t, v)
				end
			end
			_tweets[data.id].likes = t
		end
		TriggerClientEvent("Phone:Client:Twitter:UpdateLikes", -1, _tweets[data.id])
		cb(true)
	end)
end)
