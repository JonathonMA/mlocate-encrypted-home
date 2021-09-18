UNIT_SERVICE=locate-home.service
UNIT_TIMER=locate-home.timer

.PHONY: install
install:
	install -D -m 0644 -t ~/.config/systemd/user/ $(UNIT_SERVICE) $(UNIT_TIMER)
	systemctl --user enable $(UNIT_SERVICE) $(UNIT_TIMER)
	systemctl --user start $(UNIT_TIMER)
	@echo "Ensure locate-home.sh is added to your shell (.bashrc or otherwise)"
