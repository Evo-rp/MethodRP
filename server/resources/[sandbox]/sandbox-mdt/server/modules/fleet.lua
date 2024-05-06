AddEventHandler("MDT:Server:RegisterCallbacks", function()
	Callbacks:RegisterServerCallback("MDT:ViewVehicleFleet", function(source, data, cb)
		local hasPerms, loggedInJob = CheckMDTPermissions(source, {
			'FLEET_MANAGEMENT',
		})

    if hasPerms and loggedInJob then
      Vehicles.Owned:GetAll(nil, 1, loggedInJob, function(vehicles)
        for k, v in ipairs(vehicles) do
          if v.Storage then
            if v.Storage.Type == 0 then
              v.Storage.Name = Vehicles.Garages:Impound().name
            elseif v.Storage.Type == 1 then
              v.Storage.Name = Vehicles.Garages:Get(v.Storage.Id).name
            elseif v.Storage.Type == 2 then
              local prop = Properties:Get(v.Storage.Id)
              v.Storage.Name = prop?.label
            end
          end
        end

        cb(vehicles)
      end)
    else
      cb(false)
    end
	end)

	Callbacks:RegisterServerCallback("MDT:SetAssignedDrivers", function(source, data, cb)
    local hasPerms, loggedInJob = CheckMDTPermissions(source, {
			'FLEET_MANAGEMENT',
		})

    if hasPerms and loggedInJob and data.vehicle and data.assigned then
      local ass = {}
      for k,v in ipairs(data.assigned) do
        table.insert(ass, {
          SID = v.SID,
          First = v.First,
          Last = v.Last,
          Callsign = v.Callsign
        })
      end

      Database.Game:updateOne({
        collection = "vehicles",
        query = {
          VIN = data.vehicle,
        },
        update = {
          ["$set"] = {
            GovAssigned = ass,
          },
        },
      }, function(success, result)
        cb(success)
      end)
    else
      cb(false)
    end
	end)

  Callbacks:RegisterServerCallback("MDT:TrackFleetVehicle", function(source, data, cb)
    local hasPerms, loggedInJob = CheckMDTPermissions(source, {
			'FLEET_MANAGEMENT',
		})

    if hasPerms and loggedInJob and data.vehicle then
      cb(Vehicles.Owned:Track(data.vehicle))
    else
      cb(false)
    end
	end)
end)