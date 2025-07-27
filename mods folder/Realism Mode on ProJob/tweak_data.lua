local is_pro_job = Eclipse.utils.is_pro_job()

if is_pro_job and not _G.BigLobbyGlobals then
	local no_outlines = Vector3(0, 0, 0)
	tweak_data.peer_vector_colors = {
		no_outlines,
		no_outlines,
		no_outlines,
		no_outlines,
		no_outlines
	}
else
	return
end