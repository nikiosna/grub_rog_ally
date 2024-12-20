rm -rf grub/
cp -r grub_clean_repo/ grub/ # how do i make "make clean bootstrap or so"
cd grub/

cp -r ../input_ally/ grub-core/
echo -e "module = {\n\n  name = input_ally;\n  common = input_ally/input_ally.c;\n};" >> grub-core/Makefile.core.def

./bootstrap
./configure --with-platform=efi
make -j8

mkdir -p ../build/
./grub-mkstandalone -O x86_64-efi -o ../build/allygrub.efi --directory=./grub-core/ --locale-directory=./gnulib/m4/
