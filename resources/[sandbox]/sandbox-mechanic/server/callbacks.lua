function RegisterCallbacks()
  Callbacks:RegisterServerCallback("Mechanic:InstallMultipleRepairParts", function(source, data, cb)
    local char = Fetch:CharacterSource(source)
    if char and data?.part and data?.quantity and _mechanicItemsToParts[data.part] then
      if Inventory.Items:Has(char:GetData("SID"), 1, data.part, data.quantity) then
        Callbacks:ClientCallback(source, "Mechanic:StartInstall", data, function(success)
          if success then
            Inventory.Items:Remove(char:GetData("SID"), 1, data.part, data.quantity)
          end
        end)

        cb(true)
        return
      end
    end

    cb(false)
  end)
end
