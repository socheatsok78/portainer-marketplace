it: README
	@jq -s '{ "version": "3", "templates": . }' templates/**/template.json > templates.json
	@echo "[make] templates.json file has been generated."

README:
	@./README.sh
