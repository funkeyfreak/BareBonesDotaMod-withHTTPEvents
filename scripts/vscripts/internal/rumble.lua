-- This loads all the functions, globals, and other materials needed for Rumble
-- It can be used to pre-initialize any values/tables that will be needed later
function Rumble:_InitRumble()
  if GameMode._reentrantCheck then
    return
  end

  --initialize listeners
  ListenToGameEvent("game_start", Dynamic_Wrap(Rumble, 'OnGameStart'), self)

  DebugPrint('[BAREBONES] Done loading Barebones gamemode!\n\n')
  GameMode._reentrantCheck = true
  GameMode:InitGameMode()
  GameMode._reentrantCheck = false
  Convars:RegisterConvar('rumble_spew', tostring(spew), 'Set to 1 to start spewing barebones debug info.  Set to 0 to disable.', 0)
end
