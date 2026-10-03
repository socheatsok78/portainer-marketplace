it:
	@jq -s '{ "version": "3", "templates": . }' containers/**/template.json > templates.json
	@echo "[make] templates.json file has been generated."
