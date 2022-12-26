today = $(shell date "+%Y%m%d")
product_name = migrate-init-lua

.PHONY : patch
patch : clean diff-patch copy2win

.PHONY : format-patch
format-patch :
	git format-patch origin/master

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
patch-copy2win :
	cp *.patch $$WIN_HOME/Downloads/

.PHONY : compress
compress :
	zip -r $(product_name) ./* ./.gitignore

.PHONY : clean
clean : clean-patch
	rm -f *.zip

.PHONY : copy2win
copy2win : patch-copy2win
	cp *.zip $$WIN_HOME/Downloads/
