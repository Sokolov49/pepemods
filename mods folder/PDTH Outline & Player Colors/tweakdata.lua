if not tweak_data then return end
    -- outline/contour colors for human players and TeamAI.
    local orange = Vector3( 0.2, 0.9, 0.5 )
    local green = Vector3( 0.2, 0.9, 0.5 )
    local brown = Vector3( 0.2, 0.9, 0.5 )
    local blue = Vector3( 0.2, 0.9, 0.5 )
    local team_ai = Vector3( 0.2, 0.9, 0.5 )
    tweak_data.peer_vector_colors = { blue, orange, green, brown, team_ai }
    tweak_data.peer_colors = { "mrblue", "mrorange", "mrgreen", "mrbrown", "mrai" }    

	-- these are used for name labels and the dot beside the player's name on the teammate panel in the vanilla HUD.
    tweak_data.chat_colors = {     
    Color(0.6, 0.6, 1), -- Blue/Purple/Peer1/Host.
    Color(1, 0.6, 0.6), -- Orange/Red/Peer2.
    Color(0.6, 1, 0.6), -- Green/Peer3.
    Color(1, 1, 0.6), -- Brown/Peer4.
    Color(0.2, 0.8, 1) -- Team AI.
    }
    -- preplanning colors.
    tweak_data.preplanning_peer_colors = {
        Color("ff6885A1"),
        Color("ffE06D51"),
        Color("ff66CC36"),
        Color("ff62462B")
    }