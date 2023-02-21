today = $(shell date "+%Y%m%d")
product_name = migrate-init-lua

.PHONY : patch
patch : clean-patch diff-patch patch-copy2win

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
patch-copy2win : $(product_name).$(today).patch
	cp *.patch $$WIN_HOME/Downloads/

.PHONY : zip
zip :
	zip -r $(product_name).zip ./* ./.gitignore

.PHONY : clean-zip
clean-zip :
	rm -f *.zip

.PHONY : zip-copy2win
zip-copy2win : $(product_name).zip
	cp *.zip $$WIN_HOME/Downloads/

.PHONY : clean
clean : clean-patch clean-zip

.PHONY : copy2win
copy2win : zip-copy2win patch-copy2win
