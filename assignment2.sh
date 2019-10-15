#!/bin/bash


echo "a) Pattern"
echo "b) File operations"
echo "Please enter your choice"

read choice
case $choice in

a)  
    #!/bin/bash
n=6
a=$n/2
for((i=1; i<=$a;i++))
do
for((k=i; k<=$n;k++))
do
echo -ne " ";
done
for((j=1; j<=2*i-1;j++))
do
echo -ne "*";
done
echo;
done

for((i=$a-1;i>=0;i--))
do
for((k=i; k<=$n; k++))
do
echo -ne " ";
done
for((j=1;j<=2*i-1;j++))
do
echo -ne "*";
done
echo;
done
;;

b) echo "Please select file option from following:"
   echo "1.List files"
   echo "2.Create file"
   echo "3.Copy contents of one file to another"
   echo "4.move file"
   echo "5.compress files directory"
   echo "6.extract files"
   echo "7.exit"
   read ch
   case $ch in
   1) ls
   ;;

   2) echo "Plaese enter file name"
      read file_name 
      touch $file_name
      echo "File is created"
    ;;
   3) echo "Please enter source and dest files"
      read source
      read dest
      cp $source $dest
      echo "file contents are copied"
      ;; 
   4)  echo "Please enter the file to be moved and to which file"
       read file1
       read file2
       mv $file1 $file2
       echo "the file is moved"
       ;;
    5)  echo "Enter the directory to be compressed"
        read dir
        tar -cfz  zipdir.tar.gz  $dir
        ;;
     6) echo "Enter the dir to be extracted"
        read dir_name
        tar -xf   $dir_name  extracted_dir
        ;;
     7) exit
        ;;

      *) echo "wrong option"
        ;;

      esac
     esac
