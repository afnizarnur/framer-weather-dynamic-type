# Load API
Utils.domLoadJSON "https://api.apixu.com/v1/current.json?key=6f077b5ff00f409caaf92618172807&q=Jakarta", (err, resp) ->
	if !err
		derajat.template = Math.ceil(resp.current.temp_c)
		wind.template = Math.ceil(resp.current.wind_kph) 
		humidity.template = Math.ceil(resp.current.humidity)

		