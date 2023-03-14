today = $(shell date "+%Y%m%d")
product_name = migrate-init-lua

# patch
.PHONY : patch
patch : clean-patch diff-patch patch-copy2win

.PHONY : diff-patch
diff-patch :
	git diff origin/master > $(product_name).$(today).patch

.PHONY : patch-branch
patch-branch :
	git switch -c patch-$(today)

.PHONY : clean-patch
clean-patch :
	rm -f *.patch

.PHONY : patch-copy2win
patch-copy2win : $(product_name).$(today).patch
	cp *.patch $$WIN_HOME/Downloads/

# development
.PHONY : copy-from-config
copy-from-config :
	cp $$HOME/.config/nvim/init.lua* .
