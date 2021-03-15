Variable = {}
Variable["LoginURL"]= "https://enjoyers.xyz/Pubgm/L73y3hdhjeukhus.php"
Prompt = gg.prompt({"Username","Password","exit"},nil,{"text","text","checkbox"})
	if not Prompt then
	return
	end
	if Prompt[3] then
	return
	end

Variable["TempLogin"]  = '{"Username":"'..Prompt[1]..'","Password":"'..Prompt[2]..'"}'

ResponseContent = gg.makeRequest(Variable["LoginURL"],nil,Variable["TempLogin"]).content
pcall(load(ResponseContent))
