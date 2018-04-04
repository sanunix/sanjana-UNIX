()
	{
		   cp $s1 $s2
	   }
	   remove_file()
	   {
		      rm $s1
	      }
	      compare_files()
	      {
		         cmp $s1 $s2
		 }
		 difference_files()
		 {
			    diff $s1 $s2
		    }
		    move_file()
		    {
			       mv $s2 $s1
		       }

		       echo "Enter two files"
		       read s1 s2
		       echo "1.copy 2.remove 3.compare 4.difference 5.move"
		       read choice
		       case $choice in
			               1) copy_files ;;
				               2) remove_file ;;
					               3) compare_files ;;
						               4) difference_files ;;
							               5) move_file ;;
							       esac
